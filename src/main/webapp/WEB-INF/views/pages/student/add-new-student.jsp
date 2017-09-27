<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Dodavanje Studenta</h3>
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
                        <h2>Dodavanje novog studenta<small></small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a></li>
                                    <li><a href="#">Settings 2</a></li>
                                </ul>
                            </li>
                            <li><a class="close-link-disabled"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">


                        <!-- Smart Wizard -->
                        <p>Popunite podatke o studentu:</p>
                        <div id="wizard" class="form_wizard wizard_horizontal">
                            <ul class="wizard_steps">
                                <li>
                                    <a href="#step-1">
                                        <span class="step_no">1</span>
                                        <span class="step_descr">Korak 1<br/><small>Osnovne Informacije</small></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-2">
                                        <span class="step_no">2</span>
                                        <span class="step_descr">Korak 2<br/><small>Dodatne informacija</small></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-3">
                                        <span class="step_no">3</span>
                                        <span class="step_descr">Korak 3<br/><small>Kraj</small></span>
                                    </a>
                                </li>
                                <%--<li>--%>
                                <%--<a href="#step-4">--%>
                                <%--<span class="step_no">3</span>--%>
                                <%--<span class="step_descr">Korak 3<br/><small>Kraj</small></span>--%>
                                <%--</a>--%>
                                <%--</li>--%>
                            </ul>
                            <div id="step-1">
                                <form class="form-horizontal form-label-left">

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="subject-name">Ime studenta <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="subject-name" name="subject-name" required="required"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="subject-name">Prezime studenta <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="subject-surname" name="subject-surname" required="required"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="type-of-study">Smer <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select name="type-of-study" id="type-of-study" style="width: 100%">
                                                <option value="osnovne">ISiT</option>
                                                <option value="master">Men</option>
                                                <option value="doktorske">Kv</option>

                                            </select>
                                            <%--<input type="text" id="last-name" name="last-name"--%>
                                            <%--required="required" class="form-control col-md-7 col-xs-12">--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="year-of-study"
                                               class="control-label col-md-3 col-sm-3 col-xs-12">Godina upisa<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="year-of-study" class="form-control col-md-7 col-xs-12"
                                                   type="text" name="year-of-study">
                                        </div>
                                    </div>
                                </form>

                            </div>
                            <div id="step-2">
                                <form class="form-horizontal form-label-left">

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="course">Broj indeksa <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="course" name="course" required="required"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                </form>

                            </div>
                            <div id="step-3">
                                <h2 class="StepTitle">Validacija i provera</h2>
                                <p>
                                    Da li ste proverili podatke koje ste uneli i da li ste sva polja popunili?
                                    Ako jeste, nastavite dalje.
                                </p>
                            </div>
                        </div>

                    </div>
                    <!-- End SmartWizard Content -->
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
