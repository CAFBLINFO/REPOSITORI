<!--#include file="scripts/dataaccess.asp"-->

<%

if session("UserID") <> "" and session("idsecurity") = "837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876") = "#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

'Recuperem el nom del Colegiat
txt_user_name = ""
sql_user = "select * from [ALL_CODICOLES] where [CODI]='"&request("codcol")&"'"
set rs_user = GetRecordset(sql_user)
if not rs_user.eof and not rs_user.bof then
	txt_user_name = rs_user("DENOMINACIO")
end if	
rs_user.close
set rs_user = Nothing

sqlDoccli = "select * from [CD_documentacio_iterator] where [cod_col] = '"& request("codcol") &"' " & _
 			"and [nif_cli] = '"& request("nifcli") &"' and [id_cert]='"&request("id")&"'"
set rsDocCli = GetRecordset(sqlDoccli)
	
sqlNomcomunitat = "select * from [CD_documentacio] where [cod_col]= '"& request("codcol") &"' and [nif_cli] = '"& request("nifcli") &"' and [id_cert]='"&request("id")&"'"
set rsNomcomunitat = GetRecordset(sqlNomcomunitat)
if not rsNomcomunitat.eof and not rsNomcomunitat.bof then
	txt_RaoSocial = rsNomcomunitat("rao_social")
end if
rsNomcomunitat.close
set rsNomcomunitat=nothing


select_incidencies = " SELECT * FROM [dbo].[CD_log_motius_incidencies] " & _
                     " where [cod_col]='"& request("codcol") &"' " & _
                     " and [nif_cli]='"& request("nifcli") &"'" & _
                     " and [id_cert]='"& request("id") &"'"

