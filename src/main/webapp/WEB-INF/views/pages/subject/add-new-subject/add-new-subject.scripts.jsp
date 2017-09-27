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
//        TODO validacija
        if (!isSubjectValid()) {
            return;
        }
        var subjectObj = {
            nameOfTheSubject: $('#subject-name').val(),
            typeOfStudies: $('#type-of-study').val(),
            year: $('#year-of-study').val(),
            course: $('#course').val(),
            espb: $('#espb').val(),
            numberOfStudents: $('#students-number').val(),
            numberOfLectures: $('#lecturer-number').val()
        };

        sendAuthorizeAjax("/private/predmet/", subjectObj, 'POST', subjectSavedSuccessFunction, $(this));
    };

    function isSubjectValid() {
        if (!$('#subject-name').val()) {
            pNotifyShowNotification('Greška!', 'Polje je naziv predmeta obavezno', 'error');
            return false;
        }

        if (!$('#type-of-study').val()) {
            pNotifyShowNotification('Greška!', 'Polje tip studija je obavezno.', 'error');
            return false;
        }

        if (!$('#year-of-study').val()) {
            pNotifyShowNotification('Greška!', 'Polje godina studija je obavezno.', 'error');
            return false;
        }

        if (!$('#course').val()) {
            pNotifyShowNotification('Greška!', 'Polje smer je obavezno.', 'error');
            return false;
        }

        if (!$('#espb').val()) {
            pNotifyShowNotification('Greška!', 'Polje broj ESPB je obavezno.', 'error');
            return false;
        }

        if (!$('#students-number').val()) {
            pNotifyShowNotification('Greška!', 'Polje broj studenata je obavezno.', 'error');
            return false;
        }

        if (!$('#lecturer-number').val()) {
            pNotifyShowNotification('Greška!', 'Polje broj predavača je obavezno.', 'error');
            return false;
        }

        var x = $('#espb').val();
        var y = $('#students-number').val();
        var z = $('#lecturer-number').val();
        var w = $('#year-of-study').val();
        var regexNubmbers=/^[0-9]+$/;

        if(!x.match(regexNubmbers)){
            pNotifyShowNotification('Greška!', 'Polje broj ESPB prima samo brojeve.', 'error');
            return false;
        }

        if(!y.match(regexNubmbers)){
            pNotifyShowNotification('Greška!', 'Polje broj studenata prima samo brojeve.', 'error');
            return false;
        }

        if(!z.match(regexNubmbers)){
            pNotifyShowNotification('Greška!', 'Polje broj predavača prima samo brojeve.', 'error');
            return false;
        }

        if(!w.match(regexNubmbers)){
            pNotifyShowNotification('Greška!', 'Polje godina studija prima samo brojeve.', 'error');
            return false;
        }

        var x1 = $('#subject-name').val();
        var y1 = $('#course').val();
        var regexLetters =/^[0-9]+$/;

        if (x1.match(regexLetters)){
            pNotifyShowNotification('Greška!', 'Polje naziv predmeta prima samo slova.', 'error');
            return false;
        }

        if (y1.match(regexLetters)){
            pNotifyShowNotification('Greška!', 'Polje smer prima samo slova.', 'error');
            return false;
        }


        return true;
    }

    function subjectSavedSuccessFunction(ctx, data, statusCode) {
        if (statusCode === 200) {
            pNotifyShowNotification('Uspešno!', 'Uspešno sačuvan predmet.', 'success');
        } else {
            pNotifyShowNotification('Greška!', 'Greška prilikom čuvanja predmeta.', 'error');
        }
    }


</script>
