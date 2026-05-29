import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.*;

def Message processData(Message msg) {
    def body = msg.getBody(String);
    def map = ["a":1, "b":2, "c":3, "d":4, "address1":101];
    msg.setHeaders(map);
    return msg;
}