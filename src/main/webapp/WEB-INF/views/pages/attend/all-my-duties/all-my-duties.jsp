<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Moje obaveze</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input class="form-control" placeholder="Pretrazi...">
                        <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Trazi!</button>
                    </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-4">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Unos Novih Obaveza</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <form class="form-horizontal form-label-left">
                            <c:set var = "currentSchoolYear" scope = "session" value = ""/>
                            <c:forEach items="${allSchoolYears}" var="schoolYear" varStatus="loop">
                                <c:if test = "${schoolYear.activeSchoolYear}">
                                    <input type="hidden" id="current-school-year" value="${schoolYear.idSkolskaGodina}">
                                    <c:set var = "currentSchoolYear" scope = "session" value = "${schoolYear.schoolYear}"/>
                                </c:if>
                            </c:forEach>
                            <p class="text-muted font-13 m-b-30">Unosite predmet za školsku godinu:  <c:out value = "${currentSchoolYear}"/></p>
                            <div class="clearfix"></div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="attend-student">Izaberite Studenta
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="attend-student" id="attend-student" style="width: 100%">
                                        <c:forEach items="${allStudents}" var="student" varStatus="loop">
                                            <option value="${student.idStudenta}">${student.surname} ${student.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="attend-subject">Izaberite Predmet
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <select name="attend-subject" id="attend-subject" style="width: 100%">
                                        <c:forEach items="${allSubjects}" var="subject" varStatus="loop">
                                            <option value="${subject.idPredmeta}">${subject.nameOfTheSubject}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <button id="save-duty" type="submit" class="btn btn-success pull-right">Šačuvaj obavezu</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Prikaz svih obaveza<small>za sve godine</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            </li>
                            <li><a class="close-link-disabled"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <p class="text-muted font-13 m-b-30">Prikaz svih obaveza studenta</p>
                        <table id="attend-datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>Ime i prezime Studenta</th>
                                <th>Predmet</th>
                                <th>Školska Godina</th>
                                <th>Broj Časova</th>
                                <th>Pocetka Školske Godine</th>
                                <th>Kraj Školske Godine</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${allAttends}" var="attend" varStatus="loop">
                                <tr>
                                    <td>${attend.student.name} ${attend.student.surname}</td>
                                    <td>${attend.subject.nameOfTheSubject}</td>
                                    <td>${attend.schoolYear.schoolYear}</td>
                                    <td>26</td>
                                    <td>${attend.schoolYear.schoolYear}/10/01</td>
                                    <td>${attend.schoolYear.schoolYear + 1}/06/18</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
