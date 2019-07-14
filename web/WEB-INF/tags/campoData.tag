<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ attribute name="id"  required="true" %>
<%@ attribute name="value" required="false" %>

<input type="text" id="${id}" name="${id}" value="${value}"/>
<script>
    $("#${id}").datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd/mm/yy'

    });

</script>