<!--#include file="scripts/dataaccess.asp"-->

<%

if session("UserID") <> "" and session("idsecurity") = "837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876") = "#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

'Recuperem el nom del Colegiat
txt_user_name = ""
sql_user = "select * from [ALL_CODICOLES] where [CODI]='"&request("codcol")&"'"
set rs_user = GetRecordset(sql_user)
if not rs_user.eof and not rs_user.bof then
	While not rs_user.eof
		txt_user_name = rs_user("DENOMINACIO")
		rs_user.movenext
	Wend
end if	
rs_user.close
set rs_user = Nothing

sqlClientsColegiat = "select * from [CD_documentacio] where [cod_col] = '"& request("codcol") &"' "
set rsCliCol = GetRecordset(sqlClientsColegiat)

contador_comunidades_erroneas=0
contador_comunidades_validades=0
contador_comunidades_pendents_revisar=0
txt_Nif_utilitzats = 0

' Buscarem les dades per les estadistiques
sqlDadesEstadistiques = "select * from [CD_documentacio] where [cod_col] = '"& request("codcol") &"' "
set rsEstadistiques = GetRecordset(sqlDadesEstadistiques)
if not rsEstadistiques.eof and not rsEstadistiques.bof then

	While not rsEstadistiques.eof
	
			' Comunitats validades amb ID cd certificat
			if rsEstadistiques("id_cert")<>"0" then
			
					' Numero total de docs para comparar
					num_total_docs=0
					num_revisats=0
					sql_total_docs= " SELECT * from [CD_documentacio_iterator] WHERE [cod_col] = '" & rsEstadistiques("cod_col") & "'" & _
					" and [nif_cli]='"&rsEstadistiques("nif_cli")&"' and [id_cert]='"&rsEstadistiques("id_cert")&"'"
					
					set rs_total_docs = GetRecordset(sql_total_docs)
					if not rs_total_docs.eof and not rs_total_docs.bof then
						do while not rs_total_docs.EOF 
							
									if rs_total_docs("estat")="REVISAT CORRECTE" then
										num_revisats=num_revisats+1
									end if

									num_total_docs=num_total_docs+1
							
							rs_total_docs.MoveNext
						loop
					end if
					rs_total_docs.close
					set rs_total_docs=Nothing	
					
					if cdbl(num_revisats) = cdbl(num_total_docs) then
						contador_comunidades_validades=contador_comunidades_validades+1
					end if
				
			end if
	
		
			' Mirarem si tan sols hi ha un document erroni, comunitat ERRONIA
			txt_numdocs_erronis=0
			sql_erronis= " SELECT count(*) as CONTADOR from [CD_documentacio_iterator] WHERE [cod_col] = '" & rsEstadistiques("cod_col") & "'" & _
			" and [nif_cli]='"&rsEstadistiques("nif_cli")&"' and [id_cert]='"&rsEstadistiques("id_cert")&"' and [estat]='REVISAT INCORRECTE'"
			
			set rs_erronis = GetRecordset(sql_erronis)
			if not rs_erronis.eof and not rs_erronis.bof then
				do while not rs_erronis.EOF 
					txt_numdocs_erronis=rs_erronis("CONTADOR")
					rs_erronis.MoveNext
				loop
			end if
			rs_erronis.close
			set rs_erronis=Nothing	
			if txt_numdocs_erronis>0 then
				contador_comunidades_erroneas=contador_comunidades_erroneas+1
			end if		
			
			
			' Si no hi han erronis mirarem quants pendents de revisat
			if txt_numdocs_erronis=0 then
			
					txt_numdocs_pendents=0
					txt_numdocs_ok_noenviat=0
					sql_pendents_rev= " SELECT count(*) as CONTADOR from [CD_documentacio_iterator] WHERE [cod_col] = '" & rsEstadistiques("cod_col") & "'" & _
					" and [nif_cli]='"&rsEstadistiques("nif_cli")&"' and [id_cert]='"&rsEstadistiques("id_cert")&"' and [estat]='NO REVISAT'"
					
					set rs_pendents_rev = GetRecordset(sql_pendents_rev)
					if not rs_pendents_rev.eof and not rs_pendents_rev.bof then
						do while not rs_pendents_rev.EOF 
							txt_numdocs_pendents=rs_pendents_rev("CONTADOR")
							rs_pendents_rev.MoveNext
						loop
					end if
					
					sql_pendents_rev= " SELECT count(*) as CONTADOR from [CD_documentacio_iterator] WHERE [cod_col] = '" & rsEstadistiques("cod_col") & "'" & _
					" and [nif_cli]='"&rsEstadistiques("nif_cli")&"' and [id_cert]='"&rsEstadistiques("id_cert")&"'" & _
					" and [estat]='REVISAT CORRECTE' and ([enviat]='NO' or [enviat] is null)"
					
					set rs_pendents_rev = GetRecordset(sql_pendents_rev)
					if not rs_pendents_rev.eof and not rs_pendents_rev.bof then
						do while not rs_pendents_rev.EOF 
							txt_numdocs_ok_noenviat=rs_pendents_rev("CONTADOR")
							rs_pendents_rev.MoveNext
						loop
					end if
					
					txt_numdocs_pendents=txt_numdocs_pendents+cdbl(txt_numdocs_ok_noenviat)
					
					rs_pendents_rev.close
					set rs_pendents_rev=Nothing	
					if txt_numdocs_pendents>0 then
						contador_comunidades_pendents_revisar=contador_comunidades_pendents_revisar+1
					end if				
			
			end if
			
			txt_Nif_utilitzats=txt_Nif_utilitzats+1
		
		rsEstadistiques.movenext
	Wend
