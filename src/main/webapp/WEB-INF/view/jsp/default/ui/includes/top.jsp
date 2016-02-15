<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        
        <meta name="apple-touch-fullscreen" content="yes" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
        
        <title>Sign In Using Relay</title>
        
        <link rel="stylesheet" href="<spring:theme code="cas.css"/>" type="text/css" />
        
        <jsp:text><![CDATA[<!--[if lte IE 9]>]]></jsp:text>
        <link rel="stylesheet" href="<spring:theme code="ie-cas.css"/>" type="text/css" media="screen" />
        <jsp:text><![CDATA[<![endif]-->]]></jsp:text>
        
        <script type="text/javascript" src="<spring:theme code="jquery.core.js"/>"></script>
        <script type="text/javascript" src="<spring:theme code="jquery.infield.js"/>"></script>
        <script type="text/javascript">
		   //create this naming for Jquery 1.3.2 version
		   var jq = $.noConflict(true);
	     </script>
		  <script type="text/javascript" charset="utf-8">
                jq(function(){ jq("label").inFieldLabels(); });
            </script>
            <!-- [if lte IE ]>
                <style type="text/css" media="screen">
                    form label {
                            background: #fff;
                    }
                </style>
            <![endif] -->

			<!-- IF IE - use Placeholder Fallback -->
			<!--[if lt IE 10 ]>
			<script>
			  $(function() {
			    $("#login_form").find('[placeholder]').each(function(){ 
			      $(this).val($(this).attr('placeholder'));
			      $(this).focus(function() {
			        if ($(this).attr('placeholder')==$(this).val()) {
			          $(this).val('');
			        }
			      });
			    });
			  });
			</script>
			<![endif]-->

        <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />

        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-43734707-1', 'cru.org');
            ga('send', 'pageview');

        </script>
    </head>
    
    <body onload="setFocus(0,1);">
    
    <%@ include file="functions.jspf" %>
	<div id="wrap">
	    
