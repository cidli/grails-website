<%@ page import="org.grails.community.Testimonial" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="admin"/>
    <g:set var="entityName" value="${message(code: 'testimonial.label', default: 'Testimonial')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
    <asset:stylesheet src="codeMirror.css"/>
    <asset:stylesheet src="fancyBox.css"/>
    <asset:javascript src="fancyBox.js"/>
    <asset:javascript src="imageUpload.js"/>
    <asset:javascript src="wikiEditor.js"/>
</head>

<body>

<h1 class="page-header">
    <g:message code="default.edit.label" args="[entityName]"/>
    <span class="pull-right">
        <g:link class="btn" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link>
        <g:link class="btn" action="create"><g:message code="default.create.label" args="[entityName]"/></g:link>
    </span>
</h1>

<g:if test="${flash.message}">
    <div class="alert alert-info">${flash.message}</div>
</g:if>

<g:hasErrors bean="${testimonialInstance}">
    <div class="alert alert-error">
        <g:renderErrors bean="${testimonialInstance}" as="list"/>
    </div>
</g:hasErrors>

<g:form method="post" class="form-horizontal" >

<g:hiddenField name="id" value="${testimonialInstance?.id}"/>
<g:hiddenField name="version" value="${testimonialInstance?.version}"/>



    <g:render template="form" model="model" />



    <div class="form-group"><div class="col-sm-offset-2 col-sm-10">
    <g:actionSubmit action="update" class="btn btn-primary"
                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
    <g:actionSubmit class="btn btn-danger" action="delete"
                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    <g:link class="btn" action="list">Cancel</g:link>
</div></div>

</g:form>

</body>
</html>