end if	
rsEstadistiques.close
set rsEstadistiques = Nothing	


txt_cif_contractats = 0 
'calcularem tots els certificats que te el colegiat
sqlCert = "select * from [cafbl].[dbo].[comandes] where [CodCli]='"&request("codcol")&"' and ([CodProd] LIKE 'CDRES%' or [CodProd] LIKE 'CDREP%' or [CodProd] LIKE 'CDNEX%') and [Estat] IS NULL" 
set rsCert = GetRecordset(sqlCert)
if not rsCert.eof and not rsCert.bof then
	While not rsCert.eof
		txt_cif_contractats=txt_cif_contractats+CDbl(rsCert("Cantidad"))
		rsCert.movenext
	Wend
end if	
rsCert.close
set rsCert = Nothing	

txt_cif_cafbl = 0 
'calcularem tots els certificats CAFBL
sqlCertcafbl = "select * from [cafbl].[dbo].[comandes] where [CodCli]='"&request("codcol")&"' and ([CodProd] LIKE 'CDRES%' or [CodProd] LIKE 'CDREP%') and [Estat] IS NULL" 
set rsCertCafbl = GetRecordset(sqlCertcafbl)
if not rsCertCafbl.eof and not rsCertCafbl.bof then
	While not rsCertCafbl.eof
		txt_cif_cafbl=txt_cif_cafbl+CDbl(rsCertCafbl("Cantidad"))
		rsCertCafbl.movenext
	Wend
end if	
rsCertCafbl.close
set rsCertCafbl = Nothing	

txt_cif_next = 0
sqlCertNext = "select * from [cafbl].[dbo].[comandes] where [CodCli]='"&request("codcol")&"' and ([CodProd] LIKE 'CDNEX%') and [Estat] IS NULL" 
set rsCertNext = GetRecordset(sqlCertNext)
if not rsCertNext.eof and not rsCertNext.bof then
	While not rsCertNext.eof
		txt_cif_next=txt_cif_next+CDbl(rsCertNext("Cantidad"))
		rsCertNext.movenext
	Wend
