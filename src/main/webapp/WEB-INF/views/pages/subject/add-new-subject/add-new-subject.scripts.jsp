<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value="/resources/vendor/jQuery-Smart-Wizard/js/jquery.smartWizard.js" />"></script>
<script src="<c:url value='/resources/vendor/select2/dist/js/select2.min.js' />"></script>

<script>
    $(document).ready(function(){
        $('#type-of-study').select2({
            minimumResultsForSearch: -1
        });
    });

    function validateAndSaveSubjectFunction(){
//        TODO validacija na svim poljima
        if (!isSubjectValid()) {
            return;
        }
        var subjectObj = {
            nameOfTheSubject: $('#subject-name').val(),
            typeOfStudies: $('#type-of-study').val(),
            year: $('#year-of-study').val()
        };

        sendAuthorizeAjax("/private/predmet/", subjectObj, 'POST', subjectSavedSuccessFunction, $(this));
    };

    function isSubjectValid() {
        if (!$('#subject-name').val()) {
            pNotifyShowNotification('Greska!', 'Polje naziv predmeta je obavezno.', 'error');
            return false;
        }

        return true;
    }

    function subjectSavedSuccessFunction(ctx, data, statusCode) {
        if (statusCode === 200) {
            pNotifyShowNotification('Uspesno!', 'Uspesno sacuvan predmet.', 'success');
        } else {
            pNotifyShowNotification('Greska!', 'Greska prilikom cuvanja predmeta.', 'error');
        }
    }


</script>
