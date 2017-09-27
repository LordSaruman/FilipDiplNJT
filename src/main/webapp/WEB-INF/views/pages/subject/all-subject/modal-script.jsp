<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script>
    var currentDeletingSubjectId;

    $('.btn-primary').on('click', function () {

        /*prosledjivanje objekta*/
        var subjectObj = {
            nameOfTheSubject: $('#subject-name').val(),
            typeOfStudies: $('#type-of-study').val(),
            year: $('#year-of-study').val(),
            course: $('#course').val(),
            espb: $('#espb').val(),
            numberOfStudents: $('#students-number').val(),
            numberOfLectures: $('#lecturer-number').val()
        };

        sendAuthorizeAjax("/private/predmet/" + currentDeletingSubjectId, subjectObj, 'DELETE', subjectDeletedSuccessFunction, $(this));
    });

    function subjectDeletedSuccessFunction(ctx, data, statusCode) {
        if (statusCode === 200) {
            pNotifyShowNotification('Uspešno!', 'Uspešno sačuvan predmet.', 'success');
        } else {
            pNotifyShowNotification('Greška!', 'Greška prilikom čuvanja predmeta.', 'error');
        }
    }

</script>