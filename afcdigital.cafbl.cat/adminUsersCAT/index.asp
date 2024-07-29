<!--#include file="scripts/dataaccess.asp"-->

<%
if session("CodColegiado")<>"" and session("idsecurity")="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876")="#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

iArea="001"
iItem="0004"
iSituacion=session("Situacion")
if getAccesItem(iArea, iItem, iSituacion) = "false" then
	response.Redirect("http://afcdigital.cafbl.cat")
end if

select_pinta_menu = " SELECT * FROM [CD_Users_Menus]" 
set rs_pinta_menu = GetRecordset(select_pinta_menu)
Comptador=0

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
                                    <h4 class="page-title float-left">Menú</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            
                                <%
                                    if not rs_pinta_menu.eof and not rs_pinta_menu.bof then
                                        While not rs_pinta_menu.eof

                                %>



                                <% 
                                    remain = Comptador mod 3
                                    if remain=0 then 
                                    
                                %>

                        </div>
                        <div class="row">

                                <% end if %>

                                                <!-- Simple card -->
                                                <div class="col-sm-12 col-xl-3">
                                                    <div class="card m-b-20">
                                                        <img class="card-img-top img-fluid" src="assets/images/<%=rs_pinta_menu("Foto")%>">
                                                        <div class="card-body">
                                                            <p class="card-text"><%=rs_pinta_menu("texte")%></p>
                                                            <a href="<%=rs_pinta_menu("Link")%>" class="btn btn-primary">Entrar</a>
                                                        </div>
                                                    </div>
                                                </div><!-- end col -->

                                <%

                                            Comptador=Comptador+1

                                            rs_pinta_menu.movenext
                                        Wend
                                end if
                                rs_pinta_menu.close
                                set rs_pinta_menu=nothing
                                %>

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