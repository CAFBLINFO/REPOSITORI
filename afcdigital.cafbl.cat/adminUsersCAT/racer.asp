<!--#include file="scripts/dataaccess.asp"-->

<%
if session("CodColegiado")<>"" and session("idsecurity")="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876")="#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

iArea="001"
iItem="0004"
iSituacion=session("Situacion")
if getAccesItem(iArea, iItem, iSituacion) = "false" then
	response.Redirect("http://afcdigital.cafbl.cat")
end if

'Carreguem Provincies
select_Prov = " SELECT * FROM [master_Provincies]" 
set rs_Prov = GetRecordset(select_Prov)

'Carreguem Municipis
select_Muni = " SELECT * FROM [master_Municipis] where [CPRO]='"&Request("provincia")&"'" 
set rs_Muni = GetRecordset(select_Muni)

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

        <script language="JavaScript" type="text/JavaScript">
        
            function reloadMunicipis() { 
                document.forms.CKC61.action="racer.asp";
                document.forms.CKC61.iAction.value="RELOAD";
                document.forms.CKC61.submit();
            }
        
        </script>

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

                        <form name="CKC61" method="post" action="">

                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title float-left">Sol·licitut del Certificat de Ciutadà (CKC)[61]</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title m-t-0 mb-4">Dades de l'Administrador</h4>
                                        
                                            <!-- NOM -->
                                            <div class="form-group">
                                                <label for="nom">Nom:<span class="text-danger">*</span></label>
                                                <input type="text" name="nom" parsley-trigger="change" required
                                                        placeholder="Nom" class="form-control" id="nom">
                                                <input name="iAction" id="iAction" type="hidden" value="">
                                            </div>

                                            <!-- 1COGNOM -->
                                            <div class="form-group">
                                                <label for="cognom1">Primer Cognom:<span class="text-danger">*</span></label>
                                                <input type="text" name="cognom1" parsley-trigger="change" required
                                                        placeholder="Primer Cognom" class="form-control" id="cognom1">
                                            </div>

                                            <!-- 2COGNOM -->
                                            <div class="form-group">
                                                <label for="cognom2">Segon Cognom:<span class="text-danger">*</span></label>
                                                <input type="text" name="cognom2" parsley-trigger="change" required
                                                        placeholder="Segon Cognom" class="form-control" id="cognom2">
                                            </div>

                                            <div class="form-group">
                                                <label for="email">Correu Electrònic<span class="text-danger">*</span></label>
                                                <input type="email" name="email" parsley-trigger="change" required
                                                        placeholder="Correu Electrònic" class="form-control" id="email">
                                            </div>

                                            <!-- TELEFON -->
                                            <div class="form-group">
                                                <label for="telefon">Mòbil/Telèfon:<span class="text-danger">*</span></label>
                                                <input type="text" name="telefon" parsley-trigger="change" required
                                                        placeholder="Mòbil-Telèfon" class="form-control" id="telefon">
                                            </div>

                                            <div class="form-group text-right m-b-0">
                                                <button class="btn btn-primary waves-effect waves-light" type="submit">
                                                    Submit
                                                </button>
                                                <button type="reset" class="btn btn-secondary waves-effect m-l-5">
                                                    Cancel
                                                </button>
                                            </div>

                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title m-t-0 mb-4">&nbsp;</h4>

                                            <!-- TIPUS -->
                                            <div class="form-group">
                                                <label for="tipus">Tipus de Document:<span class="text-danger">*</span></label>
                                                <select class="form-control" name="tipus" id="tipus">
                                                    <option selected value="sel">Selecciona</option>
                                                    <option value="NIF">NIF</option>
                                                    <option value="CIF">CIF</option>
                                                </select>
                                            </div>

                                            <!-- DOCUMENT -->
                                            <div class="form-group">
                                                <label for="document">Doc.Identificatiu:<span class="text-danger">*</span></label>
                                                <input type="text" name="document" parsley-trigger="change" required
                                                        placeholder="Document Identificatiu" class="form-control" id="document">
                                            </div>

                                            <!-- PROVINCIA -->
                                            <div class="form-group">
                                                <label for="provincia">Provincia:<span class="text-danger">*</span></label>
                                                <select class="form-control" name="provincia" id="provincia" onChange="reloadMunicipis()">
                                                    <option selected value="sel">Selecciona Provincia</option>
                                                    <%
                                                        if not rs_Prov.eof and not rs_Prov.bof then
                                                            While not rs_Prov.eof
                                                    %>
                                                            <% if Request("provincia")=rs_Prov("CPRO") then %>
                                                                <option selected value="<%=rs_Prov("CPRO")%>"><%=rs_Prov("NOMBRE")%></option>
                                                            <% else %>
                                                                <option value="<%=rs_Prov("CPRO")%>"><%=rs_Prov("NOMBRE")%></option>
                                                            <% end if %>
                                                    <%
                                                                rs_Prov.movenext
                                                            Wend
                                                    end if
                                                    rs_Prov.close
                                                    set rs_Prov=nothing
                                                    %>
                                                </select>
                                            </div>

                                            <!-- MUNICIPI -->
                                            <div class="form-group">
                                                <label for="municipi">Municipi:<span class="text-danger">*</span></label>
                                                <select class="form-control" name="municipi" id="municipi">
                                                    <option selected value="sel">Selecciona Municipi</option>
                                                        <%
                                                            if not rs_Muni.eof and not rs_Muni.bof then
                                                                While not rs_Muni.eof
                                                        %>
                                                                <option value="<%=rs_Muni("CODMUN")%>"><%=rs_Muni("NOMBRE")%></option>
                                                        <%
                                                                    rs_Muni.movenext
                                                                Wend
                                                        end if
                                                        rs_Muni.close
                                                        set rs_Muni=nothing
                                                        %>
                                                </select>
                                            </div>

                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                        </form>

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

        <!-- Parsley js -->
        <script src="../plugins/parsleyjs/parsley.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

        <script>
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>

    </body>
</html>

<%
else
    Response.Redirect"http://afcdigital.cafbl.cat"
end if
%>