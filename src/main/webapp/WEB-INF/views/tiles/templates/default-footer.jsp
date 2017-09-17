<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer>
    <div class="pull-right">
        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
    </div>
    <div class="clearfix"></div>
</footer>

<!-- jQuery -->
<script src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js' />"></script>
<!-- Bootstrap -->
<script src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js' />"></script>
<!-- FastClick -->
<script src="<c:url value='/resources/vendor/fastclick/lib/fastclick.js' />"></script>
<!-- NProgress -->
<script src="<c:url value='/resources/vendor/nprogress/nprogress.js' />"></script>
<%--Notify--%>
<script src="<c:url value="/resources/vendor/pnotify/dist/pnotify.js" />"></script>
<script src="<c:url value="/resources/vendor/pnotify/dist/pnotify.buttons.js" />"></script>
<script src="<c:url value="/resources/vendor/pnotify/dist/pnotify.nonblock.js" />"></script>

<!-- Custom Theme Scripts -->
<script src="<c:url value='/resources/js/custom.js' />"></script>

<script>
    function pNotifyShowNotification(title, text, type) {
        new PNotify({
            title: title,
            type: type ? type : "info",
            text: text,
            nonblock: {
                nonblock: true
            },
            styling: 'bootstrap3'
        });
    }

    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    function sendAuthorizeAjax(route, data, method, successFunction, ctx) {
        $.ajax({
            url: route,
            method: method,
            beforeSend: function (xhr) {
                xhr.setRequestHeader(header, token);
            },
            xhrFields: {withCredentials: true},
            async: true,
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json"
        }).then(function (data, textStatus, xhr) {
            if (successFunction !== null) {
                successFunction(ctx, data, xhr.status);
            }
            return data;
        })
    }
</script>