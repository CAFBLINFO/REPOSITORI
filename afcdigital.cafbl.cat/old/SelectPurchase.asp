<% @LCID = 1034 %>
<!--#INCLUDE FILE="scripts/dataaccess.asp"-->

<%
if session("CodColegiado")<>"" and session("idsecurity")="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" then
sLang = Request.Querystring("lang")
if sLang = "" then
	sLang = "cat"
end if

txt_certificats = request("certificats")
txt_gestor = request("optionsRadios")

if request("certificats")<>"" and request("optionsRadios")<>"" then

	'Aqui farem tot el calcul per presentar les dades a la web
	sql_purchase = "SELECT * FROM [cafbl].[dbo].[calculadora_productos] where [NumCom]=" & request("certificats")
	set rsPurchase = GetRecordset(sql_purchase)
	if not rsPurchase.eof and not rsPurchase.bof then
		While not rsPurchase.eof
		
				txt_hasta = rsPurchase("hasta")
				
				' ************************************
				' Calculem el preu de la tasa colegial		
				' ************************************
				txt_tasa = rsPurchase("tasa")
				sql_tasa = "SELECT * FROM [cafbl].[dbo].[productos] where [code]='"&rsPurchase("tasa")&"'"
				set rsTasa = GetRecordset(sql_tasa)
				if not rsTasa.eof and not rsTasa.bof then
					While not rsTasa.eof	
						txt_preu_tasa = cdbl(rsTasa("pre_uni")) * cdbl(txt_certificats)
						rsTasa.movenext
					Wend
				end if	
				rsTasa.close
				set rsTasa = Nothing		
						
				if request("optionsRadios")="SI" then
					txt_certif = rsPurchase("conNeos")
				else
					txt_certif = rsPurchase("sinNeos")
				end if 		
				
				' *********************************
				' Calculem el preu dels certificats		
				' *********************************
				sql_preu_cert = "SELECT * FROM [cafbl].[dbo].[productos] where [code]='"&txt_certif&"'"
				set rsPreuCert = GetRecordset(sql_preu_cert)
				if not rsPreuCert.eof and not rsPreuCert.bof then
					While not rsPreuCert.eof	
						txt_preu_cert = cdbl(rsPreuCert("pre_uni")) * cdbl(txt_certificats)
						rsPreuCert.movenext
					Wend
				end if	
				rsPreuCert.close
				set rsPreuCert = Nothing		
				
				' ************************************************
				' Cercarem el preu del lloguer del cafneos mensual
				' ************************************************
				sql_mensual = "select top 1 [pre_uni],[certificados] from [cafbl].[dbo].[productos] where code LIKE 'GS%' and certificados>="&request("certificats")
				set rs_mensual = GetRecordset(sql_mensual)
				if not rs_mensual.eof and not rs_mensual.bof then
					While not rs_mensual.eof	
						txt_preu_mensual = rs_mensual("pre_uni")
						txt_hasta_certificados = rs_mensual("certificados")
						rs_mensual.movenext
					Wend
				end if	
				rs_mensual.close
				set rs_mensual = Nothing				
				 
				' *********************************************************
				' Buscarem si ha fet alguna comanda de GN, si no primer cop
				' *********************************************************
				teComanda=0
				sql = "SELECT * FROM [cafbl].[dbo].[comandes] where [CodCli]='"&session("CodColegiado")&"' and [CodProd] like 'GN%' and [Estat] is Null"
				set rsCom = GetRecordset(sql)
				if not rsCom.eof and not rsCom.bof then
					While not rsCom.eof	
						teComanda=1	
						rsCom.movenext
					Wend
				end if	
				rsCom.close
				set rsCom = Nothing		
		
				Dim txt_producte(10)
					
				if teComanda=1 then ' ampliacio
					txt_producte(0) = rsPurchase("ampliacio_1")
					txt_producte(1) = rsPurchase("ampliacio_2")
					txt_producte(2) = rsPurchase("ampliacio_3")
					txt_producte(3) = rsPurchase("ampliacio_4")
					txt_producte(4) = rsPurchase("ampliacio_5")
					txt_producte(5) = rsPurchase("ampliacio_6")
					txt_producte(6) = rsPurchase("ampliacio_7")
					txt_producte(7) = rsPurchase("ampliacio_8")
					txt_producte(8) = rsPurchase("ampliacio_9")
					txt_producte(9) = rsPurchase("ampliacio_10")
				else
					txt_producte(0) = rsPurchase("nou_1")
					txt_producte(1) = rsPurchase("nou_2")
					txt_producte(2) = rsPurchase("nou_3")
					txt_producte(3) = rsPurchase("nou_4")
					txt_producte(4) = rsPurchase("nou_5")
					txt_producte(5) = rsPurchase("nou_6")
					txt_producte(6) = rsPurchase("nou_7")
					txt_producte(7) = rsPurchase("nou_8")
					txt_producte(8) = rsPurchase("nou_9")
					txt_producte(9) = rsPurchase("nou_10")
				end if		
				
				import_cafneos = 0
				import_neos_mant=0
				
				' **********************************
				' Calcularem tots el lots de CAFNeos
				' **********************************
				For i=0 To 9
				  If txt_producte(i)="" Then Exit For
				  
					' ****************************
					' Busquem el preu del producte				  
					' ****************************
					sql_neos = "SELECT * FROM [cafbl].[dbo].[productos] where [code]='"&txt_producte(i)&"'"
					set rsNeos = GetRecordset(sql_neos)
					if not rsNeos.eof and not rsNeos.bof then
						While not rsNeos.eof	
							import_cafneos = cdbl(import_cafneos) + cdbl(rsNeos("pre_uni"))
							import_neos_mant = cdbl(import_neos_mant) + cdbl(rsNeos("mant_anual"))
							rsNeos.movenext
						Wend
					end if	
					rsNeos.close
					set rsNeos = Nothing
				  
				Next									

			rsPurchase.movenext
			
		Wend
	end if	
	rsPurchase.close
	set rsPurchase = Nothing	
