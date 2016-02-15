<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="org.springframework.security.web.authentication.AbstractProcessingFilter"%>

<jsp:directive.include file="ccci/ui/includes/top2.jsp" />
<h1>Authorization Failure</h1>
<div class="errors" id="status">
	<p>You are not authorized to use this application for the following reason: 
	<%final Exception e = (Exception) request.getSession().getAttribute(AbstractProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY);
    request.setAttribute("e", e);%>
<c:out value="${e.message}" escapeXml="true" />.
	</p>
	<p>
</div>
<h2>Powered by Relay.</h2>
<jsp:directive.include file="ccci/ui/includes/bottom2.jsp" />
