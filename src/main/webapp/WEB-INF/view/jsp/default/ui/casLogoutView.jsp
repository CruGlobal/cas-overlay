<jsp:directive.include file="includes/top2.jsp" />

<spring:message code="screen.logout.header" />
<div id="msg" class="success">
    <p style="text-align:center;"><spring:message code="screen.logout.success" /></p>

    <p style="text-align:center;"><spring:message code="screen.logout.security" /></p>

    <p style="text-align:center;"><a class="return" href="/web-cas/login">Return to Main Login Screen.</a></p>

</div>
<%--
 Implementation of support for the "url" parameter to logout as recommended in CAS spec section 2.3.1.
 A service sending a user to CAS for logout can specify this parameter to suggest that we offer
 the user a particular link out from the logout UI once logout is completed.  We do that here.
--%>
<c:if test="${not empty param['url']}">

    <div id="msg" class="success">
        <p style="text-align:center;"><spring:message code="screen.logout.redirect" arguments="${fn:escapeXml(param.url)}" /></p>

        <p style="text-align:center;"><a class="return" href="/web-cas/login">Return to Main Login Screen.</a></p>
    </div
</c:if>
<c:if test="${not empty param['service']}">
    <script type="text/javascript">
        <!--
        window.location = "${fn:escapeXml(param.service)}"
        //-->
    </script>
</c:if>

<h2></h2>

<jsp:directive.include file="includes/bottom2.jsp" />
