<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Administracija</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Svi Predmeti</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu"></ul>
                            </li>
                            <li><a class="close-link-disabled"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <p>Spisak svih predmeta i zaposlenih na istom</p>
                        <!-- start project list -->
                        <table class="table table-striped projects">
                            <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th style="width: 20%">Predmet</th>
                                <th>Zaposleni</th>
                                <th>Uspešnost</th>
                                <th>Tip Nastave</th>
                                <th style="width: 20%">#Akcije</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${allTeachings}" var="teaching" varStatus="loop">
                                <tr>
                                    <td>#</td>
                                    <td>
                                        <a>${teaching.subject.nameOfTheSubject}</a>
                                        <br />
                                        <small>Dodat 01.01.2015</small>
                                    </td>
                                    <td>
                                        <ul class="list-inline">
                                            <li>
                                                <img src="<c:url value='/resources/img/user.png' />" class="avatar" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="<c:url value='/resources/img/user.png' />" class="avatar" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="<c:url value='/resources/img/user.png' />" class="avatar" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="<c:url value='/resources/img/user.png' />" class="avatar" alt="Avatar">
                                            </li>
                                        </ul>
                                    </td>
                                    <td class="project_progress">
                                        <div class="progress progress_sm">
                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="89"></div>
                                        </div>
                                        <small>89% Complete</small>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-success btn-xs">${teaching.typeOfLecture}</button>
                                    </td>
                                    <td>
                                        <%--<a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>--%>
                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Ažuriraj </a>
                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Obriši </a>
                                    </td>
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