set rs_incidencies = GetRecordset(select_incidencies)
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

        <script language="Javascript">
        
            function setNIF(nif,codcol,id) {
                document.getElementById("nif_com").setAttribute("value", nif);
                document.getElementById("cod_col").setAttribute("value", codcol);
                document.getElementById("id").setAttribute("value", id);
                document.getElementById("id_ant").setAttribute("value", id);
            }
            
            function Check(form) {
                var bok=true;
                
                if (bok==true){
                    
                    if (form.id.value=="") {
                        var opts = {
                            "closeButton": true,
                            "debug": false,
                            "positionClass": "toast-top-full-width",
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "timeOut": "5000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        };
                        toastr.error("El ID ès obligatori", opts);				
                        bok=false;
                        document.getElementById('id').focus();
                    }	
                }
                
                if (bok==true) {
                    form.action="ModifyID.asp";
                    form.submit();
                    return true;
                }      
            }
            
        </script>

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
                                    <h4 class="page-title float-left">Documentació de la Comunitat: <%=txt_RaoSocial%> NIF: <%=request("nifcli")%></h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h5><strong>Col·legiat: <%=request("codcol")%> (<%=txt_user_name%>)</strong> <strong>ID:</strong> <%=request("id")%></h5>
                                        <button type="button" class="btn btn-success waves-effect w-md waves-light">Administrador de Docs.</button>
                                        <button type="button" class="btn btn-pink waves-effect w-md waves-light">Gestió Comunitat</button>
                                        <a href="javascript:$('#modal-6').modal('show', {backdrop: 'statuc'});" class="btn btn-info waves-effect w-md waves-light" onClick="setNIF('<%=trim(request("nifcli"))%>','<%=trim(request("codcol"))%>','<%=trim(request("id"))%>')">Modificar ID</a>
                                        <button type="button" class="btn btn-danger waves-effect w-md waves-light">Tornar</button>
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
                                                    <th>Data</th>
                                                    <th>Doc.</th>
                                                    <th>Doc.</th>
                                                    <th>Pendent</th>
                                                    <th>Incorrecte</th>
                                                    <th>Correcte</th>
                                                    <th>Acció</th>
                                                    <th>Incidència</th>
                                                </tr>
                                            </thead>

                                            <tbody>

                                                    <%
                                                    if not rsDocCli.eof and not rsDocCli.bof then
                                                        While not rsDocCli.eof
                                                        
                                                        sqlNomTipus = "select * from [CD_tipus_documentacio] where [tip_doc] = '"&rsDocCli("tip_doc")&"' "
                                                        set rsNomTipus = GetRecordset(sqlNomTipus)
                                                        if not rsNomTipus.eof and not rsNomTipus.bof then
                                                            txt_nom_doc = rsNomTipus("nom_doc")
                                                        end if
                                                        rsNomTipus.close
                                                        set rsNomTipus=Nothing
                                                            
                                                    %>   
                                                    
                                                    <tr>
                                                        <td><%=rsDocCli("data")%></td>
                                                        <td><%=txt_nom_doc%></td>

                                                        <td align="center"><a href="veure_doc_control.asp?fitxer=<%=rsDocCli("arxiu")%>" class="btn btn-icon waves-effect waves-light btn-pink"> <i class="far fa-file"></a></td>
                                                        

                                                        <!-- NO REVISAT -->
                                                        <% if rsDocCli("estat")="NO REVISAT" then 
                                                            txt_estat = "NO REVISAT"
                                                        %>
                                                            <td align="center"><a href="update_estat.asp?ESTAT=<%=txt_estat%>&CODCOL=<%=request("codcol")%>&NIFCLI=<%=request("nifcli")%>&TIPDOC=<%=rsDocCli("tip_doc")%>&ID=<%=rsDocCli("id_cert")%>" class="btn btn-icon waves-effect waves-light btn-warning"> <i class="far fa-frown"></i></a></td>                                	
                                                        <% else 
                                                            txt_estat = "NO REVISAT"
                                                        %>	
                                                            <td align="center"><a href="update_estat.asp?ESTAT=<%=txt_estat%>&CODCOL=<%=request("codcol")%>&NIFCLI=<%=request("nifcli")%>&TIPDOC=<%=rsDocCli("tip_doc")%>&ID=<%=rsDocCli("id_cert")%>" class="btn btn-icon waves-effect btn-secondary"> <i class="far fa-frown"></i></a></td>                                	
                                                        <% end if %>



                                                        <!-- REVISAT INCORRECTE -->
                                                        <% if rsDocCli("estat")="REVISAT INCORRECTE" then 
                                                            txt_estat = "REVISAT INCORRECTE"
                                                        %>
                                                            <td align="center"><a href="update_estat.asp?ESTAT=<%=txt_estat%>&CODCOL=<%=request("codcol")%>&NIFCLI=<%=request("nifcli")%>&TIPDOC=<%=rsDocCli("tip_doc")%>&ID=<%=rsDocCli("id_cert")%>" class="btn btn-icon waves-effect waves-light btn-danger"> <i class="fa fa-thumbs-down"></i></a></td>                                	  	
                                                        <% else 
                                                            txt_estat = "REVISAT INCORRECTE"
                                                        %>	
                                                            <td align="center"><a href="update_estat.asp?ESTAT=<%=txt_estat%>&CODCOL=<%=request("codcol")%>&NIFCLI=<%=request("nifcli")%>&TIPDOC=<%=rsDocCli("tip_doc")%>&ID=<%=rsDocCli("id_cert")%>" class="btn btn-icon waves-effect btn-secondary"> <i class="fa fa-thumbs-down"></i></a></td>                                	
                                                        <% end if %>
                                                        
                                                        
                                                        
                                                        
                                                        <!-- REVISAT CORRECTE -->
                                                        <% if rsDocCli("estat")="REVISAT CORRECTE" then 
                                                            txt_estat = "REVISAT CORRECTE"
                                                        %>
                                                            <td align="center"><a href="update_estat.asp?ESTAT=<%=txt_estat%>&CODCOL=<%=request("codcol")%>&NIFCLI=<%=request("nifcli")%>&TIPDOC=<%=rsDocCli("tip_doc")%>&ID=<%=rsDocCli("id_cert")%>" class="btn btn-icon waves-effect waves-light btn-success"> <i class="fa fa-thumbs-up"></i></a></td>    	
                                                        <% else 
                                                            txt_estat = "REVISAT CORRECTE"
                                                        %>	
                                                            <td align="center"><a href="update_estat.asp?ESTAT=<%=txt_estat%>&CODCOL=<%=request("codcol")%>&NIFCLI=<%=request("nifcli")%>&TIPDOC=<%=rsDocCli("tip_doc")%>&ID=<%=rsDocCli("id_cert")%>" class="btn btn-icon waves-effect btn-secondary"> <i class="fa fa-thumbs-up"></i></a></td>
                                                        <% end if %>


                                                        <% if rsDocCli("estat") <> "REVISAT CORRECTE" then %>
                                                            <td align="center"><a href="#" class="btn btn-secondary waves-effect w-md waves-light"><i class="far fa-envelope"></i> Pendent</a></td>
                                                        <% else %>
                                                                <% if ""&rsDocCli("enviat") <> "SI" then %>
                                                                    <td align="center"><a href="redirect_doc_enviat.asp?codcol=<%=request("codcol")%>&nifcli=<%=request("nifcli")%>&tipdoc=<%=rsDocCli("tip_doc")%>&nomdoc=<%=rsDocCli("arxiu")%>&id=<%=rsDocCli("id_cert")%>" class="btn btn-warning waves-effect w-md waves-light"><i class="far fa-envelope"></i> Camerfirma </a></td>
                                                                <% else %>
                                                                    <td align="center"><a href="#" class="btn btn-inverse waves-effect w-md waves-light"><i class="far fa-envelope"></i> Enviat </a></td>
                                                                <% end if %>    
                                                        <% end if %> 

                                                        <td><%=rsDocCli("motiu")%></td>                               
                                                        
                                                    </tr>
                                                    
                                                    <%
                                                            rsDocCli.movenext
                                                        Wend
                                                    end if
                                                    rsDocCli.close
                                                    set rsDocCli=nothing
                                                    %>

                                            </tbody>


                                        </table>
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="m-t-0 header-title mb-4">Incidències: <%=txt_RaoSocial%></h4>
                                        
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead>
                                                    <tr>
                                                    <th>Datetime</th>
                                                    <th>ID</th>
                                                    <th>Nom Doc.</th>
                                                    <th>Motiu</th>
                                                    <th>User</th>
                                                    </tr>
                                                </thead>
                                                <tbody>


                                                        <%
                                                        if not rs_incidencies.eof and not rs_incidencies.bof then
                                                            While not rs_incidencies.eof
                                                        %>   
                                                        <tr>
                                                            <td><strong><%=rs_incidencies("datetime_log")%></strong></td>
                                                            <td><%=rs_incidencies("id_cert")%></td>
                                                            <td><%=rs_incidencies("nom_doc")%></td>
                                                            <td><%=rs_incidencies("motiu")%></td>
                                                            <td><%=rs_incidencies("user")%></td>
                                                        </tr>
                                                        <%
                                                                rs_incidencies.movenext
                                                            Wend
                                                        end if
                                                        rs_incidencies.close
                                                        set rs_incidencies=nothing
                                                        %>


                                                </tbody>
                                            </table>
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


        <!-- Modal 6 (Long Modal)-->
        <div class="modal fade" id="modal-6">
            <form name="modificar_id" id="modificar_id" method="post" action="">
            
            <div class="modal-dialog">
            
                <div class="modal-content">
                    
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Introdueix el ID del certificat:</h4>
                    </div>
                    
                    <div class="modal-body">
                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="nif_com" id="nif_com" readonly="readonly" placeholder="Comunitat">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>                

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="cod_col" id="cod_col" readonly="readonly" placeholder="Col.legiat">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>                
                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="id" id="id" placeholder="ID">
                                        <input type="hidden" class="form-control" name="id_ant" id="id_ant">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>
                    
                        <div class="modal-footer">
                            <button type="button" class="btn btn-icon waves-effect waves-light btn-danger" data-dismiss="modal">Cancel·lar</button>
                            <button type="button" class="btn btn-icon waves-effect waves-light btn-success" onClick="Check(modificar_id)">Modificar</button>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>


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