end if

strTipo = Mid(session("CodColegiado"), 1, 1)

if strTipo = "C" then
	strSQL_Colegiado = " select * from [dbo].[COL·LEGI ADMINISTRADORS$Colegiados] where [Código colegiado] = '" & session("CodColegiado") & "'"
	set rsColegiado = GetRecordset(strSQL_Colegiado)
	if not rsColegiado.eof and not rsColegiado.bof then
		do while not rsColegiado.EOF    
			strNombreColegiado = rsColegiado("Nombre") 
			strApellidosColegiado = rsColegiado("Apellidos") 
			strEmailColegiado = rsColegiado("E-mail profesional")
			strNIF = rsColegiado("Cód_ identificación")
			rsColegiado.MoveNext   
		loop
	end if
else
	strSQL_Colegiado = " select * from [dbo].[COL·LEGI ADMINISTRADORS$Sociedades] where [Código sociedad] = '" & session("CodColegiado") & "'"
	set rsColegiado = GetRecordset(strSQL_Colegiado)
	if not rsColegiado.eof and not rsColegiado.bof then
		do while not rsColegiado.EOF    
			strNombreColegiado = rsColegiado("Nombre") 
			strApellidosColegiado = rsColegiado("Nombre") 
			strNIF = rsColegiado("C_I_F_")
			strEmailColegiado = rsColegiado("E-mail")
			rsColegiado.MoveNext   
		loop
	end if
end if 

if strTipo = "C" then
	strDenominacion = strApellidosColegiado &", "& strNombreColegiado
else
	strDenominacion = strNombreColegiado
