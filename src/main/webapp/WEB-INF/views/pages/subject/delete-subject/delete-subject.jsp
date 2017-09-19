<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>BRISANJE PREDMETA</h3>
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
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Predmeti
                            <small>sve informacije o predmetu</small>
                        </h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">

                        <!-- Smart Wizard -->
                        <div id="wizard" class="form_wizard wizard_horizontal">
                            <form class="form-horizontal form-label-left">

                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                           for="subject-name">Naziv predmeta <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="subject-name" name="subject-name" required="required"
                                               class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                           for="type-of-study">Tip Studija <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select name="type-of-study" id="type-of-study" style="width: 100%">
                                            <option value="osnovne">Osnovne</option>
                                            <option value="master">Master</option>
                                            <option value="doktorske">Doktorske</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="year-of-study"
                                           class="control-label col-md-3 col-sm-3 col-xs-12">Godina Studija</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="year-of-study" class="form-control col-md-7 col-xs-12"
                                               type="text" name="year-of-study">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                           for="course">Smer <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="course" name="course" required="required"
                                               class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                           for="espb">Broj ESPB <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="espb" name="espb" required="required"
                                               class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                           for="students-number">Broj studenata <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="students-number" name="students-number" required="required"
                                               class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                           for="lecturer-number">Broj predavača <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="lecturer-number" name="lecturer-number" required="required"
                                               class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                            </form>

                                <%--<div class=actionBar" data-toggle="modal"--%>
                                <%--<div class="msgBox">--%>
                                    <%--<div class="content"></div>--%>
                                    <%--<a href="#" class="close">X</a></div>--%>
                                <%--<div class="loader">Loading</div>--%>
                                <%--<a href="#" class="buttonFinish buttonDisabled btn btn-default">Finish</a>--%>
                                <%--data-subjectID="${subject.id}">--%>
                            <%--</div>--%>
                            <div class="actionBar">
                                <a href="#" class="buttonFinish buttonDisabled subject-remove btn-default">Finish</a>
                                data-subjectID = "${subject.idPredmeta}">
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
