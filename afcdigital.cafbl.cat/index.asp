<%
iTexteResultat =""
if Request("MSG")="666" then

	iTexteResultat = "<script type='text/javascript'>" & _
						"swal({" & _
						"  title: 'Error'," & _
						"  text: 'Validació incorrecte\n\rTorna-ho a provar..." & "" & "'," & _
						"  type: 'error'," & _
						"  confirmButtonColor: '#BF371F'," & _
						"  confirmButtonText: 'tancar'," & _
						"});</script>"
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

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
        <!-- your custom css -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <!--alerts CSS --> <!-- per als sweetalerts -->
        <link href="assets/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">

        <script src="assets/js/modernizr.min.js"></script>

        <script language="Javascript">
          function checking() {

            var bok=true;

            if (bok==true){
              if (document.getElementById('demarcacio').value=="SEL") {
                swal({
                  title: 'Error',
                  text: 'Si us plau\n\rLa Demarcació és obligatòria.',
                  type: 'error',
                  confirmButtonColor: '#BF371F',
                  confirmButtonText: 'tancar',
                });
                document.getElementById('demarcacio').focus();
                bok=false;
                return false;
              }
            }
            
            if (bok==true){
              if (document.getElementById('usuari').value=="") {
                swal({
                  title: 'Error',
                  text: 'Si us plau\n\rL´Usuari és obligatori.',
                  type: 'error',
                  confirmButtonColor: '#BF371F',
                  confirmButtonText: 'tancar',
                });
                document.getElementById('usuari').focus();
                bok=false;
                return false;
              }
            }			

            if (bok==true){
              if (document.getElementById('contrasenya').value=="") {
                swal({
                  title: 'Error',
                  text: 'Si us plau\n\rEl Password és obligatori.',
                  type: 'error',
                  confirmButtonColor: '#BF371F',
                  confirmButtonText: 'tancar',
                });
                document.getElementById('contrasenya').focus();
                bok=false;
                return false;
              }
            }			

            if (bok==true){
              document.formulari.action="checkingUser.asp";
              document.formulari.submit();	
              return true;
            }			
          }

        </script>

    </head>

    <body class="pb-0" style="background-image: url('assets/images/fondo.png'); background-repeat: no-repeat; background-size: cover;">
    <!--body class="pb-0"-->
        <div class="wrapper-page">
            <div class="account-pages">
                <div class="account-box">
                    <!--div class="account-logo-box bg-primary p-4">
                        <center><img src="assets/images/afcdigital_blanc.png" width="250"/></center>
                    </div-->
                    <div class="account-content">
                        <form class="form-horizontal" action="#" method="post" id="formulari" name="formulari">

                            <div class="form-group  mb-4 row">
                                <div class="col-12">
                                  <select name="demarcacio" id="demarcacio" class="form-control" placeholder="Demarcació...">
                                    <option value="SEL">SELECCIONA LA DEMARCACIÓ</option>
                                    <option value="CAFBL">BARCELONA-LLEIDA</option>
                                    <option value="GIRONA">GIRONA</option>
                                    <option value="TARRAGONA">TARRAGONA</option>
                                  </select>
                                </div>
                            </div>

                            <div class="form-group  mb-4 row">
                                <div class="col-12">
                                    <label for="usuari">Usuari :</label>
                                    <input class="form-control" type="text" id="usuari" name="usuari" required="" placeholder="Usuari...">
                                    <input name="KeyEncripted" id="KeyEncripted" type="hidden" value="#@!--_?*^^{**/+User&%Logged">
                                </div>
                            </div>

                            <div class="form-group row mb-4">
                                <div class="col-12">
                                    <label for="contrasenya">Password :</label>
                                    <span class="g-font-size-15" style="color:red"><%=txt_response%></span>
                                    <input class="form-control" type="password" required="" id="contrasenya" name="contrasenya" placeholder="Contrasenya...">
                                </div>
                            </div>

                            <div class="form-group row text-center m-t-10">
                                <div class="col-12">
                                    <button class="btn btn-md btn-block btn-primary waves-effect waves-light" type="button" onClick="checking()">Entrar</button>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
            <!-- end account-box-->


        </div>


        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/metisMenu.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

        <!-- Sweet-Alert  --> <!-- per als sweetalerts -->
        <script src="assets/sweetalert/dist/sweetalert.min.js"></script>

        <%=iTexteResultat%>

    </body>
</html>