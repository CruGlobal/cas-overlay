<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:directive.include file="includes/top.jsp"/>

<div id="presentation">

    <h1>Sign in to your account.</h1>

    <form:form method="post" id="login_form" name="login_form" commandName="${commandName}" htmlEscape="true"
               onsubmit="return submitForm()">
        <fieldset>
            <p>
                <c:if test="${not empty sessionScope.openIdLocalId}">
                    <strong>${sessionScope.openIdLocalId}</strong>
                    <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}"/>
                </c:if>
                <c:if test="${empty sessionScope.openIdLocalId}">
                    <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey"/>
                    <form:input placeholder="Email Address" type="email" cssClass="required" cssErrorClass="error"
                                id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username"
                                htmlEscape="true"/>
                </c:if>
                <br/>
            </p>

            <p>
                <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey"/>
                <form:password placeholder="Password" cssClass="required password" cssErrorClass="error password"
                               id="password" size="25" tabindex="2" path="password" accesskey="${passwordAccessKey}"
                               htmlEscape="true"/>
                <a href="/sso/selfservice/resetPasswordOptions?theme=${theme}"><spring:message
                        code="screen.welcome.forgotpwd"/></a>
            </p>

            <p>
                <input type="hidden" name="lt" value="${loginTicket}"/>
                <input type="hidden" name="execution" value="${flowExecutionKey}"/>
                <input type="hidden" name="_eventId" value="submit"/>

                <input id="btn_signin" class="btn-submit" name="submit" accesskey="l"
                       value="<spring:message code="screen.welcome.button.login" />" tabindex="4" type="submit"/>
            </p>
        </fieldset>

        <form:errors path="*" cssClass="formErrors" id="status" element="div"/>

    </form:form>

    <div id="service">
        <ul>
            <li><a href="/sso/selfservice/ssoSignup?theme=${theme}"><spring:message code="screen.welcome.register"/></a>
            </li>
            <li><a href="/sso/selfservice/settings?theme=${theme}"><spring:message code="screen.welcome.settings"/></a>
            </li>
            <li><a href="/sso/selfservice/about?theme=${theme}"><spring:message code="screen.welcome.whatis"/></a></li>
        </ul>
    </div>
</div>

<jsp:directive.include file="includes/bottom.jsp"/>
