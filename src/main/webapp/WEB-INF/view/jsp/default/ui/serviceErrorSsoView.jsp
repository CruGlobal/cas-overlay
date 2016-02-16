<jsp:directive.include file="includes/top2.jsp" />
		<div id="status" class="errors">
			<h1><spring:message code="screen.service.sso.error.header" /></h1>
			<p><spring:message code="screen.service.sso.error.message"  arguments="${fn:escapeXml(request.requestURI)}" /></p>
			<h2><span>Powered by </span><em>Relay</em></h2>
		</div>
<jsp:directive.include file="includes/bottom2.jsp" />
