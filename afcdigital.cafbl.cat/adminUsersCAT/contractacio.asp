<!--#include file="scripts/dataaccess.asp"-->

<%
if session("CodColegiado")<>"" and session("idsecurity")="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876")="#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

iArea="001"
iItem="0004"
iSituacion=session("Situacion")
if getAccesItem(iArea, iItem, iSituacion) = "false" then
	response.Redirect("http://afcdigital.cafbl.cat")
end if

%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="iso-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>#afcdigital | Certificats Digitals | Intranet</title>
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
        <!-- your custom css -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="assets/js/modernizr.min.js"></script>

    </head>


    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <!--#include file="scripts/topBar.asp"-->
            <!-- Top Bar End -->

            <!-- ========== Left Sidebar Start ========== -->
            <!--#include file="scripts/leftSidebar.asp"-->
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title float-left">Preus per certificats, què inclou?</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">

                            <!-- Simple card -->
                            <div class="col-sm-12 col-xl-3">
                                <div class="card m-b-20">
                                    <img class="card-img-top img-fluid" src="assets/images/paquet_racer.png">
                                    <div class="card-body">
                                        <h3><b><center>RACER</center></b></h3>
                                        <h5><b><center>Certificat Personal</center></b></h5>
                                        <p class="card-text">
                                            &nbsp;<br>
                                            &nbsp;<br>
                                            &nbsp;<br>
                                            &nbsp;<br>
                                            &nbsp;
                                        </p>
                                        <h1 class="display-4 text-danger"><strong><center>0&#8364;</center></strong></h1>

                                        <center><a href="#" class="btn btn-primary">Contractar</a></center>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <!-- Simple card -->
                            <div class="col-sm-12 col-xl-3">
                                <div class="card m-b-20">
                                    <img class="card-img-top img-fluid" src="assets/images/paquet_sign.png">
                                    <div class="card-body">
                                        <h3><b><center>SIGN</center></b></h3>
                                        <h5><b><center>&nbsp;</center></b></h5>
                                        <p class="card-text">
                                            - Certificat<br>
                                            - Custodia<br>
                                            - Plataforma centralitzada<br>
                                            - Sense Gestor de Notificacions<br>
                                            - Preu per unitat/any sense IVA
                                        </p>
                                        <h1 class="display-4 text-danger"><strong><center>23&#8364;</center></strong></h1>

                                        <center><a href="#" class="btn btn-primary">Contractar</a></center>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <!-- Simple card -->
                            <div class="col-sm-12 col-xl-3">
                                <div class="card m-b-20">
                                    <img class="card-img-top img-fluid" src="assets/images/paquet_premium.png">
                                    <div class="card-body">
                                        <h3><b><center>PREMIUM</center></b></h3>
                                        <h5><b><center>&nbsp;</center></b></h5>
                                        <p class="card-text">
                                            - Certificat<br>
                                            - Custodia<br>
                                            - Plataforma centralitzada<br>
                                            - Amb Gestor de Notificacions<br>
                                            - Preu per unitat/any sense IVA
                                        </p>
                                        <h1 class="display-4 text-danger"><strong><center>20&#8364;</center></strong></h1>

                                        <center><a href="#" class="btn btn-primary">Contractar</a></center>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <!-- Simple card -->
                            <div class="col-sm-12 col-xl-3">
                                <div class="card m-b-20">
                                    <img class="card-img-top img-fluid" src="assets/images/paquet_next.png">
                                    <div class="card-body">
                                        <h3><b><center>NEXT</center></b></h3>
                                        <h5><b><center>&nbsp;</center></b></h5>
                                        <p class="card-text">
                                            - Certificat<br>
                                            - Custodia<br>
                                            - Plataforma centralitzada<br>
                                            - Amb/Sense Gestor de Notificacions<br>
                                            - Preu per unitat/any sense IVA
                                        </p>
                                        <h1 class="display-4 text-danger"><strong><center>18&#8364;</center></strong></h1>

                                        <center><a href="#" class="btn btn-primary">Contractar</a></center>
                                    </div>
                                </div>
                            </div><!-- end col -->

                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title float-left">Preus Gestor de Notificacions IvNEOS:</h4>
                                    <div class="clearfix"></div>
                                    <h5 class="page-title float-left">Subscripció anual Llicència i manteniment anual</h5>
                                    <div class="clearfix"></div>
                                    <br>
                                    <a href="#" class="btn btn-primary">Contractar</a>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">

                            <div class="col-lg-3">
                                <div class="portlet">
                                     <div class="portlet-heading bg-success">
                                        <h3 class="portlet-title text-white">
                                            PACK<br>&nbsp;
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-purple" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            Portal BASE(10 NIF)<br>
                                            Portal BASE+(50 NIF)<br>
                                            Portal PROFESIONAL(100 NIF)<br>
                                            Portal PREMIUM(250 NIF)
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2">
                                <div class="portlet">
                                     <div class="portlet-heading bg-success">
                                        <h3 class="portlet-title text-white">
                                            Llicència<br>(1er.any)
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-purple" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            480 &#8364;<br>
                                            720 &#8364;<br>
                                            960 &#8364;<br>
                                            1.920 &#8364;
                                        </div>
                                    </div>
                                </div>
                            </div>                

                            <div class="col-lg-2">
                                <div class="portlet">
                                    <div class="portlet-heading bg-success">
                                        <h3 class="portlet-title text-white">
                                            Manteniment<br>(Resta anys)
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-purple" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            192 &#8364;<br>
                                            288 &#8364;<br>
                                            384 &#8364;<br>
                                            768 &#8364;
                                        </div>
                                    </div>
                                </div>
                            </div>                                         

                            <div class="col-lg-3">
                                <div class="portlet">
                                    <div class="portlet-heading bg-danger">
                                        <h3 class="portlet-title text-white">
                                            Paquets<br>Ampliació
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-purple" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            10 NIF<br>
                                            50 NIF<br>
                                            100 NIF<br>
                                            &nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>                                         

                            <div class="col-lg-2">
                                <div class="portlet">
                                    <div class="portlet-heading bg-danger">
                                        <h3 class="portlet-title text-white">
                                            Quota<br>&nbsp;
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-purple" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            80 &#8364;<br>
                                            340 &#8364;<br>
                                            570 &#8364;<br>
                                            &nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>                                         
                        </div>
                        <!-- end row -->                        

                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h5 class="page-title float-left">Subscripció mensual</h5>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-3">
                                <div class="portlet">
                                    <div class="portlet-heading bg-warning">
                                        <h3 class="portlet-title text-white">
                                            Subscripció<br>Mensual
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-warning" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            IvNEOS MINI (10 NIF)<br>
                                            IvNEOS MEDIUM (100 NIF)<br>
                                            IvNEOS MAXI (250 NIF)<br>
                                            &nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>                                         

                            <div class="col-lg-2">
                                <div class="portlet">
                                    <div class="portlet-heading bg-warning">
                                        <h3 class="portlet-title text-white">
                                            Quota<br>mes
                                        </h3>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-warning" class="panel-collapse collapse in show">
                                        <div class="portlet-body">
                                            20 &#8364;<br>
                                            41 &#8364;<br>
                                            77 &#8364;<br>
                                            &nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>                                         

                        </div>
                        <!-- end row -->                        

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer">
                    2019 © CAFBL - cafbl.cat
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/metisMenu.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>

<%
else
    Response.Redirect"http://afcdigital.cafbl.cat"
end if
%>