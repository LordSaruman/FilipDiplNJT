<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value="/resources/vendor/jQuery-Smart-Wizard/js/jquery.smartWizard.js" />"></script>
<script src="<c:url value='/resources/vendor/select2/dist/js/select2.min.js' />"></script>

<script>
    $(document).ready(function(){
        document.getElementById('subject-name').innerText()
        document.getElementById('type-of-study').innerText()
        document.getElementById('year-of-study').innerText()
        document.getElementById('course').innerText()
        document.getElementById('espb').innerText()
        document.getElementById('students-number').innerText()
        document.getElementById('lecturer-number').innerText()
    });

</script>


<script>
    var removeSubjectID = null;

    $('.subject-remove').on('click', function () {
        removeSubjectID = $(this).attr('data-subjectID');
    });

    $('#remove-court').on('click', function () {
        if (removeSubjectID !== null) {
            sendAuthorizeAjax("/private/predmet/", removeSubjectID, 'DELETE', deleteSuccessFunction, $(this));
        }
    });

    function deleteSuccessFunction(ctx, data, statusCode) {
        if (statusCode === 200) {
            toastr.success('Uspešno obrisan predmet.');
            $('[data-subjectID="' + removeSubjectID + '"]').remove();
            removeSubjectID = null;
        }
    }
</script>