end if	
rsCertNext.close
set rsCertNext = Nothing	

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
        <!--
        
        function ObrirFinestra(id){
            var nueva_ventana= window.open("GetCert.asp?id_cert="+id, "Informació del Certificat","status=1,height=500,width=600, top=85, left=400");
        }

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
                form.action="changeID.asp";
                form.submit();
                return true;
            }      
        }
        //-->
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
                                    <h4 class="page-title float-left">Gestió de Comunitats: <%=request("codcol")%> (<%=txt_user_name%>)</h4>
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
                                                    <th>Mod.ID</th>
                                                    <th>Info</th>
                                                    <th>Estat</th>
                                                    <th>Client</th>
                                                    <th>Raó Social</th>
                                                    <th>Adreça</th>
                                                    <th>Tipus Entitat</th>
                                                    <th>Expedient</th>
                                                    <th>Documents</th>
                                                </tr>
                                            </thead>

                                            <tbody>

                                                    <%
                                                    if not rsCliCol.eof and not rsCliCol.bof then
                                                        While not rsCliCol.eof
                                                        
                                                        
                                                        'Aqui controlarem els colors del botó de veure, depenent si estan o no estan tots revisats
                                                        
                                                        txt_numdocs=0
                                                        sql_request_cont= " SELECT count(*) as CONTADOR from [CD_documentacio_iterator] WHERE [cod_col] = '" & request("codcol") & "'" & _
                                                        " and [nif_cli]='"&rsCliCol("nif_cli")&"' and [id_cert]='"&rsCliCol("id_cert")&"'"
                                                        
                                                        set rs_request_cont = GetRecordset(sql_request_cont)
                                                        if not rs_request_cont.eof and not rs_request_cont.bof then
                                                            do while not rs_request_cont.EOF 
                                                                txt_numdocs=rs_request_cont("CONTADOR")
                                                                rs_request_cont.MoveNext
                                                            loop
                                                        end if
                                                        rs_request_cont.close
                                                        set rs_request_cont=Nothing				
                                                        
                                                        
                                                        'Mirarem si tan sols hi ha un document erroni, posar en vermel el boto
                                                        txt_numdocs_erronis=0
                                                        sql_erronis= " SELECT count(*) as CONTADOR from [CD_documentacio_iterator] WHERE [cod_col] = '" & request("codcol") & "'" & _
                                                        " and [nif_cli]='"&rsCliCol("nif_cli")&"' and [id_cert]='"&rsCliCol("id_cert")&"' and [estat]='REVISAT INCORRECTE'"
                                                        
                                                        set rs_erronis = GetRecordset(sql_erronis)
                                                        if not rs_erronis.eof and not rs_erronis.bof then
                                                            do while not rs_erronis.EOF 
                                                                txt_numdocs_erronis=rs_erronis("CONTADOR")
                                                                rs_erronis.MoveNext
                                                            loop
                                                        end if
                                                        rs_erronis.close
                                                        set rs_erronis=Nothing														
                                                        
                                                        
                                                        txt_numdocs_ok=0								
                                                        sql_request= " SELECT * from [CD_documentacio_iterator] WHERE [cod_col] = '" & request("codcol") & "'" & _
                                                        " and [nif_cli]='"&rsCliCol("nif_cli")&"' and [enviat]='SI' and [id_cert]='"&rsCliCol("id_cert")&"'"
                                                        set rs_request = GetRecordset(sql_request)
                                                        if not rs_request.eof and not rs_request.bof then
                                                            do while not rs_request.EOF 
                                                                txt_numdocs_ok=txt_numdocs_ok+1
                                                                rs_request.MoveNext
                                                            loop
                                                        end if
                                                        rs_request.close
                                                        set rs_request=Nothing					


                                                        'Mirarem si la comunitat te expedients i ho canviarem de color
                                                        te_expedients=0								
                                                        sql_expedients= " select * from CD_Expedientes_Comunidades where [CODE]='"&request("codcol")&"' and [NIFCOM]='"&rsCliCol("nif_cli")&"' "
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

                                                        <td align="center">
                                                            <a href="javascript:$('#modal-6').modal('show', {backdrop: 'statuc'});" class="btn btn-red btn-icon icon-left" onClick="setNIF('<%=trim(rsCliCol("nif_cli"))%>','<%=trim(rsCliCol("cod_col"))%>','<%=trim(rsCliCol("id_cert"))%>')"><i class="entypo entypo-check"></i><%=trim(rsCliCol("id_cert"))%></a>
                                                        </td>                                
                                                        
                                                        <!-- BOTO INFO ---------------------------------------------------------------->
                                                        <td align="center"><a href="" class="btn btn-blue btn-icon icon-left" onClick="ObrirFinestra('<%=trim(rsCliCol("id_cert"))%>')"><i class="entypo entypo-eye"></i>Info</a></td>
                                                        <!-- BOTO INFO ---------------------------------------------------------------->

                                                        <% if isNull(rsCliCol("id_estado_certificado")) then %>
                                                            <td></td>
                                                        <% else %>

                                                            <% if rsCliCol("id_estado_certificado")="2" then %>
                                                                <td><a href="#" class="btn btn-green btn-icon">Vàlid<i class="entypo-check"></i></a></td>
                                                            <% else %>
                                                                <td><a href="#" class="btn btn-red btn-icon">Revocat<i class="entypo-cancel"></i></a></td>
                                                            <% end if %>

                                                        <% end if %>

                                                        <td><%=trim(rsCliCol("nif_cli"))%></td>
                                                        <td><%=trim(rsCliCol("rao_social"))%></td>
                                                        <td><%=trim(rsCliCol("adresa"))%></td>
                                                        
                                                        <% if rsCliCol("CodEnt") = "CB" then %>
                                                            <td><a href="#" class="btn btn-orange btn-icon">CB<i class="entypo-behance"></i></a></td>
                                                        <% else %>
                                                            <td><a href="#" class="btn btn-gold btn-icon">CP<i class="entypo-home"></i></a></td>
                                                        <% end if %>
                                                        
                                                        <% if te_expedients=0 then %>
                                                            <td><a href="expedients_comunitat.asp?codcol=<%=trim(rsCliCol("cod_col"))%>&nifcom=<%=trim(rsCliCol("nif_cli"))%>" class="btn btn-info btn-icon">Expedient<i class="entypo-doc"></i></a></td>                                                            
                                                        <% else %>
                                                            <td><a href="expedients_comunitat.asp?codcol=<%=trim(rsCliCol("cod_col"))%>&nifcom=<%=trim(rsCliCol("nif_cli"))%>" class="btn btn-orange btn-icon">Expedient<i class="entypo-doc"></i></a></td>                                                            
                                                        <% end if %>
                                                        
                                                        <% if txt_numdocs=0 then %>
                                                                <td align="center"><a href="certificats_comunitats.asp?codcol=<%=request("codcol")%>&nifcli=<%=rsCliCol("nif_cli")%>&id=<%=rsCliCol("id_cert")%>" type="button" class="btn btn-default btn-icon">Sense Documentació<i class="entypo-eye"></i></a></td>
                                                        <% else %>
                                                            
                                                            <% if txt_numdocs_erronis>0 then %>
                                                            
                                                                <td align="center"><a href="certificats_comunitats.asp?codcol=<%=request("codcol")%>&nifcli=<%=rsCliCol("nif_cli")%>&id=<%=rsCliCol("id_cert")%>" type="button" class="btn btn-red btn-icon">Errònia<i class="entypo-eye"></i></a></td>                                    
                                                            
                                                            <% else %>
                                                            
                                                                <% if txt_numdocs=txt_numdocs_ok then %>
                                                                    <td align="center"><a href="certificats_comunitats.asp?codcol=<%=request("codcol")%>&nifcli=<%=rsCliCol("nif_cli")%>&id=<%=rsCliCol("id_cert")%>" type="button" class="btn btn-green btn-icon">OK<i class="entypo-eye"></i></a></td>
                                                                <% else %>
                                                                        <td align="center"><a href="certificats_comunitats.asp?codcol=<%=request("codcol")%>&nifcli=<%=rsCliCol("nif_cli")%>&id=<%=rsCliCol("id_cert")%>" type="button" class="btn btn-orange btn-icon">Pendent Revisar<i class="entypo-eye"></i></a></td>
                                                                <% end if %>
                                                                
                                                            <% end if %>
                                                            
                                                        <% end if %>

                                                        
                                                    </tr>

                                                    <%
                                                            rsCliCol.movenext
                                                        Wend
                                                    end if
                                                    rsCliCol.close
                                                    set rsCliCol=nothing
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