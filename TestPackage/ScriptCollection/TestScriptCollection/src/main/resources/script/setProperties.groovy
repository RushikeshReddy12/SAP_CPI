import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.*;

def Message processData(Message msg) {
    def body = msg.getBody(String);
    def map = ["w":23, "x":24, "y":25, "z":26];
    msg.setProperties(map);
    return msg;
}