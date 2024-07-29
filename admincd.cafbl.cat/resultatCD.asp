<!--#include file="scripts/dataaccess.asp"-->

<%

if session("UserID") <> "" and session("idsecurity") = "837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876") = "#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

if IsNull(Request("SEARCH")) or Request("SEARCH")="" then

    Response.redirect "menu.asp"

else

    select_recerca = " select DISTINCT TOP 3300 * from [recerca_cd] WHERE " & _
    "(CODI_COLE like '%"&Request("SEARCH")&"%') OR " & _
    "(NIF_COLE like '%"&Request("SEARCH")&"%') OR " & _
    "(NIF_COMUNITAT like '%"&Request("SEARCH")&"%') OR " & _
    "(NOM_COMUNITAT like '%"&Request("SEARCH")&"%') OR " & _
    "(ADRESA_COMUNITAT like '%"&Request("SEARCH")&"%') OR " & _
    "(ID_CERTIFICAT like '%"&Request("SEARCH")&"%') OR " & _
    "(CODI_POSTAL like '%"&Request("SEARCH")&"%') OR " & _
    "(NOM_COLE like '%"&Request("SEARCH")&"%') OR " & _
    "(NOM_CONTACTE like '%"&Request("SEARCH")&"%') OR " & _
    "(EMAIL_CONTACTE like '%"&Request("SEARCH")&"%')"
    set rs_recerca = GetRecordset(select_recerca)

end if

%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="iso-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>#afcdigital | Certificats Digitals (Panell d'Administració)</title>
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- DataTables -->
        <link href="plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Responsive datatable examples -->
        <link href="plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Plugins css -->
        <link href="plugins/notifications/notification.css" rel="stylesheet" />

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
                                    <h4 class="page-title float-left">Resultat de la recerca (per motius de seguretat, només es mostraràn els primers 3300 resultats</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <% Response.write("<strong>SQL de la consulta:</strong> " & select_recerca) %>
                                    </div>
                                </div>    
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body table-responsive">

                                        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                                <tr>
                                                    <th>CODI_COLE</th>
                                                    <th>ID</th>
                                                    <th>NIF_COLE</th>
                                                    <th>NIF_COM.</th>
                                                    <th>COMUNITAT</th>
                                                    <th>ESTAT</th>
                                                </tr>
                                            </thead>

                                            <tbody>

                                                <%
                                                if not rs_recerca.eof and not rs_recerca.bof then
                                                    While not rs_recerca.eof
                                                %>   

                                                    <tr>
                                                        <td><%=rs_recerca("CODI_COLE")%></td>


                                                        <% if IsNull(rs_recerca("ESTAT")) then %>
																<td><center><a href="#" class="btn btn-icon waves-effect waves-light btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No emès&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></center></td>
														<% else %>


															<% if rs_recerca("ESTAT")="2" then %>
																<td><%=rs_recerca("ID_CERTIFICAT")%></td>
															<% else %>

																<% if rs_recerca("ID_CERTIFICAT")="0" then %>
																	<td><center><a href="#" class="btn btn-icon waves-effect waves-light btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No emès&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></center></td>
																<% else %>
																	<td><strong><p class="text-danger"><%=rs_recerca("ID_CERTIFICAT")%></p></strong></td>
																<% end if %>
																
															<% end if %>


														<% end if %>

                                                        <td><%=rs_recerca("NIF_COLE")%></td>
                                                        <td>
                                                            <a href="documentacioCD.asp?codcol=<%=rs_recerca("CODI_COLE")%>&nifcli=<%=rs_recerca("NIF_COMUNITAT")%>&id=<%=rs_recerca("ID_CERTIFICAT")%>" class="btn btn-purple waves-effect w-md waves-light"><i class="far fa-building"></i>
                                                            &nbsp;<%=rs_recerca("NIF_COMUNITAT")%></i>


                                                        </td>
                                                        <td><%=rs_recerca("NOM_COMUNITAT")%></td>

                                                        <% if rs_recerca("ESTAT")="2" then %>
                                                            <td>Vàlid</td>
                                                        <% else %>
                                                            <% if rs_recerca("ESTAT")="3" then %>
                                                                <td>Revocat</td>
                                                            <% else %>
                                                                <td>No emès</td>
                                                            <% end if %>
                                                        <% end if %>
                                                        
                                                    </tr>

                                                <%
                                                        rs_recerca.movenext
                                                    Wend
                                                end if
                                                rs_recerca.close
                                                set rs_recerca=nothing
                                                %>

                                            </tbody>

                                        </table>
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

        <!-- Required datatable js -->
        <script src="plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="plugins/datatables/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="plugins/datatables/buttons.bootstrap4.min.js"></script>
        <script src="plugins/datatables/jszip.min.js"></script>
        <script src="plugins/datatables/pdfmake.min.js"></script>
        <script src="plugins/datatables/vfs_fonts.js"></script>
        <script src="plugins/datatables/buttons.html5.min.js"></script>
        <script src="plugins/datatables/buttons.print.min.js"></script>
        <script src="plugins/datatables/buttons.colVis.min.js"></script>

        <script src="plugins/notifications/notify.min.js"></script>
        <script src="plugins/notifications/notify-metro.js"></script>
        <script src="plugins/notifications/notifications.js"></script>

        <!-- Responsive examples -->
        <script src="plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="plugins/datatables/responsive.bootstrap4.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script>
            $(document).ready(function() {
                $('#datatable').DataTable();

                //Buttons examples
                var table = $('#datatable-buttons').DataTable({
                    lengthChange: false,
                    buttons: ['excel', 'pdf']
                });

                table.buttons().container()
                        .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
            } );

        </script>

    </body>
</html>

<%

else

    response.redirect "index.asp"

end if

%>