end if

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="iso-8859-1">
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="cafbl.cat" />
	<meta name="author" content="" />
	
	<title>Certificats Digitals</title>

	<link rel="stylesheet" href="assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
	<link rel="stylesheet" href="assets/css/font-icons/entypo/css/entypo.css">
	<link rel="stylesheet" href="assets/css/font-icons/entypo/css/animation.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
	<link rel="stylesheet" href="assets/css/neon.css">
	<link rel="stylesheet" href="assets/css/custom.css">
    
	<script src="assets/js/jquery-1.10.2.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
    
    <script language="JavaScript" type="text/JavaScript">

		function changeSit(){
			
			check_boto = document.getElementById("c_ok").checked; 
			
			if (check_boto==true){
				document.getElementById("btn_full_comanda").disabled=false;
			} else {
				document.getElementById("btn_full_comanda").disabled=true;
			}
		
		}
		
		function PurchaseOrderSheet(){
			certificats = document.getElementById("numcer").value;
			cafneos = document.getElementById("cafneos").value;
			opcioAM = document.getElementById("opcio").value;
			window.location.href = "PurchaseOrderSheet.asp?NUMCER=" + certificats + "&CAFNEOS=" + cafneos + "&OPCIO=" + opcioAM;
		}

	</script>
	
	
