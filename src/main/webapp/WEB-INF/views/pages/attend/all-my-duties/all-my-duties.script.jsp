<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script src="<c:url value='/resources/vendor/iCheck/icheck.min.js' />"></script>
<script src="<c:url value='/resources/vendor/datatables.net/js/jquery.dataTables.min.js' />"></script>
<script src="<c:url value='/resources/vendor/datatables.net-bs/js/dataTables.bootstrap.min.js' />"></script>
<script src="<c:url value='/resources/vendor/select2/dist/js/select2.min.js' />"></script>

<script>
    var attendsToAdd = [];
    var currentAttend = null;
    var currentSchoolYearId;
    var attendDataTable;

    $(document).ready(function () {
        currentSchoolYearId = $('#current-school-year').val();
        $('#attend-student').select2();
        $('#attend-subject').select2();
        attendDataTable = $('#attend-datatable').DataTable();
    });

    $('#save-duty').on('click', function () {
        currentAttend = {
            schoolYear: {idSkolskaGodina: currentSchoolYearId},
            student: {idStudenta: $('#attend-student').val()},
            subject: {idPredmeta: $('#attend-subject').val()}
        };

        $(this).prop('disabled', true);
        sendAuthorizeAjax('/private/obaveza/dodaj', currentAttend, 'POST', saveDutySuccessFunction, $(this));
    });

    function saveDutySuccessFunction(ctx, data, statusCode) {
        $(ctx).prop('disabled', false);
        if (statusCode === 200) {
            new pNotifyShowNotification('Uspesno', 'Uspesno sacuvane obaveze!', 'success');
            attendsToAdd.push(currentAttend);
            currentAttend = null;
            var row = $('<tr>')
                .append('<td>' + data.student.name + ' ' + data.student.year + '</td>')
                .append('<td>' + data.subject.nameOfTheSubject + '</td>')
                .append('<td>' + data.schoolYear.schoolYear + '</td>')
                .append('<td>26</td>')
                .append('<td>' + data.schoolYear.schoolYear + '/10/01</td>')
                .append('<td>' + (data.schoolYear.schoolYear + 1) + '/06/18</td>')

            attendDataTable.row.add(row);
            $('#attend-datatable tbody').prepend(row);
        } else {
            new pNotifyShowNotification('Greska', 'Greska pri dodavanju obaveza! Proverite da obaveza vec ne postoji i probajte ponovo', 'error');
        }

    }
</script>