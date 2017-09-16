<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="<c:url value='/backend/pocetna' />" class="site_title"><i class="fa fa-paw"></i> <span>Studentski servis</span></a>
        </div>
        <div class="clearfix"></div>
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="<c:url value='/resources/img/default-user.png' />" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
            </div>
        </div>
        <br/>

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Opšta</h3>
                <ul class="nav side-menu">
                    <li><a href="<c:url value='/backend/pocetna' />"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="<c:url value='/backend/obavestenja/stara-obavestenja' />"><i class="fa fa-desktop"></i> Stara Obavestenja</a></li>
                    <li><a><i class="fa fa-edit"></i> Studenti <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="<c:url value='/backend/studenti/' />">Svi Studenti</a></li>
                            <li><a href="<c:url value='/backend/studenti/aktivni' />">Moji Studenti</a></li>
                            <li><a href="<c:url value='/backend/studenti/dodaj' />">Dodaj Studenta</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-desktop"></i> Predmeti <span
                            class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="<c:url value='/backend/predmet/' />">Svi Predmeti</a></li>
                            <li><a href="<c:url value='/backend/predmet/moji-predmeti' />">Moji Predmeti</a></li>
                            <li><a href="<c:url value='/backend/predmet/dodaj' />">Dodaj Predmet</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-table"></i> Zaposleni <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="tables.html">Svi Zaposleni</a></li>
                            <li><a href="tables_dynamic.html">Moj Profil</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-bar-chart-o"></i> Školska godina <span
                            class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a>Po godinama<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="#level2_1">Trenutna godina</a>
                                    </li>
                                    <li><a href="#level2_2">Prošla godina</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="morisjs.html">Podešavanja</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="menu_section">
                <h3>Administracija</h3>
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-bug"></i> Završni radovi <span
                            class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="<c:url value='/backend/zavrsni-rad/' />">Svi radovi</a></li>
                            <li><a href="<c:url value='/backend/zavrsni-rad/aktivni-predmeti' />">Aktivni Radovi</a></li>
                            <li><a href="<c:url value='/backend/zavrsni-rad/posmtrani-radovi' />">Posmatrani Radovi</a></li>
                        </ul>
                    </li>
                    <li><a href="<c:url value='/backend/administracija' />"><i class="fa fa-windows"></i> Administracija </a></li>
                    <li><a href="<c:url value='/backend/obaveze' />"><i class="fa fa-sitemap"></i> Obaveze </a></li>
                    <li><a href="<c:url value='/logout' />"><i class="fa fa-windows"></i> Kraj Rada </a></li>
                </ul>
            </div>

        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Izloguj se" href="<c:url value='/logout' />">
                <span class="glyphicon glyphicon-off"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
    </div>
</div>