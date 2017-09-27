<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script src="<c:url value='/resources/vendor/iCheck/icheck.min.js' />"></script>
<script src="<c:url value='/resources/vendor/datatables.net/js/jquery.dataTables.min.js' />"></script>
<script src="<c:url value='/resources/vendor/datatables.net-bs/js/dataTables.bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/vendor/select2/dist/js/select2.min.js' />"></script>
<script>
//    $('.fa-pencil-square-o').on('click', function () {
//        window.location = '/backend/predmet/izmeni/' + $(this).data('subjectid');
//    })

    $('.remove-subject').on('click', function (e) {
        e.preventDefault();
        currentDeletingSubjectId = $(this).data('subject-id');
        $('.bs-example-modal-sm').modal('show');
    });
</script>