</head>
<body class="page-body" onLoad="changeSit()">

    <div class="page-container">
    <!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->	
        
        <div class="sidebar-menu">
                <!--#include file="includes/serveis-cat.asp"-->	
        </div>	
        
        <div class="main-content">
            <h4><!--#include file="includes/userOK.asp"--></h4>
            <!-- lets do some work here... -->
            
        <div class="alert alert-danger">
              <h3><strong>Sol&middot;licita els Certificats Digitals de Representant</strong></h3>
              <h4>En aquesta calculadora podràs fer el teu pressupost detallat.</h4>
        </div>    
            
		<div class="panel-body">
        		
                <h4>
				
				<form role="form" class="form-horizontal form-groups-bordered">
                
                    <div class="checkbox checkbox-replace color-green">
                        <label class="col-sm-3 control-label"></label>
                        <div class="col-sm-5">
                            <input type="checkbox" id="pertcol" name="pertocol" checked disabled>
                            <label>Certificat de pertinença col·legial gratuït</label>
                        </div>
                    </div>     
                    
                    <br>            
	
					<div class="form-group">
						<label class="col-sm-3 control-label">N&uacute;m. Certificats de	les	teves Comunitats</label>
						<div class="col-sm-5">
							<select class="form-control" id="certificats" name="certificats">
                            	<% For i = 1 To 350 %>
								<option value="<%=i%>"><%=i%></option>
                                <% Next %>
							</select>
						</div>
                        
					</div>
                    
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-5">
							<div class="radio">
								<label>
									<input type="radio" name="optionsRadios" id="gestor1" value="SI" checked>Amb Gestor de Notificacions
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="optionsRadios" id="gestor2" value="NO">Sense Gestor de Notificacions
								</label>
							</div>
						</div>
					</div>
        
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-5">
                            <button type="submit" class="btn btn-green btn-icon">
                                Calcular Pressupost
                                <i class="entypo-check"></i>
                            </button> 
                            <a href="menu_certificats_digitals.asp"  class="btn btn-red btn-icon">Tornar<i class="entypo-reply"></i></a>
						</div>
					</div>             
                    
                    <% if request("certificats")<>"" and request("optionsRadios")<>"" then %>
                    
						<% if request("optionsRadios")="SI" then %>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-8">
                            <table class="table table-condensed table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th colspan="2"><h4>Certificats amb Gestor de Notificacions<br>Opció Anual (1er. any)</h4></th>
                                        <th></th>
                                        <th colspan="2"><h4>Certificats amb Gestor de Notificacions<br>Opció Anual (Resta Anys)</h4></th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <tr>
                                        <td><%=request("certificats") & " Certificats"%></td>
                                        <td align="right"><%=txt_preu_cert & " €"%></td>
                                        <td></td>
                                        <td><%=request("certificats") & " Certificats"%></td>
                                        <td align="right"><%=txt_preu_cert & " €"%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Taxa Col&middot;legial</td>
                                        <td align="right"><%=txt_preu_tasa & " €"%></td>
                                        <td></td>
                                        <td>Taxa Col&middot;legial</td>
                                        <td align="right"><%=txt_preu_tasa & " €"%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>CAFirma opció anual <%=request("certificats") & " NIF<br>Podràs gestionar fins a " & txt_hasta & " NIF"%></td>
                                        <td align="right"><%=import_cafneos & " €"%></td>
                                        <td></td>
                                        <td>CAFirma Manteniment <%=request("certificats") & " NIF<br>Podràs gestionar fins a " & txt_hasta & " NIF"%></td>
                                        <td align="right"><%=cdbl(import_cafneos)*0.40 & " €"%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Descompte(20%):</td>
                                        <td align="right"><strong><%=(cdbl(import_cafneos)*20)/100 & " €"%></strong></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
    
    
                                    <tr>
                                        <td>Subtotal:</td>
                                        <td align="right"><strong><%=cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(import_cafneos)-(cdbl(import_cafneos)*20)/100 & " €"%></strong></td>
                                        <td></td>
                                        <td>Subtotal:</td>
                                        <td align="right"><strong><%=cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(cdbl(import_cafneos)*0.40) & " €"%></strong></td>
                                    </tr>
    
                                    <tr>
                                        <td>IVA(21%):</td>
                                        <td align="right"><strong><%=((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(import_cafneos)-(cdbl(import_cafneos)*20)/100)*21)/100 & " €"%></strong></td>
                                        <td></td>
                                        <td>IVA(21%):</td>
                                        <td align="right"><strong><%=((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(cdbl(import_cafneos)*0.40))*21)/100 & " €"%></strong></td>
                                    </tr>
    
                                    <tr>
                                        <td>TOTAL IVA inclòs:</td>
                                        <td align="right"><strong><%=(cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(import_cafneos)-(cdbl(import_cafneos)*20)/100)+((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(import_cafneos)-(cdbl(import_cafneos)*20)/100)*21)/100 & " €"%></strong></td>
                                        <td></td>
                                        <td>TOTAL IVA inclòs:</td>
                                        <td align="right"><strong><%=(cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(cdbl(import_cafneos)*0.40))+((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(cdbl(import_cafneos)*0.40))*21)/100 & " €"%></strong></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                            </div>
                        </div>     
                        
                        
                            <!-- OPCIO MENSUAL-->
                            <% if cdbl(request("certificats"))<=250 then %>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-8">
                                <table class="table table-condensed table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th colspan="3"><h4>Certificats amb Gestor de Notificacions<br>Opció Mensual (Per sempre)</h4></th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr>
                                            <td><%=request("certificats") & " Certificats"%></td>
                                            <td></td>
                                            <td align="right"><%=txt_preu_cert & " €"%></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>Taxa Col&middot;legial</td>
                                            <td></td>
                                            <td align="right"><%=txt_preu_tasa & " €"%></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>CAFirma opció mensual <%=request("certificats") & " NIF<br>Podràs gestionar fins a " & txt_hasta_certificados & " NIF"%></td>
                                            <td></td>
                                            <td align="right"><%=txt_preu_mensual & " €"%></td>
                                        </tr>
                                        
                                        <tr>
                                            <td></td>
                                            <td align="right"><strong>Quota 1r. mes anualitat</strong></td>
                                            <td align="right"><strong>Quota 11 mesos restants</strong></td>
                                        </tr>
        
        
                                        <tr>
                                            <td>Subtotal:</td>
                                            <td align="right"><strong><%=cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(txt_preu_mensual) & " €"%></strong></td>
                                            <td align="right"><strong><%=cdbl(txt_preu_mensual) & " €"%></strong></td>
                                            
                                        </tr>
        
                                        <tr>
                                            <td>IVA(21%):</td>
                                            <td align="right"><strong><%=((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(txt_preu_mensual))*21)/100 & " €"%></strong></td>
                                            <td align="right"><strong><%=(cdbl(txt_preu_mensual)*21)/100 & " €"%></strong></td>
                                            
                                        </tr>
        
                                        <tr>
                                            <td>TOTAL IVA inclòs:</td>
                                            <td align="right"><strong><%=cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(txt_preu_mensual)+(((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+cdbl(txt_preu_mensual))*21)/100) & " €"%></strong></td>
                                            <td align="right"><strong><%=cdbl(txt_preu_mensual)+((cdbl(txt_preu_mensual)*21)/100) & " €"%></strong></td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                                </div>
                            </div>    
                            
                            <% end if %>  
                        
                        <% else %>
                        
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"></label>
                                        <div class="col-sm-8">
                                        <table class="table table-condensed table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th colspan="2"><h4>Certificats sense Gestor de Notificacions</h4></th>
                                                </tr>
                                            </thead>
                                            
                                            <tbody>
                                                <tr>
                                                    <td><%=request("certificats") & " Certificats"%></td>
                                                    <td align="right"><%=txt_preu_cert & " €"%></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td>Taxa Col&middot;legial</td>
                                                    <td align="right"><%=txt_preu_tasa & " €"%></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td>Subtotal:</td>
                                                    <td align="right"><strong><%=cdbl(txt_preu_cert)+cdbl(txt_preu_tasa) & " €"%></strong></td>
                                                </tr>
                
                                                <tr>
                                                    <td>IVA(21%):</td>
                                                    <td align="right"><strong><%=((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa))*21)/100 & " €"%></strong></td>
                                                </tr>
                
                                                <tr>
                                                    <td>TOTAL IVA inclòs:</td>
                                                    <td align="right"><strong><%=cdbl(txt_preu_cert)+cdbl(txt_preu_tasa)+(((cdbl(txt_preu_cert)+cdbl(txt_preu_tasa))*21)/100) & " €"%></strong></td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                        </div>
                                    </div>     
                            
                        <% end if %> 
                        
                        <form name="dades" id="dades" method="post" class="form-horizontal" action="">
                        
                            <div class="form-group">
                                <label class="col-sm-3 control-label">N&uacute;m. Certificats</label>
                                <div class="col-sm-3">
										<input name="numcer" type="text" class="form-control" id="numcer" value="<%=request("certificats") %>" readonly="readonly"/>                                            
                                </div>
                            </div>                        
                            <div class="form-group">
                                <label class="col-sm-3 control-label">CAFNeos</label>
                                <div class="col-sm-3">
										<input name="cafneos" type="text" class="form-control" id="cafneos" value="<%=request("optionsRadios") %>" readonly="readonly"/>                                            
                                </div>
                            </div> 
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Selecciona opció</label>
                                
                                <div class="col-sm-5">
                                    <select class="form-control" id="opcio" name="opcio">
                                        <% if request("optionsRadios")="SI" and cdbl(request("certificats"))<=250 then %>
	                                        <option value="ANUAL">Anual</option>
                                            <option value="MENSUAL">Mensual</option>
                                        <% else %>
	                                        <option value="ANUAL">Anual</option>
                                        <% end if%>
                                    </select>
                                </div>
                            </div>                            
                            
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-5">
                                    <a href="http://www.cafbl.cat/pdfs/Normativa_acceptacio_full_encarrec.pdf" class="btn btn-blue btn-icon" target="_blank">
                                        Veure Condicions d'&uacute;s
                                        <i class="entypo-check"></i>
                                    </a> 
                                </div>
                            </div>                             

                            <% if strTipo = "C" then %>

							<br>                            
                            
							<div class="checkbox checkbox-replace color-green">
                            	<label class="col-sm-3 control-label"></label>
                            	<div class="col-sm-5">
                                    <input type="checkbox" id="c_ok" name="c_ok" onClick="changeSit()">
                                    <label>Accepto les condicions i contracto el servei</label>
                                </div>
							</div>  
                            <br>
                            <div class="col-sm-12"><br>
                                <div class="alert alert-danger">
                                    <h2><strong>Advertències generals:</strong></h2>
                                    <h4>
                                    <ul>
                                    	<li>S'ha d'estar col·legiat exercent, per tenir disponible aquest servei.</li>
                                    	<br>
