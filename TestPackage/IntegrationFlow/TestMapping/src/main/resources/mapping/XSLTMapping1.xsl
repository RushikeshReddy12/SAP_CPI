<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
 <!--   <xsl:param name="oneYearBefore"/>-->
 <!--   <xsl:param name="oneYearAfter"/>-->
    <!--<xsl:param name="CTLastDayWorked"/>-->
 <!--   <xsl:variable name="beforeYear"-->
	<!--	                        select="$oneYearBefore"/>-->
	<!--<xsl:variable name="afterYear"-->
	<!--	                        select="$oneYearAfter"/>-->
		          
		          
		                             
	<xsl:template match="/">
		<Employees>
		    <xsl:for-each select="Employees/Employee">
		        <Employee>
		            <DivisionID><xsl:value-of select="DivisionID"/></DivisionID>
		            
		            <xsl:if test="matches(FirstName, '^[a-zA-Z0-9-]*$')">
                        <FirstName><xsl:value-of select="FirstName"/></FirstName>
                    </xsl:if>
                    <xsl:if test="matches(LastName, '^[a-zA-Z0-9-]*$')">
		                <LastName><xsl:value-of select="LastName"/></LastName>
		            </xsl:if>
		            <Email><xsl:value-of select="Email"/></Email>
		            
		            <LocationCode><xsl:value-of select="LocationCode"/></LocationCode>
		            <PositionCode><xsl:value-of select="PositionCode"/></PositionCode>
		            <WorkState><xsl:value-of select="WorkState"/></WorkState>
		            <LoginID><xsl:value-of select="LoginID"/></LoginID>
		            <Password><xsl:value-of select="Password"/></Password>
		            <Activate><xsl:value-of select="Activate"/></Activate>
		            <TemplateCode><xsl:value-of select="TemplateCode"/></TemplateCode>
		            <SkipSMSAlert><xsl:value-of select="SkipSMSAlert"/></SkipSMSAlert>
		            
		            <xsl:choose>
		                <xsl:when test="WorkState='CA'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERSIGNATURE><xsl:value-of select="EMPLOYERSIGNATURE"/></EMPLOYERSIGNATURE>
		                    
		                    <CAStatusChangedTo><xsl:value-of select="CAStatusChangedTo"/></CAStatusChangedTo>
		                </xsl:when>
		                <xsl:when test="WorkState='CT'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    <EMPLOYERSIGNATURE><xsl:value-of select="EMPLOYERSIGNATURE"/></EMPLOYERSIGNATURE>
		                    
		                    <EMPLOYERREGNUMBER><xsl:value-of select="EMPLOYERREGNUMBER"/></EMPLOYERREGNUMBER>
		                    <CTStartDate><xsl:value-of select="CTStartDate"/></CTStartDate>
		                    <!--<xsl:if test="string-length(CTLastDayWorked)=10)">-->
    		                <!--    <xsl:if test="xs:date(concat(substring($beforeYear,7,4), '-',-->
    		                <!--                              substring($beforeYear,1,2), '-',-->
    		                <!--                              substring($beforeYear,4,2))) &lt;= xs:date(concat(substring(CTLastDayWorked,7,4), '-',-->
    		                <!--                              substring(CTLastDayWorked,1,2), '-',-->
    		                <!--                              substring(CTLastDayWorked,4,2)))-->
    		                <!--                  and xs:date(concat(substring($afterYear,7,4), '-',-->
    		                <!--                              substring($afterYear,1,2), '-',-->
    		                <!--                              substring($afterYear,4,2))) &gt;= xs:date(concat(substring(CTLastDayWorked,7,4), '-',-->
    		                <!--                              substring(CTLastDayWorked,1,2), '-',-->
    		                <!--                              substring(CTLastDayWorked,4,2)))">-->
    		                <!--        <CTLastDayWorked><xsl:value-of select="CTLastDayWorked"/></CTLastDayWorked>-->
    		                <!--    </xsl:if>-->
		                    <!--</xsl:if>-->
		                    <!--<xsl:if test="-->
                      <!--          xs:date(-->
                      <!--              concat(-->
                      <!--                  substring(CTLastDayWorked,7,4), '-',-->
                      <!--                  substring(CTLastDayWorked,1,2), '-',-->
                      <!--                  substring(CTLastDayWorked,4,2)-->
                      <!--              )-->
                      <!--          )-->
                      <!--          >= xs:date($beforeYear)-->
                                
                      <!--          and-->
                                
                      <!--          xs:date(-->
                      <!--              concat(-->
                      <!--                  substring(CTLastDayWorked,7,4), '-',-->
                      <!--                  substring(CTLastDayWorked,1,2), '-',-->
                      <!--                  substring(CTLastDayWorked,4,2)-->
                      <!--              )-->
                      <!--          )-->
                      <!--          <= xs:date($afterYear)-->
                      <!--          ">-->
		                    <!--    <CTLastDayWorked><xsl:value-of select="CTLastDayWorked"/></CTLastDayWorked>-->
		                    <!--</xsl:if>-->
	
	
		                    <CTYTDEarnings><xsl:value-of select="CTYTDEarnings"/></CTYTDEarnings>
		                    <xsl:choose>
		                        <xsl:when test="CTLackOfWork='Y'"><CTLackOfWork>Yes</CTLackOfWork></xsl:when>
		                        <xsl:otherwise><CTLackOfWork>No</CTLackOfWork></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="CTVoluntaryLeaving='Y'"><CTVoluntaryLeaving>Yes</CTVoluntaryLeaving></xsl:when>
		                        <xsl:otherwise><CTVoluntaryLeaving>No</CTVoluntaryLeaving></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="CTDischargeOrSuspension='Y'"><CTDischargeOrSuspension>Yes</CTDischargeOrSuspension></xsl:when>
		                        <xsl:otherwise><CTDischargeOrSuspension>No</CTDischargeOrSuspension></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="CTLeaveOfAbsence='Y'"><CTLeaveOfAbsence>Yes</CTLeaveOfAbsence></xsl:when>
		                        <xsl:otherwise><CTLeaveOfAbsence>No</CTLeaveOfAbsence></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="CTOther='Y'"><CTOther>Yes</CTOther></xsl:when>
		                        <xsl:otherwise><CTOther>No</CTOther></xsl:otherwise>
		                    </xsl:choose>
		                    <CTOtherReason><xsl:value-of select="CTOtherReason"/></CTOtherReason>
		                    <xsl:choose>
		                        <xsl:when test="CTDismissalPayYes='Y'"><CTDismissalPayYes>Yes</CTDismissalPayYes></xsl:when>
		                        <xsl:otherwise><CTDismissalPayYes>No</CTDismissalPayYes></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="CTDismissalPayNo='Y'"><CTDismissalPayNo>Yes</CTDismissalPayNo></xsl:when>
		                        <xsl:otherwise><CTDismissalPayNo>No</CTDismissalPayNo></xsl:otherwise>
		                    </xsl:choose>
		                    <CTDismissalPayType><xsl:value-of select="CTDismissalPayType"/></CTDismissalPayType>
		                    <CTDismissalPayHrsOrDay><xsl:value-of select="CTDismissalPayHrsOrDay"/></CTDismissalPayHrsOrDay>
		                    <CTDismissalPayAmount><xsl:value-of select="CTDismissalPayAmount"/></CTDismissalPayAmount>
		                    <xsl:if test="string-length(CTDismissalPayDatesCovered) &gt; 10">
		                        <xsl:if test="contains(CTDismissalPayDatesCovered, '|')">
		                            <CTDismissalPayDatesCovered><xsl:value-of select="CTDismissalPayDatesCovered"/></CTDismissalPayDatesCovered>
		                        </xsl:if>
		                    </xsl:if>
		                </xsl:when>
		                <xsl:when test="WorkState='GA'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <AREACODE><xsl:value-of select="AREACODE"/></AREACODE>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    <EMPLOYERSIGNATURE><xsl:value-of select="EMPLOYERSIGNATURE"/></EMPLOYERSIGNATURE>
		                    
		                    <GALastEmploymentFrom><xsl:value-of select="GALastEmploymentFrom"/></GALastEmploymentFrom>
		                    <GALastEmploymentTo><xsl:value-of select="GALastEmploymentTo"/></GALastEmploymentTo>
		                    <xsl:choose>
		                        <xsl:when test="GALackOfWork='Y'"><GALackOfWork>Yes</GALackOfWork></xsl:when>
		                        <xsl:otherwise><GALackOfWork>No</GALackOfWork></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="GAOther='Y'"><GAOther>Yes</GAOther></xsl:when>
		                        <xsl:otherwise><GAOther>No</GAOther></xsl:otherwise>
		                    </xsl:choose>
		                    <GAOtherReason><xsl:value-of select="GAOtherReason"/></GAOtherReason>
		                    <GAAmount><xsl:value-of select="GAAmount"/></GAAmount>
		                    <GAPaymentPeriodFrom><xsl:value-of select="GAPaymentPeriodFrom"/></GAPaymentPeriodFrom>
		                    <GAPaymentPeriodTo><xsl:value-of select="GAPaymentPeriodTo"/></GAPaymentPeriodTo>
		                    <GAPaymentIssueDate><xsl:value-of select="GAPaymentIssueDate"/></GAPaymentIssueDate>
		                    <xsl:choose>
		                        <xsl:when test="GAEarningYes='Y'"><GAEarningYes>Yes</GAEarningYes></xsl:when>
		                        <xsl:otherwise><GAEarningYes>No</GAEarningYes></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="GAEarningNo='Y'"><GAEarningNo>Yes</GAEarningNo></xsl:when>
		                        <xsl:otherwise><GAEarningNo>No</GAEarningNo></xsl:otherwise>
		                    </xsl:choose>
		                    <GAEarnedAmount><xsl:value-of select="GAEarnedAmount"/></GAEarnedAmount>
		                    <GAAvgWeeklyWage><xsl:value-of select="GAAvgWeeklyWage"/></GAAvgWeeklyWage>
		                    <GADOLACCOUNTNumber><xsl:value-of select="GADOLACCOUNTNumber"/></GADOLACCOUNTNumber>
		                </xsl:when>
		                <xsl:when test="WorkState='MI'">
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    <FEIN><xsl:value-of select="FEIN"/></FEIN>
		                    
		                    <EMPEAN><xsl:value-of select="EMPEAN"/></EMPEAN>
		                    <CONTACTPERSON><xsl:value-of select="CONTACTPERSON"/></CONTACTPERSON>
		                    <MISeparationReason><xsl:value-of select="MISeparationReason"/></MISeparationReason>
		                </xsl:when>
		                <xsl:when test="WorkState='NJ'">
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    
		                    <EMPIDNUMBER><xsl:value-of select="EMPIDNUMBER"/></EMPIDNUMBER>
		                    <NJSeparationDate><xsl:value-of select="NJSeparationDate"/></NJSeparationDate>
		                    <xsl:choose>
		                        <xsl:when test="NJPermanent='Y'"><NJPermanent>Yes</NJPermanent></xsl:when>
		                        <xsl:otherwise><NJPermanent>No</NJPermanent></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="NJTemporary='Y'"><NJTemporary>Yes</NJTemporary></xsl:when>
		                        <xsl:otherwise><NJTemporary>No</NJTemporary></xsl:otherwise>
		                    </xsl:choose>
		                    <NJExpectedRecallDate><xsl:value-of select="NJExpectedRecallDate"/></NJExpectedRecallDate>
		                </xsl:when>
		                <xsl:when test="WorkState='NY'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <FEIN><xsl:value-of select="FEIN"/></FEIN>
		                    
		                    <EMPLOYERREGISTRATION><xsl:value-of select="EMPLOYERREGISTRATION"/></EMPLOYERREGISTRATION>
		                    <NYDateGiven><xsl:value-of select="NYDateGiven"/></NYDateGiven>
		                </xsl:when>
		                <xsl:when test="WorkState='PA'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    <EmployerEmail><xsl:value-of select="EmployerEmail"/></EmployerEmail>
		                    <EMPLOYERSIGNATURE><xsl:value-of select="EMPLOYERSIGNATURE"/></EMPLOYERSIGNATURE>
		                    
		                    <EMPLOYERPAUCACCTNO><xsl:value-of select="EMPLOYERPAUCACCTNO"/></EMPLOYERPAUCACCTNO>
		                    <EMPLOYERCONTACTPERSON><xsl:value-of select="EMPLOYERCONTACTPERSON"/></EMPLOYERCONTACTPERSON>
		                    <EMPLOYERTITLE><xsl:value-of select="EMPLOYERTITLE"/></EMPLOYERTITLE>
		                </xsl:when>
		                <xsl:when test="WorkState='TN'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    <EmployerEmail><xsl:value-of select="EmployerEmail"/></EmployerEmail>
		                    <EMPLOYERSIGNATURE><xsl:value-of select="EMPLOYERSIGNATURE"/></EMPLOYERSIGNATURE>
		                    
		                    <EMPACCOUNTNUMBER><xsl:value-of select="EMPACCOUNTNUMBER"/></EMPACCOUNTNUMBER>
		                    <TNLastEmployedFrom><xsl:value-of select="TNLastEmployedFrom"/></TNLastEmployedFrom>
		                    <TNLastEmployedTo><xsl:value-of select="TNLastEmployedTo"/></TNLastEmployedTo>
		                    <TNOccupation><xsl:value-of select="TNOccupation"/></TNOccupation>
		                    <TNWorkLocation><xsl:value-of select="TNWorkLocation"/></TNWorkLocation>
		                    <xsl:choose>
		                        <xsl:when test="TNLackOfWork='Y'"><TNLackOfWork>Yes</TNLackOfWork></xsl:when>
		                        <xsl:otherwise><TNLackOfWork>No</TNLackOfWork></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="TNDischarge='Y'"><TNDischarge>Yes</TNDischarge></xsl:when>
		                        <xsl:otherwise><TNDischarge>No</TNDischarge></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="TNQuit='Y'"><TNQuit>Yes</TNQuit></xsl:when>
		                        <xsl:otherwise><TNQuit>No</TNQuit></xsl:otherwise>
		                    </xsl:choose>
		                    <TNQuit><xsl:value-of select="TNQuit"/></TNQuit>
		                    <TNOtherSeparationReason><xsl:value-of select="TNOtherSeparationReason"/></TNOtherSeparationReason>
		                    <xsl:choose>
		                        <xsl:when test="TNPermanentLayoff='Y'"><TNPermanentLayoff>Yes</TNPermanentLayoff></xsl:when>
		                        <xsl:otherwise><TNPermanentLayoff>No</TNPermanentLayoff></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="TNTemporaryLayoff='Y'"><TNTemporaryLayoff>Yes</TNTemporaryLayoff></xsl:when>
		                        <xsl:otherwise><TNTemporaryLayoff>No</TNTemporaryLayoff></xsl:otherwise>
		                    </xsl:choose>
		                    <TNRecallDate><xsl:value-of select="TNRecallDate"/></TNRecallDate>
		                    <TNVacationPayAmount><xsl:value-of select="TNVacationPayAmount"/></TNVacationPayAmount>
		                    <TNVacationPayEndDate><xsl:value-of select="TNVacationPayEndDate"/></TNVacationPayEndDate>
		                    <TNSeveranceAmount><xsl:value-of select="TNSeveranceAmount"/></TNSeveranceAmount>
		                    <TNSeverancePayFromDate><xsl:value-of select="TNSeverancePayFromDate"/></TNSeverancePayFromDate>
		                    <TNSeverancePayToDate><xsl:value-of select="TNSeverancePayToDate"/></TNSeverancePayToDate>
		                </xsl:when>
		                <xsl:when test="WorkState='IA'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <AREACODE><xsl:value-of select="AREACODE"/></AREACODE>
		                    <EMPLOYERPHONE><xsl:value-of select="EMPLOYERPHONE"/></EMPLOYERPHONE>
		                    <EMPLOYERSIGNATURE><xsl:value-of select="EMPLOYERSIGNATURE"/></EMPLOYERSIGNATURE>
		                    
		                    <IAACCOUNTNUMBER><xsl:value-of select="IAACCOUNTNUMBER"/></IAACCOUNTNUMBER>
		                    <IADateOfSeparation><xsl:value-of select="IADateOfSeparation"/></IADateOfSeparation>
		                    <xsl:choose>
		                        <xsl:when test="IAVoluntaryQuit='Y'"><IAVoluntaryQuit>Yes</IAVoluntaryQuit></xsl:when>
		                        <xsl:otherwise><IAVoluntaryQuit>No</IAVoluntaryQuit></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="IADischarge='Y'"><IADischarge>Yes</IADischarge></xsl:when>
		                        <xsl:otherwise><IADischarge>No</IADischarge></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="IARefused='Y'"><IARefused>Yes</IARefused></xsl:when>
		                        <xsl:otherwise><IARefused>No</IARefused></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="IALeft='Y'"><IALeft>Yes</IALeft></xsl:when>
		                        <xsl:otherwise><IALeft>No</IALeft></xsl:otherwise>
		                    </xsl:choose>
		                </xsl:when>
		                <xsl:when test="WorkState='CO'">
		                    <xsl:if test="matches(SSN, '[a-zA-Z]*$')">
		                        <SSN><xsl:value-of select="SSN"/></SSN>
		                    </xsl:if>
		                    <EMPLOYERNAME><xsl:value-of select="EMPLOYERNAME"/></EMPLOYERNAME>
		                    <EMPLOYERADDRESS1><xsl:value-of select="EMPLOYERADDRESS1"/></EMPLOYERADDRESS1>
		                    <EMPLOYERCITY><xsl:value-of select="EMPLOYERCITY"/></EMPLOYERCITY>
		                    <EMPLOYERSTATE><xsl:value-of select="EMPLOYERSTATE"/></EMPLOYERSTATE>
		                    <EMPLOYERZIP><xsl:value-of select="EMPLOYERZIP"/></EMPLOYERZIP>
		                    <FEIN><xsl:value-of select="FEIN"/></FEIN>
		                    
		                    <Address1><xsl:value-of select="Address1"/></Address1>
		                    <Address2><xsl:value-of select="Address2"/></Address2>
		                    <City><xsl:value-of select="City"/></City>
		                    <State><xsl:value-of select="State"/></State>
		                    <Zip><xsl:value-of select="Zip"/></Zip>
		                    <COStartDate><xsl:value-of select="COStartDate"/></COStartDate>
		                    <COLastDayWorked><xsl:value-of select="COLastDayWorked"/></COLastDayWorked>
		                    <COYTDEarnings><xsl:value-of select="COYTDEarnings"/></COYTDEarnings>
		                    <COLastWeekWage><xsl:value-of select="COLastWeekWage"/></COLastWeekWage>
		                    <xsl:choose>
		                        <xsl:when test="COQuit='Y'"><COQuit>Yes</COQuit></xsl:when>
		                        <xsl:otherwise><COQuit>No</COQuit></xsl:otherwise>
		                    </xsl:choose>
		                    <COQuitReason><xsl:value-of select="COQuitReason"/></COQuitReason>
		                    <xsl:choose>
		                        <xsl:when test="COLayoff='Y'"><COLayoff>Yes</COLayoff></xsl:when>
		                        <xsl:otherwise><COLayoff>No</COLayoff></xsl:otherwise>
		                    </xsl:choose>
		                    <xsl:choose>
		                        <xsl:when test="CODischarge='Y'"><CODischarge>Yes</CODischarge></xsl:when>
		                        <xsl:otherwise><CODischarge>No</CODischarge></xsl:otherwise>
		                    </xsl:choose>
		                    <CODischargeReason><xsl:value-of select="CODischargeReason"/></CODischargeReason>
		                    <xsl:choose>
		                        <xsl:when test="COOther='Y'"><COOther>Yes</COOther></xsl:when>
		                        <xsl:otherwise><COOther>No</COOther></xsl:otherwise>
		                    </xsl:choose>
		                    <COOTHERREASON><xsl:value-of select="COOTHERREASON"/></COOTHERREASON>
		                </xsl:when>
		                <xsl:when test="WorkState='TX'">
		                    <MONTHLY><xsl:value-of select="MONTHLY"/></MONTHLY>
		                    <SEMIMONTHLY><xsl:value-of select="SEMIMONTHLY"/></SEMIMONTHLY>
		                    <WEEKLY><xsl:value-of select="WEEKLY"/></WEEKLY>
		                    <OTHER><xsl:value-of select="OTHER"/></OTHER>
		                </xsl:when>
		                <xsl:otherwise>
		                    <node>NOT FOUND</node>
		                </xsl:otherwise>
		            </xsl:choose>
		        </Employee>
		    </xsl:for-each>
		</Employees>
	</xsl:template>
</xsl:stylesheet>
