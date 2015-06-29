<%@attribute name="path" required="true" type="java.lang.String" %>
<%@attribute name="label" required="true" type="java.lang.String" %>

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="form-group ${requestScope['org.springframework.validation.BindingResult.film'].hasFieldErrors(path) ? 'has-error' : ''}">
    <label for="${path}" class="control-label">${label}</label>
    <sf:input path="${path}" cssClass="form-control"/>
    <sf:errors path="${path}"/>
</div>