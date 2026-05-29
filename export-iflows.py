import requests
import os

# Get environment variables
user = os.environ['CPI_USER']
password = os.environ['CPI_PASSWORD']
host = os.environ['CPI_HOST']
package_id = os.environ['PACKAGE_ID']

auth = (user, password)
base_url = f'https://{host}/api/v1'

# Get CSRF token
print("Fetching CSRF token...")
csr_resp = requests.get(f'{base_url}/IntegrationPackages', auth=auth, headers={'x-csrf-token': 'fetch'})
csrf_token = csr_resp.headers.get('x-csrf-token')
headers = {'x-csrf-token': csrf_token, 'Content-Type': 'application/json'}

# Get all artifacts in the package
print(f"Getting artifacts from package: {package_id}")
url = f"{base_url}/IntegrationPackages(Id='{package_id}',Version='000')/IntegrationDesigntimeArtifacts"
resp = requests.get(url, auth=auth, headers=headers)

if resp.status_code != 200:
    print(f"Error getting package: {resp.status_code} - {resp.text}")
    exit(1)

artifacts = resp.json()['d']['results']
print(f"Found {len(artifacts)} artifacts")

# Create directory for this package
package_dir = f'packages/{package_id}'
os.makedirs(package_dir, exist_ok=True)

# Download each iFlow
for art in artifacts:
    name = art['Name']
    version = art['Version']
    print(f"Downloading: {name} (v{version})")
    
    art_url = f"{base_url}/IntegrationDesigntimeArtifacts(Id='{name}',Version='{version}')/$value"
    art_resp = requests.get(art_url, auth=auth, headers=headers)
    
    if art_resp.status_code == 200:
        with open(f'{package_dir}/{name}.zip', 'wb') as f:
            f.write(art_resp.content)
        print(f"  ✓ Saved: {package_dir}/{name}.zip")
    else:
        print(f"  ✗ Error: {art_resp.status_code}")

print(f"\n✅ Export complete! {len(artifacts)} iFlows saved to {package_dir}/")
