import java.net.*;
import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
// Types for ParameterModes
import org.apache.axis.encoding.XMLType;
import org.apache.axis.utils.Options;

import javax.xml.rpc.ParameterMode;
import javax.xml.namespace.QName;

public class WSClient {
	public static void main(String [] args) throws Exception{
	
	if (args.length <=2) {
		System.out.println ("\n-------------------\nUSAGE: WSClient int int url\n---------------------\n");
	}
	
	URL url = new URL(args[2]);
/*	
	// construct a call
	Call myCall = new Call(url);
	// set the URL of the call endpoint 
	myCall.setTargetEndpointAddress(url);
	// the child of the SOAP Body element schould look like this:
	// <ns1:add xmlns:ns1="urn:NumberAdder"></ns1:add>				
	myCall.setOperationName( new QName("urn:WSInfo", "add") );
	// prepare the parameters for the call
	myCall.addParameter("number1", XMLType.XSD_INT, ParameterMode.IN);
	myCall.addParameter("number2", XMLType.XSD_INT, ParameterMode.IN);
	// set the return type of the call
	myCall.setReturnType(XMLType.XSD_INT);
	// invoke the call
	Object myParams[] = new Object[2];
	myParams[0]=(Object) new Integer(args[0]);
	myParams[1]=(Object) new Integer(args[1]);
	Integer resp = (Integer) myCall.invoke(myParams);
	System.out.println(resp);	
*/	
	Call myCall2 = new Call(url);
	// set the URL of the call endpoint 
	myCall2.setTargetEndpointAddress(url);
	// the child of the SOAP Body element schould look like this:
	// <ns1:add xmlns:ns1="urn:NumberAdder"></ns1:add>				
	myCall2.setOperationName( new QName("urn:WSInfo", "getVersion") );
	// prepare the parameters for the call
	myCall2.addParameter("s", XMLType.XSD_STRING, ParameterMode.IN);
	// set the return type of the call
	myCall2.setReturnType(XMLType.XSD_STRING);
	// invoke the call
	Object myParams2[] = new Object[1];
	myParams2[0]=(Object) new String(args[0]);
	String resp2 = (String) myCall2.invoke(myParams2);
	System.out.println(resp2);	
	
	} // End main
} // End Class CallAdd	