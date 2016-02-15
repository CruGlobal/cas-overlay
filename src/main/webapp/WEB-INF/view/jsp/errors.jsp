<jsp:directive.include file="default/ui/includes/top2.jsp" />
<h1>Relay is Unavailable</h1>
		<div id="welcome">

			<p>
			   There was an error trying to complete your request.  Please notify the support desk or try again.
			</p>
		</div>
		
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.InetAddress" %>
<%
//Analyze the servlet exception     
try
{
	Throwable throwable = (Throwable)request.getAttribute("javax.servlet.error.exception");
	String requestHost = request.getHeader("Host");
	String requestUri = (String)request.getAttribute("javax.servlet.error.request_uri");
	if (requestUri == null) requestUri = "Unknown";
	InetAddress inetAddress = InetAddress.getLocalHost();
	requestHost += "("+inetAddress.getHostName()+" "+inetAddress.getHostAddress()+")";
	
	Writer result = new StringWriter();
	PrintWriter printWriter = new PrintWriter(result);
	throwable.printStackTrace(printWriter);
	String stackTrace = result.toString();
	
	String host = "smtp1.ccci.org";
	String from = "cas@ccci.org";
	String subject = "CAS Error on "+requestHost;
	String messageText = "Error occurred in CAS server:\n\nHost:"+requestHost+"\nURI:"+requestUri+"\n\n"+stackTrace;
	
	// Create some properties and get the default Session.
	Properties props = System.getProperties();
	props.put("mail.host", host);
	props.put("mail.transport.protocol", "smtp");
	Session mailSession = Session.getDefaultInstance(props, null);
	 
	// Set debug on the Session
	// Passing false will not echo debug info, and passing True will.
	 
	mailSession.setDebug(false);
	 
	// Instantiate a new MimeMessage and fill it with the 
	// required information.
	 
	Message msg = new MimeMessage(mailSession);
	msg.setFrom(new InternetAddress(from));
	InternetAddress[] address = {new InternetAddress("lee.braddock@ccci.org")};
	msg.setRecipients(Message.RecipientType.TO, address);
	msg.setSubject(subject);
	msg.setSentDate(new Date());
	msg.setText(messageText);
	 
	// Hand the message to the default transport service
	// for delivery.
	 
	Transport.send(msg);
}
catch(Throwable t)
{
    // could not send error message for some reason
    t.printStackTrace();
}
%>

<h2>Powered by Relay.</h2>
<jsp:directive.include file="ccci/ui/includes/bottom2.jsp" />