<li>Les comandes seran anul·lables fins a 5 dies abans de l'emissió de la factura que es realitza a finals de mes, sempre que no disposi de cap certificat emès.<br>
  <br>
</li>
                                        <li>La comanda es renovarà anualment, amb el mateix nombre de certificats contractats, a menys que amb una antelació de 30 dies, ens ho comuniqui.<br>
                                          <br>
                                      </li>
                                        <li>Per emetre un Certificat de representat davant de les Administracions Públiques, s'ha de disposar prèviament de l'apoderament oportú.<br>
                                          <br>
                                      </li>
                                        <li>És indispensable que consulti i revisi atentament la informació general del Servei abans de contractar-lo.<br>
                                          <br>
                                        </li>
										<li>Els apoderaments en Junta de Propietaris tindran una validesa de 12 mesos.<br>
										  <br>
                                        </li>                     
                                        <li>En el cas del CAFBL: La factura s'emetrà de forma automàtica a nom de la societat registrada al Col·legi d'Administradors, en el cas de que no hi consti ninguna societat registrada, s'emetrà a nom del col·legiat.<br>
                                          <br>
                                        </li>
                                        
                                        <li>
											La primera vegada que es contracti el servei, ha d'adjuntar-se el <a href="http://www.cafbl.cat/pdfs/sepa.pdf" target="_blank"><strong>document SEPA</strong></a> degudament complimentat i firmat, i enviar-lo a <strong><a href="mailto:facturacio@cafbl.cat">facturacio@cafbl.cat</a></strong> <br>
											<br>
                                        </li>
                                        
                                        <li>
											En el cas de voler realitzar un canvi de domiciliació bancària amb posterioritat, hauran de posar-se en contacte amb <strong><a href="mailto:facturacio@cafbl.cat">facturacio@cafbl.cat</a></strong>                                       	
                                        </li>
                                       
                                    </ul>
                                   </h4>
                                </div>    
                            </div>
                            
                          <% end if %>
                            
                            <br>                          
                              
                            <div class="form-group">
                            	
								<% if strTipo = "C" then %>
                                    
                                    <div class="col-sm-offset-3 col-sm-8">
                                        <button type="button" class="btn btn-green btn-icon" action="PurchaseOrderSheet.asp" id="btn_full_comanda" name="btn_full_comanda" disabled onClick="PurchaseOrderSheet()">
                                            Contractar Servei
                                            <i class="entypo-check"></i>
                                        </button> 
                                    </div>

                          <% else %>
                                	<div class="col-sm-offset-3 col-sm-8">
                                    <h4>Aquest servei no està disponible per a societats registrades, pel fet que tots els certificats han d'emetre's com a persona física. Posa't amb contacte amb el departament per efectes de facturació.</h4><br>
                                    <a href="menu_certificats_digitals.asp"  class="btn btn-red btn-icon">Tornar<i class="entypo-reply"></i></a>
									</div>
                                <% end if %>

                            </div>                                               
                        
                        </form>        
                    
                    <% end if %>         
                    </h4>  
        
            </form>
            
            <!-- Footer -->
			<!--#include file="includes/footer.asp"-->
            <!-- Footer -->	
            
        </div>
        
    	</div>
    
    </div>

	<!-- Bottom Scripts -->
	<script src="assets/js/gsap/main-gsap.js"></script>
	<script src="assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/neon-api.js"></script>
	<script src="assets/js/neon-custom.js"></script>
    <script src="assets/js/toastr.js"></script>
	<script src="assets/js/neon-chat.js"></script>
    <script src="assets/js/jquery.inputmask.bundle.min.js"></script>
	<script src="assets/js/jquery.dataTables.min.js"></script>
	<script src="assets/js/dataTables.bootstrap.js"></script>
	<script src="assets/js/select2/select2.min.js"></script>
    <script src="assets/js/fileinput.js"></script>
	<script src="assets/js/gsap/main-gsap.js"></script>
	<script src="assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/neon-api.js"></script>
	<script src="assets/js/bootstrap-switch.min.js"></script>
	<script src="assets/js/neon-chat.js"></script>
	<script src="assets/js/neon-custom.js"></script>    
	

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-67362831-3', 'auto');
  ga('send', 'pageview');
</script>

</body>
</html>
<%

else response.redirect "http://www.cafbl.cat"
end if

%>