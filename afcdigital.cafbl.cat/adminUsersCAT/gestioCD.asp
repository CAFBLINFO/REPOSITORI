<!--#include file="scripts/dataaccess.asp"-->

<%

if session("UserID") <> "" and session("idsecurity") = "837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876") = "#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

select_prefac = " SELECT * FROM [Certificats_Digitals_Conformats]" 
set rs_prefac = GetRecordset(select_prefac)

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
        <link href="../plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="../plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Responsive datatable examples -->
        <link href="../plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Plugins css -->
        <link href="../plugins/notifications/notification.css" rel="stylesheet" />

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
        <!-- your custom css -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="assets/js/modernizr.min.js"></script>

        <script language="JavaScript">
        
        function setQty(cod_col, qty) {
            document.getElementById("cod_col").setAttribute("value", cod_col);
            document.getElementById("quantitat").setAttribute("value", qty);
        }
        
        function setQty2(cod_col) {
            document.getElementById("cod_col2").setAttribute("value", cod_col);
            
        }
        
        function setQty3(cod_col, nom, email, telefon) {
            document.getElementById("cod_col3").setAttribute("value", cod_col);
            document.getElementById("nom").setAttribute("value", nom);
            document.getElementById("email").setAttribute("value", email);
            document.getElementById("telefon").setAttribute("value", telefon);
        }		
        
        function Check(form) {
            var bok=true;
            
            if (bok==true){
                
                if (form.quantitat.value=="") {
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
                    toastr.error("La quantitat de nif contractats es obligatòria.", opts);				
                    bok=false;
                    document.getElementById('quantitat').focus();
                }	
            }
            
            if (bok==true) {
                form.action="redirec_update_debloqcert.asp";
                form.submit();
                return true;
            }      
        }
        
            function Check2(form) {
            var bok=true;
            
            if (bok==true){
                
                if (form.quantitat2.value=="") {
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
                    toastr.error("La quantitat de nif ampliats es obligatòria.", opts);				
                    bok=false;
                    document.getElementById('quantitat2').focus();
                }	
            }
            
            if (bok==true) {
                form.action="redirect_update_ampliacio_nif.asp";
                form.submit();
                return true;
            }      
        }
        
        function Check3(form) {
            var bok=true;
            
            if (bok==true){
                if (form.nom.value=="") {
                    $.Notification.autoHideNotify('error', 'bottom center', 'Atencio !!!! El Nom i Cognoms ès obligatori.','');
                    bok=false;
                    document.getElementById('nom').focus();
                }	
            }

            if (bok==true){
                if (form.email.value=="") {
                    $.Notification.autoHideNotify('error', 'bottom center', 'Atencio !!!! El Correu electrònic ès obligatori.','');
                    bok=false;
                    document.getElementById('email').focus();
                }	
            }
            
            if (bok==true) {
                form.action="redirect_update_contacte.asp";
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
                                    <h4 class="page-title float-left">Gestió de Certificats</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body table-responsive">

                                        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">

                                            <thead>
                                                <tr>
                                                    <th>Col.</th>
                                                    <th>Contacte</th>
                                                    <th>Gestora</th>
                                                    <th>Cert.</th>
                                                    <th>NIF/CIF</th>
                                                    <th>Cognoms, Nom</th>
                                                    <th>NIF</th>
                                                    <th>Plataforma</th>
                                                    <th>Comunitats</th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <%
                                                if not rs_prefac.eof and not rs_prefac.bof then
                                                    While not rs_prefac.eof
                                                    
                                                        'calcularem tots els certificats que te el colegiat
                                                        txt_cif_contractats=0
                                                        sqlCert = "select * from [cafbl].[dbo].[comandes] where [CodCli]='"&rs_prefac("CODI")&"' and ([CodProd] LIKE 'CDRES%' or [CodProd] LIKE 'CDREP%' or [CodProd] LIKE 'CDNEX%') and [Estat] IS NULL" 
                                                        set rsCert = GetRecordset(sqlCert)
                                                        if not rsCert.eof and not rsCert.bof then
                                                            While not rsCert.eof
                                                                txt_cif_contractats=txt_cif_contractats+CDbl(rsCert("Cantidad"))
                                                                rsCert.movenext
                                                            Wend
                                                        end if	
                                                        rsCert.close
                                                        set rsCert = Nothing										
                                                    
                                                    
                                                        fault=0
                                                        ' Mirarem si el colegiat ja te totes les dades introduides del contacte
                                                        sql222 = " select * from [dbo].[CD_conforme] where [cod_col]='" & rs_prefac("CODI") & "'" 
                                                        set rs222 = GetRecordset(sql222)
                                                        if not rs222.eof and not rs222.bof then
                                                            While not rs222.eof
                                                            
                                                                if isNull(rs222("NomCognoms")) or isNull(rs222("Email")) or isNull(rs222("Telèfon")) then 
                                                                    fault=1
                                                                end if			
                                                                
                                                                txt_nom = rs222("NomCognoms")
                                                                txt_mail = rs222("Email")
                                                                txt_telefon = rs222("Telèfon")
                                                            
                                                                rs222.movenext
                                                            Wend
                                                        end if
                                                        rs222.close
                                                        set rs222=nothing	


                                                        'Mirarem si la comunitat te expedients i ho canviarem de color
                                                        te_expedients=0								
                                                        sql_expedients= " select * from [CD_Expedientes_Colegiados] where [CODE]='"&rs_prefac("CODI")&"'"
                                                        set rs_expedients = GetRecordset(sql_expedients)
                                                        if not rs_expedients.eof and not rs_expedients.bof then
                                                            do while not rs_expedients.EOF 
                                                                te_expedients=1
                                                                rs_expedients.MoveNext
                                                            loop
                                                        end if
                                                        rs_expedients.close
                                                        set rs_expedients=Nothing	                                    
                                                    
                                                %>   

                                                    <tr>
                                                        <td><strong><%=rs_prefac("CODI")%></strong></td>                                                        

                                                        <% if fault=0 then %>
                                                            <td><a href="javascript:$('#modal-8').modal('show', {backdrop: 'statuc'});" onClick="setQty3('<%=rs_prefac("CODI")%>', '<%=txt_nom%>', '<%=txt_mail%>', '<%=txt_telefon%>')" class="btn btn-success btn-bordered waves-effect w-md waves-light">Gestiona</a></td>                            
                                                        <% else %>
                                                            <td><a href="javascript:$('#modal-8').modal('show', {backdrop: 'statuc'});" onClick="setQty3('<%=rs_prefac("CODI")%>', '<%=txt_nom%>', '<%=txt_mail%>', '<%=txt_telefon%>')" class="btn btn-danger btn-bordered waves-effect w-md waves-light">Gestiona</a></td>                            
                                                        <% end if %>

                                                        <td><%=rs_prefac("GESTORA")%></td>
                                                        
                                                        <% if rs_prefac("DESBLOQCERT") ="NO" then %>
                                                            <td><a href="javascript:$('#modal-6').modal('show', {backdrop: 'statuc'});" onClick="setQty('<%=rs_prefac("CODI")%>','<%=txt_cif_contractats%>')" class="btn btn-danger btn-bordered waves-effect w-md waves-light"><%=txt_cif_contractats & " NIF" %></a></td>
                                                        <% else %>
                                                            <td><a href="redirec_update_debloqcert_2.asp?codcol=<%=rs_prefac("CODI")%>&desbloqcert=<%=rs_prefac("DESBLOQCERT")%>"  class="btn btn-success btn-bordered waves-effect w-md waves-light"><%=txt_cif_contractats & " NIF"%></a></td>
                                                        <% end if%>
                                                        
                                                        <td><%=rs_prefac("NIF")%></td>
                                                        <td><%=rs_prefac("NOMBRE_APELLIDOS")%></td>
                                                        
                                                        <% if ""&rs_prefac("ARXIU") = "" then %>
                                                            <td></td>
                                                        <% else %>
                                                            <td align="center"><a href="getNIF.asp?fitxer=<%=rs_prefac("ARXIU")%>" target="_blank" class="btn btn-icon waves-effect waves-light btn-warning"> <i class="fas fa-id-card"></i></a></td>
                                                        <% end if %>
                                                        
                                                        <% if rs_prefac("ARXIU") = "" then %>
                                                            
                                                            <% if rs_prefac("DESBLOQ") ="NO" then %>
                                                                <td><a href="redirec_update_debloq_2.asp?codcol=<%=rs_prefac("CODI")%>&desbloq=<%=rs_prefac("DESBLOQ")%>" class="btn btn-red btn-icon disabled"><i class="fas fa-lock"></i></a></td>
                                                            <% else %>
                                                                <td><a href="redirec_update_debloq_2.asp?codcol=<%=rs_prefac("CODI")%>&desbloq=<%=rs_prefac("DESBLOQ")%>" class="btn btn-green btn-icon disabled"><i class=" fas fa-lock-open"></i></a></td>
                                                            <% end if%>
                                                        
                                                        <% else %>
                                                            
                                                            <% if rs_prefac("DESBLOQ") ="NO" then %>
                                                                <td><a href="redirec_update_debloq_2.asp?codcol=<%=rs_prefac("CODI")%>&desbloq=<%=rs_prefac("DESBLOQ")%>" class="btn btn-danger btn-bordered waves-effect w-md waves-light"><i class="fas fa-lock"></a></td>
                                                            <% else %>
                                                                <td><a href="redirec_update_debloq_2.asp?codcol=<%=rs_prefac("CODI")%>&desbloq=<%=rs_prefac("DESBLOQ")%>" class="btn btn-success btn-bordered waves-effect w-md waves-light"><i class="fas fa-lock-open"></a></td>
                                                            <% end if%>
                                                            
                                                        <% end if %>                                
                                                        
                                                    
                                                        <td><a href="comunitatsCD.asp?codcol=<%=rs_prefac("CODI")%>" class="btn btn-pink btn-bordered waves-effect w-md waves-light">Comunitats</a></td>
                                                        
                                                        <td><a href="purchaseorder_reno_select.asp?CODE=<%=rs_prefac("CODI")%>" class="btn btn-warning btn-bordered waves-effect w-md waves-light">Comandes</a></td>    


                                                        <% if te_expedients=0 then %>
                                                            <td><a href="expedients_colegiat.asp?codcol=<%=rs_prefac("CODI")%>" class="btn btn-info btn-bordered waves-effect w-md waves-light">Expedient</a></td>                            
                                                        <% else %>
                                                            <td><a href="expedients_colegiat.asp?codcol=<%=rs_prefac("CODI")%>" class="btn btn-info btn-bordered waves-effect w-md waves-light">Expedient</a></td>                            
                                                        <% end if %>
                                                        
                                                    </tr>

                                                <%
                                                        rs_prefac.movenext
                                                    Wend
                                                end if
                                                rs_prefac.close
                                                set rs_prefac=nothing
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


<!-- Modal 6 (Long Modal)-->
<div class="modal fade" id="modal-6">

    <form name="modificar_qty" id="modificar_qty" method="post" action="">
    
    <div class="modal-dialog">
    
        <div class="modal-content">
            
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Desbloquejar</h4>
            </div>
            
            <div class="modal-body">
            
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                              <div class="input-group">
                                <span class="input-group-addon"><i class="entypo-user"></i></span>
                                <input type="text" class="form-control" name="cod_col" readonly id="cod_col" placeholder="cod_col">
                              </div>
                        </div>	
                        
                    </div>
                </div>                
            
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                              <div class="input-group">
                                <span class="input-group-addon"><i class="entypo-user"></i></span>
                                <input type="text" class="form-control" name="quantitat" readonly id="quantitat" placeholder="Quantitat de Nif contractats">
                              </div>
                        </div>	
                        
                    </div>
                </div>
                    <input type="hidden" id="desbloqcert" name="desbloqcert" value="NO">
             
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-bordered waves-effect w-md waves-light" data-dismiss="modal">Cancel·lar</button>
                    <button type="button" class="btn btn-info btn-bordered waves-effect w-md waves-light" onClick="Check(modificar_qty)">Introduir</button>
                </div>
            </div>
         </div>
    </div>
    </form>
</div>

    <!-- Modal 8 (Long Modal)-->
        <div class="modal fade" id="modal-8">
        
            <form name="dades_contacte" id="dades_contacte" method="post" action="">
            
            <div class="modal-dialog">
            
                <div class="modal-content">
                    
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h2 class="modal-title">Dades del Contacte</h2>
                    </div>
                    
                    <div class="modal-body">
                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group row">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="cod_col3" readonly id="cod_col3" placeholder="cod_col3">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>  
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group row">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="nom" id="nom" placeholder="Nom i Cognoms...">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group row">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="email" id="email" placeholder="Correu Electrònic...">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group row">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="entypo-user"></i></span>
                                        <input type="text" class="form-control" name="telefon" id="telefon" placeholder="Telèfon...">
                                    </div>
                                </div>	
                                
                            </div>
                        </div>
                        
                        <input type="hidden" id="desbloqcert" name="desbloqcert" value="NO">
                    
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger btn-bordered waves-effect w-md waves-light" data-dismiss="modal">Cancel·lar</button>
                            <button type="button" class="btn btn-info btn-bordered waves-effect w-md waves-light" onClick="Check3(dades_contacte)">Modificar</button>
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
        <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../plugins/datatables/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="../plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="../plugins/datatables/buttons.bootstrap4.min.js"></script>
        <script src="../plugins/datatables/jszip.min.js"></script>
        <script src="../plugins/datatables/pdfmake.min.js"></script>
        <script src="../plugins/datatables/vfs_fonts.js"></script>
        <script src="../plugins/datatables/buttons.html5.min.js"></script>
        <script src="../plugins/datatables/buttons.print.min.js"></script>
        <script src="../plugins/datatables/buttons.colVis.min.js"></script>

        <script src="../plugins/notifications/notify.min.js"></script>
        <script src="../plugins/notifications/notify-metro.js"></script>
        <script src="../plugins/notifications/notifications.js"></script>

        <!-- Responsive examples -->
        <script src="../plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="../plugins/datatables/responsive.bootstrap4.min.js"></script>

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