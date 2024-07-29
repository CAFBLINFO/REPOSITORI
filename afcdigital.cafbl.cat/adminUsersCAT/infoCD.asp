<!--#include file="scripts/dataaccess.asp"-->

<%
if session("CodColegiado")<>"" and session("idsecurity")="837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876")="#?�?%&@@=()+*//*-[]__��XFD^^^^^" then

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
                                    <h4 class="page-title float-left">Informaci� general del servei</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="tabs-vertical-env">

                                            <ul class="nav tabs-vertical">
                                                <li class="nav-item">
                                                    <a href="#servei" class="nav-link active" data-toggle="tab" aria-expanded="true">Qu� �s el servei?</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#contractacio" class="nav-link" data-toggle="tab" aria-expanded="false">Contractaci�</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#ciutada" class="nav-link" data-toggle="tab" aria-expanded="false">Certificat de Ciutad&agrave;</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#representant" class="nav-link" data-toggle="tab" aria-expanded="false">Certificat de Representant</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#revocacions" class="nav-link" data-toggle="tab" aria-expanded="false">Revocacions i Suspensions</a>
                                                </li>
                                            </ul>

                                            <div class="tab-content">
                                                <div class="tab-pane active" id="servei">

                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <div class="alert alert-info">
                                                                <h3><strong>Emissi� i centralitzaci� de certificats</strong></h3>
                                                                <p>Permet obtenir certificats digitals de forma immediata, sense necessitat de despla�aments, a trav�s d'un panell de control intu�tiu on s'emmagatzemen tots els certificats gestionats per un mateix col�legiat.<br><br></p>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="alert alert-info">
                                                                <h3><strong>Gesti� de notificacions obligat�ries</strong></h3>
                                                                <p>Amb la mateixa soluci� integral els col�legiats podran rebre autom�ticament les notificacions electr�niques obligat�ries de tots els seus clients des d'un �nic punt d'acc�s per complir amb la normativa legal i optimitzar el temps.<br><br></p>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <iframe src="https://player.vimeo.com/video/100087681" width="960" height="635" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> 

                                                    <br>
                                                    
                                                    Des de l'entrada en vigor de la Llei 11/2007, de 22 de juny, d'acc�s electr�nic dels ciutadans als serveis p�blics, sorgeix la necessitat de dotar les entitats de l'administraci�, en diferents �mbits, dels mecanismes necessaris per impulsar el desenvolupament en relaci� amb les comunicacions telem�tiques, la signatura electr�nica i els serveis a trav�s d'Internet.<br><br>
                                                                Tanmateix, arran de la publicaci� de la Llei 39/2015, de l'1 d'octubre, de procediment administratiu com�, tota persona jur�dica, entitat sense personalitat jur�dica, aix� com hom que exerceixi una activitat professional per a la qual sigui menester col�legiaci� obligat�ria,  han de relacionar-se amb les Administracions P�bliques, a trav�s de mitjans telem�tics i per aix� de la necessitat de disposar d'un certificat electr�nic.<br><br>
                                                    Mitjan�ant aquest certificat electr�nic es garanteix la confidencialitat, la integritat, la autenticitat i alhora la impossibilitat de repudiar un missatge electr�nic. Erigint-se com un sistema d'acreditaci� que permet verificar la identitat de la persona amb el mateix valor que una firma manuscrita, autentificant les comunicacions generades per la persona que hagi firmat.<br><br>
                                                    
                                                    <strong>Els usos m�s habituals d'un certificat electr�nic s�n:</strong><br><br>
                                                    <ul>
                                                    <li>Gestions amb les Administracions P�bliques</li>
                                                    <li>Emissi� i acceptaci� d'ofertes. Facturaci� i contractes electr�nics</li>
                                                    <li>Aix� com d'altres usos empresarials com : Firmar documents i correus electr�nics</li>
                                                    <li>Autentificaci� en Xarxa. Xifrat de documents, e-mails i tot garantint la confidencialitat d'acord amb el que disposa LOPD</li>
                                                    <li>Substituci� de Login/ pasword amb el certificat d'origen</li>
                                                    </ul> 
                                                    <br>
                                                    Amb el certificat electr�nic obtingut a trav�s del CAFBL, el certificat romandr� "en el n�vol", a trav�s de https://caf.ivsign.net/certmanager/, i no caldr� descarregar-lo ni via hardware, ni en software, tot disposant de les contrasenyes amb plenes garanties de seguretat, amb l'avantatge que es podr� fer �s des de qualsevol dispositiu amb sistema operatiu Windows, en qualsevol moment, i sense les vicissituds t�cniques que poden oc�rrer a qualsevol dispositiu electr�nic. <br><br>
                                                    Tanmateix, aquest certificat permet una delegaci� personal (oficial habilitat o persona de confian�a del despatx), temporal (per  a un temps determinat segons es configuri), o b� parcial (nom�s per a determinades gestions ex. notificacions amb l'Ag�ncia Tribut�ria, impossibilitant altres Administracions P�bliques), permetent el seguiment de l'activitat desenvolupada en cada certificat electr�nic, mitjan�ant un registre d'�s i gestionant-ho a trav�s d'un �nic panell de control i administraci�. <br><br>
                                                    La Plataforma de Gesti� de Notificacions Electr�niques es podr� emprar des de qualsevol PC amb sistema operatiu Windows.</h4>


                                                </div>
                                                <div class="tab-pane" id="contractacio">

                                                    <strong>1)</strong> Emissi� de Certificat de Ciutad&agrave; del CAFBL<br>
                                                    <strong>2)</strong> Emissi� de Certificats de representant davant les Administracions P�bliques<br>
                                                    <strong>3)</strong> Plataforma CAFirma
                                                    <ul>
                                                    <li>La plataforma CAFirma et facilitar� les gestions dels teus certificats.</li>
                                                    <li>El certificat s'ubicar� al n�vol de manera segura perqu� es pugui fer servir des de qualsevol dispositiu.</li>
                                                    <li>Ofereix la possibilitat de delegar l'�s del certificat de forma concreta perqu� una altra persona realitzi gestions puntuals i fitades. </li>
                                                    </ul>
                                                    <strong>4)</strong> Gestor de Notificaions CAFirma
                                                    <ul>
                                                    <li>Eina que facilita la recepci� de totes les Notificacions Electr�niques Obligat�ries de tots els clients, des d'un �nic lloc.</li>
                                                    </ul>
                                                    <br>
                                                    <strong>TARIFES DE CONTRACTACI� I AMPLIACI�</strong>
                                                    <br>
                                                    <strong>1.-</strong> Emissi� i cust�dia del certificat propi d'AFC, de franc en contractar els certificats electr�nics dels seus clients.<br>
                                                    <strong>2.-</strong> Servei <strong>�Paquete Sign�:</strong> Inclou �s de la Plataforma CAFirma, obtenci� del certificat, cust�dia del certificat, gestor documental per a les sol�licituds dels certificats. Preu: 23,00 euros any.<br>
                                                    <strong>3.-</strong> Servei <strong>�Paquete Premium�:</strong> Inclou l'�s de la Plataforma CAFirma, obtenci� del certificat, cust�dia del certificat, gestor documental per a les sol�licituds dels certificats de les comunitats. Contractant el servei CAFirma Notificacions. Preu : 20,00 euros any.<br>
                                                    <strong>4.-</strong> Servei <strong>�Gestor de Notificacions CAFirma�: </strong><br>
                                                    <strong>4.1.-</strong> Subscripci� anual Llic�ncia i Manteniment anual:<br><br>
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <td><strong>Producte</strong></td>
                                                                <td align="right"><strong>Llic�ncia 1er any</strong></td>
                                                                <td align="right"><strong>Manteniment 2on any i Successius</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Gestor Notificacions BASE (10 NIF)</td>
                                                                <td align="right">480,00 euros</td>
                                                                <td align="right">192,00 euros</td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td>Gestor Notificacions BASE+ (50 NIF)</td>
                                                                <td align="right">720,00 euros</td>
                                                                <td align="right">288,00 euros </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td>Gestor Notificacions PROFESSIONAL (100 NIF)</td>
                                                                <td align="right">960,00 euros </td>
                                                                <td align="right">384,00 euros</td>
                                                            </tr>
                                                            <tr>
                                                                <td>CAFirma PREMIUM (250 NIF)</td>
                                                                <td align="right">1920,00 euros</td>
                                                                <td align="right">768,00 euros</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    
                                                    <strong>4.2.-</strong> Comandes d'<strong>ampliaci�</strong> aplicables a la opci� de subscripci� anual.<br><br>
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <td colspan="2"><strong>Producte</strong></td>
                                                                <td align="right"><strong>Preu dels paquets</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="2">Paquet ampliaci� de 10 NIF</td>
                                                                <td align="right">80,00 euros </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Paquet ampliaci� de 50 NIF</td>
                                                                <td align="right">340,00 euros</td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Paquet ampliaci� de 100 NIF</td>
                                                                <td align="right">570,00 euros</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                            
                                                    <strong>4.3- Gestor de Notificacions CAFirma:</strong> Subscripci� Mensual <br><br>
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <td colspan="2"><strong>Producte</strong></td>
                                                                <td align="right"><strong>Manteniment mensual</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="2">Subscripci� gestor notificacions Base (10 NIF)</td>
                                                                <td align="right">20,00 euros/mes </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Subscripci� gestor notificacions Professional (100 NIF)</td>
                                                                <td align="right">41,00 euros/mes </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Subscripci� gestor notificacions Premium (250 NIF)</td>
                                                                <td align="right">77,00 euros/mes</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                
                                                    A aquell usuari que contracti el paquet Premium CAFirma disposar� d'un 20% de descompte a qualsevol pla de CAFirma Notificacions. El 20% no s'aplicar� al cost del manteniment anual. Tots els preus indicats  ho s�n sense incloure l'IVA. <br><br>

                                                </div>
                                                <div class="tab-pane" id="ciutada">

                                                    Aqu� t'indicarem com sol�licitar els certificats electr�nics a trav�s del CAFBL.<br>
                                                    Per comen�ar, s'ha d'obtenir el teu propi Certificat Electr�nic de Ciutad&agrave; del CAFBL, amb independ�ncia que ja en disposis d'un propi. Ser� compatible amb els certificats que tinguis si no han estat emesos per Camerfirma.<br>
                                                    <strong>L'emissi� i manteniment d'aquest certificat �s de franc per als col�legiats, al contractar els certificats electr�nics dels teus clients.</strong><br>
                                                    <br>
                                                    <strong>A qui s'adre�a? Quins beneficis t�?</strong><br>
                                                    <ul>
                                                        <li>�s un certificat per a persones f�siques</li>
                                                        <li>�s necessari estar col�legiat</li>
                                                        <li>Et permetr� comunicar-te amb les Administracions P�bliques de manera �gil i c�moda</li>
                                                        <li>La plataforma CAFirma et facilitar� les gestions del teus certificats</li>
                                                        <li>&Eacute;s gratu&iuml;t, en contractar els certificats electr&ograve;nics dels teus clients</li>
                                                    </ul>
                                                
                                                    <strong>Qu� necessito?</strong><br>
                                                    <ul>
                                                        <li>�s imprescindible tenir un adre�a de correu electr�nic (e-mail).</li>
                                                        <li>Emplenar el formulari (Pas 2.1)</li>
                                                        <li>Pujar DNI del Col�legiat (Pas 2.2)</li>
                                                    </ul>
                                                
                                                    <br>
                                                    
                                                    A partir d'aqu�, i una vegada creat el certificat, tindr�s acc�s al teu Panell de Control de CAFirma, a la seg�ent URL: 
                                                    <br>
                                                    <a href="http://caf.ivsign.net" target="_blank" style="color:#03F">caf.ivsign.net</a>, tal com t'indicaran en l'e-mail que rebis juntament amb els noms d'usuari i contrasenyes pertinents.<br>
                                                    
                                                    Per tal de treballar amb el teu certificat, cal descarregar-te dues aplicacions, a l'ordinador des d'on vulguis treballar (donat que el certificat est� en el n�vol):<br>
                                                    <ul>
                                                        <li>A. Instal�lar aplicaci� Key Controller: <a href="https://product.ivsign.net/keycontroller/download" target="_blank" style="color:#03F">https://product.ivsign.net/keycontroller/download</a> (es fan servir les mateixes claus que a la Plataforma de Centralitzaci� de Claus. </li>
                                                        <li>B. Instal�lar aplicaci� Switch, selector de certificats: <a href="https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application" target="_blank" style="color:#03F">https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application</a> </li>
                                                    </ul>
                                                    <br> 
                                                    Si necessites ajuda per a la seva instal�laci� i/o �s podr�s consultar el manual a Plataforma de Centralizaci�n de claus <a href="https://ayuda.cafirma.com/" target="_blank" style="color:#03F">https://ayuda.cafirma.com/</a><br>
                                                    <strong>Tel�fon d'assistencia t�cnica:</strong> 96 100 22 85<br>
                                                    <strong>Correu electr�nic d'assistencia t�cnica:</strong> soporte@cafirma.com


                                                </div>
                                                <div class="tab-pane" id="representant">


                                                    Una vegada disposis del Certificat Electr�nic de Ciutad&agrave; del CAFBL, ja podr�s sol�licitar els certificats electr�nics de les entitats sense personalitat jur�dica que administres.<br><br>
                                                    <strong>Qu� necessito per sol�licitar certificat electr�nic d'una COMUNITAT DE PROPIETARIS ?</strong><br>
                                                    <i>�s necessari que aquesta documentaci� estigui signada electr�nicament.</i>
                                                    <br><br>
                                                    <ul>
                                                        <li>DNI de l'Administrador de Finques.</li>
                                                        <li>NIF Comunitat de Propietaris.</li>
                                                        <li>Certificat em�s per l'Administrador de Finques Col�legiat, tot especificant l'acord de les actes de nomenament del c�rrec d'administrador i el de l'apoderament per a representar a la comunitat (us proposem un model), cal firmar-lo electr�nicament. Expedir durant els 10 dies anteriors a la data de sol�licitud.</li>
                                                        <br>
                                                        <li><strong>En defecte del certificat, aquest pot substituir-se per:</strong><br>
                                                            <ul>
                                                                <li>Acta de nomenament de l'Administrador.</li>
                                                                <li>Acta d'Apoderament (Ha de constar la data on s'acorda en junta que se cedeixen a l'Administrador poders totals com a representant de la Comunitat davant de totes les Administracions P�bliques).
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <br>
                                                    
                                                    (*) <em>Els apoderaments en Junta tindr�n una validesa de 12 mesos.</em><br>
                                                    <br>
                                                    
                                                    <div class="row">
                                                    
                                                        <div class="col-sm-6">
                                                            <a href="http://www.cafbl.cat/pdfs/Model_certificat_CD.pdf" target="_blank">
                                                                <div class="alert alert-info">
                                                                        <h3>Model certificat de contingut d'actes</h3>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <a href="http://www.cafbl.cat/pdfs/Model_apoderament_CD.pdf" target="_blank">
                                                                <div class="alert alert-info">
                                                                        <h3>Model acord apoderament<br><br></h3>
                                                                </div>
                                                            </a>
                                                        </div>

                                                    </div>

                                                    <br>

                                                    <strong>Qu� necessito per sol�licitar certificat electr�nic d'una COMUNITAT DE B�NS? </strong><br>
                                                    <i>�s necessari que aquesta documentaci� estigui signada electr�nicament.</i>
                                                    <br><br>
                                                    <ul>
                                                        <li>NIF de la persona sol�licitant;</li> 
                                                        <li>CIF de la comunitat de b�ns;</li>
                                                        <li>Escriptura de constituci� de la Comunitat de B�ns; o Estatuts; o Nota informativa del Registre de la Propietat que acrediti els comuners, amb 10 dies de validesa des de la seva emissi�.</li>
                                                        <li>En relaci� a l'apoderament: Escollir un document entre els seg�ents:
                                                            <ul>
                                                                <li>Poder Notarial amb poder especial per obtenir i treballar amb el certificat digital a favor de l'Administrador de Finques;</li>
                                                                <li>C�pia de l'acta/acord, adoptats per la Junta de comuners en la que consti el nomenament de l'Administrador i l'autoritzaci� expl�cita per obtenir el certificat de representant. N'hi ha prou amb la firma manuscrita dels comuners, i Administrador de Finques apoderat, sempre que vagi acompanyat dels seus corresponents DNI.</li>
                                                                <li>Autoritzaci� del representant (sempre que el representant estigui  pr�viament habilitat mitjan�ant poder notarial o en estatuts) dels comuners per sol�licitar el certificat de representant, firmat pel representant dels comuners i expedit durant els 10 dies abans de la sol�licitud del certificat. Necessitar� firma manuscrita del representant i el seu DNI.</li>
                                                                <li>Poder notarial de constituci� i designaci� del representant firmat davant de notari per tots els comuners.</li> 
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <br><br>
                                                    <strong>Qu� necessito per sol�licitar certificat electr�nic d'una HER�NCIA JACENT?</strong><br>
                                                    <i>�s necessari que aquesta documentaci� estigui signada electr�nicament.</i>
                                                    <br><br>
                                                    <ul>
                                                        <li>NIF de l'Her�ncia jacent.</li>
                                                        <li>NIF de la persona sol�licitant.</li>
                                                        <li>Documents que acreditin la capacitat i vig�ncia de la representaci�: Certificat  de defunci�, �ltimes voluntats, �ltim testament o declaraci� d'hereus abintestat, poder notarial o documento firmat per tots els hereus, amb legalitzaci� de firma notarial (menys en el cas d'administrador judicial o marmessor).</li>
                                                        <li>Si el sol�licitant fos el representante legal de l'Her�ncia Jacent, n'hi ha prou amb els seus poders i facultats d'administraci�, representaci� o b� poders especials</li>
                                                        <li>Si el sol�licitant fos un representant voluntari (persona a qui es faculta o s'habilita expressament para una actuaci� concreta, ex. Administrador de Finques Col�legiat), l'Ag�ncia Tribut�ria exigeix un poder especial espec�fic i notarial per poder sol�licitar aquest certificat. 
                                                        </li>
                                                        <li>I si fos una persona jur�dica, documents que acreditin les facultats d'administraci�, representaci� o poders especials.</li>
                                                    </ul>
                                                    <br><br>
                                                    Per sol�licitar els Certificats Digitals dels teus clients haur�s d'emplenar el formulari (Pas 4) i pujar la documentaci� pertinent (Pas 5).
                                                    <br><br>
                                                    <ul>
                                                        <li>Una vegada hagis rem�s tota la documentaci�, es verificar� i validaran les sol�licituds de certificat electr�nic de cada entitat. A continuaci� rebr�s un e-mail amb els PINS i les Claus de revocaci� dels certificats.</li><br>
                                                        <li>Has d'instal�lar i configurar-te els certificats, clicant el seg�ent enlla�:<br><br>
                                                        <ul>
                                                            <li>A. Instal�lar aplicaci� Key Controller: <a href="https://product.ivsign.net/keycontroller/download" target="_blank">https://product.ivsign.net/keycontroller/download</a>  (es fan servir les mateixes claus que a la Plataforma de Centralitzaci� de Claus. </li>
                                                            <br>
                                                            <li>B. Instal�lar aplicaci� Switch, selector de certificats: <a href="https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application" target="_blank">https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application</a> </li>
                                                        </ul> 
                                                        <br>
                                                            Si necessites ajuda per a la seva instal�laci� i/o �s podr�s consultar el manual a Plataforma de Centralizaci�n de claus <a href="https://ayuda.cafirma.com/" target="_blank">https://ayuda.cafirma.com/</a> <br><br>
                                                            <strong>Tel�fon d'assistencia t�cnica:</strong> 96 100 22 85<br><br>
                                                            <strong>Correu electr�nic d'assistencia t�cnica:</strong> soporte@cafirma.com<br>
                                                        </li>
                                                        <br>
                                                        <li>Si han contractat el Gestor de Notificacions CAFirma, es posaran en contacte amb tu.<br><br> 
                                                        Per a qualsevol incid�ncia, en el transcurs d'aquesta sol�licitud, pots posar-te en contacte amb el nostre Departament de Certificacions Digitals, mitjan�ant el tel�fon 934 510 202, de 8:30h a 14.00h.<br><br>

                                                        </li>
                                                    </ul>



                                                </div>
                                                <div class="tab-pane" id="revocacions">

                                                    Per a qualsevol incid�ncia amb el Certificat, pot REVOCAR els certificats que gestiones.<br><br>
                                                    Ho pots fer en l�nia, a trav�s del <a href="https://status.camerfirma.com/certificados_2010/revocar_certificado.php" target="_blank" style="color:#03F">Servei de Revocacions</a>.<br><br>
                                                    S'introdueix l'adre�a de correu electr�nic que aparegui en el certificat digital, el PIN de Revocacions i el motiu de l'operativa. Aquest mitj� de revocacions nom�s �s accessible pel Firmant/Subscriptor.<br><br>
                                                    O b� a trav�s de la pres�ncia f�sica en l'Autoritat de Registre, en horari d'atenci� al p�blic, mostrant el DNI del Firmant/Subscriptor o sol�licitant.<br><br>

                                                    <strong>Revocacions</strong>
                                                    <br><br>
                                                    <ol>
                                                        <li> Aclariments previs. S'entendr� per revocaci� aquell canvi en l'estat d'un certificat motivat per la p�rdua de validesa d'aquest en funci� d'alguna circumst�ncia diferent a la de la seva caducitat. En parlar de revocaci� ens referirem sempre a la p�rdua de validesa definitiva i no reversible del certificat. La suspensi� per la seva banda suposa una revocaci� amb causa de suspensi�, aix� �s, es revoca un certificat temporalment fins que es decideixi sobre l'oportunitat o no de realitzar una revocaci� definitiva.<br>
                                                        L'extinci� de la vig�ncia d'un certificat electr�nic per causa de revocaci� o suspensi� produir� efectes enfront de tercers des que la indicaci� d'aquesta extinci� s'inclogui en el servei de consulta sobre la vig�ncia dels certificats del prestador de serveis de certificaci�.<br>
                                                        La possibilitat de suspensi� d'un certificat concret ve definida en la seva pol�tica de certificaci� concreta.<br>
                                                        Els certificats revocats estaran inclosos en la CRL fins a la fi de la seva validesa, en aquests casos s'eliminen de la llista de certificats revocats.
                                                        </li>
                                                        <br>
                                                        <li>Causes de revocaci� i documents justificatius. Les causes de revocaci� d'un certificat v�nen definides en la seva pol�tica de certificaci� concreta.</li>
                                                        <br>
                                                        <strong>Com a norma general es procedir� a la revocaci� d'un certificat:</strong>
                                                        <br>
                                                            <ul>
                                                                <li>Circumst�ncies que afecten la informaci� continguda en el certificat.</li>
                                                                <li>Modificaci� d'alguna de les dades contingudes en el certificat.</li>
                                                                <li>Descobriment que alguna de les dades aportades en la sol�licitud de certificat �s incorrecta, aix� com l'alteraci� o modificaci� de les circumst�ncies verificades per a l'expedici� del certificat.</li>
                                                                <li>Descobriment que alguna de les dades contingudes en el certificat �s incorrecta.</li>
                                                                <li>Inexactitud greu de les dades aportades pel sol�licitant per l'obtenci� del certificat, aix� com la concurr�ncia de circumst�ncies que provoquin que aquestes dades, originalment incloses en el certificat, no s'adeq�en a la realitat.</li>
                                                                <li>Per resoluci� judicial o administrativa que ordeni.
                                                                </li>
                                                            </ul>
                                                            <br>
                                                            <strong>Circumst�ncies que afecten la seguretat de les claus o del certificat: </strong>
                                                            <ul>
                                                                <li>Comprom�s de la clau privada o de l'infraestructura o sistemes de l'Entitat de Certificaci� que va emetre el certificat, sempre que afecti a la fiabilitat dels certificats emesos a partir d'aquest incident.</li>
                                                                <li>Infracci�, per l'Entitat de Certificaci�, dels requisits previstos en els procediments de gesti� de certificats, establerts en aquesta DPC.</li>
                                                                <li>Comprom�s o sospita de comprom�s de la seguretat de la clau o del certificat del subscriptor o del responsable de certificat.</li>
                                                                <li>Acc�s o utilitzaci� no autoritzada, per un tercer, de la clau privada del subscriptor o del responsable de certificat.</li>
                                                                <li>L'�s irregular del certificat del subscriptor o del responsable de certificat, o falta de dilig�ncia en la cust�dia de la clau privada.</li>
                                                            </ul>
                                                        <br> 
                                                        <strong>Circumst�ncies que afecten la seguretat del dispositiu criptogr�fic</strong>
                                                            <ul>
                                                                <li>Comprom�s o sospita de comprom�s de la seguretat del dispositiu criptogr�fic.</li>
                                                                <li>P�rdua o inutilitzaci� per danys del dispositiu criptogr�fic.</li>
                                                                <li>Acc�s no autoritzat, per un tercer, a les dades d'activaci� del subscriptor o del responsable de certificat Circumst�ncies que afecten el subscriptor o responsable del certificat.</li>
                                                                <li>Finalitzaci� de la relaci� entre Entitat de Certificaci� i subscriptor o responsable del certificat.</li>
                                                                <li>Modificaci� o extinci� de la relaci� jur�dica subjacent o causa que va provocar l'emissi� del certificat al subscriptor o responsable del certificat.</li>
                                                                <li>Infracci� pel sol�licitant del certificat dels requisits preestablerts per a la sol�licitud d'aquest.</li>
                                                                <li>Infracci� pel subscriptor o responsable del certificat, de les seves obligacions, responsabilitat i garanties, establertes en l'instrument jur�dic corresponent o en aquesta Declaraci� de Pr�ctiques de Certificaci�.</li>
                                                                <li>La incapacitat sobrevinguda o la mort del subscriptor o responsable del certificat.</li>
                                                                <li>L'extinci� de la persona jur�dica subscriptora del certificat, aix� com la finalitat de l'autoritzaci� del subscriptor al responsable del certificat o la finalitzaci� de la relaci� entre subscriptor i responsable del certificat.</li>
                                                                <li>Sol�licitud del subscriptor de revocaci� del certificat, d'acord amb l'establert en aquesta DPC.</li>
                                                            </ul>
                                                        <br>
                                                        <strong>Altres circumst�ncies</strong>
                                                        <ul>
                                                            <li>La suspensi� del certificat digital per a un per�ode superior a l'establert en aquesta DPC.</li>
                                                            <li>La finalitzaci� del servei de l�Entitat de Certificaci�, d'acord amb l'establert en la secci� en aquesta DPC.</li>
                                                        </ul>
                                                        <br>
                                                        Per justificar la necessitat de revocaci� que s'al�lega s'hauran de presentar davant la AR o l'AC els documents corresponents, en funci� de la causa que motiva la sol�licitud.<br>
                Els subscriptors disposen dels codis de revocaci� que poden usar en els serveis de revocaci� via Web o mitjan�ant SMS.
                                                        </li>
                                                        <br><br>
                                                        <li>Qui pot sol�licitar la revocaci�. La revocaci� d'un certificat podr� sol�licitar-se per:
                                                        <br><br>
                                                        <ul>
                                                            <li>El Signatari/Subscriptor</li>
                                                            <li>El Sol�licitant responsable</li>
                                                            <li>L'Entitat (a trav�s d'un representant de la mateixa)</li>
                                                            <li>L'AR o l'AC despr�s d'haver autenticat l'ordre de revocaci�</li>
                                                        </ul>
                                                        <br>
                                                        M�s detalls sobre els casos particulars poden trobar-se en les pol�tiques de certificaci� concretes.   
                                                        </li>
                                                        <br>
                                                        <li>Procediment de sol�licitud de revocaci�. Totes les sol�licituds hauran de realitzar-se:
                                                        <br><br>
                                                        <ul>
                                                            <li>A trav�s del Servei de Revocaci� ON-LINE, accedint al servei de revocaci� localitzat a la p�gina Web de Camerfirma <a href="https://status.camerfirma.com/certificados_2010/revocar_certificado.php" target="_blank" style="color:#03F">http://www.camerfirma.com</a> i introduint el PIN de Revocaci�. Mitj� de revocaci� accessible solament per al Signatari/Subscriptor.</li>
                                                            <li>A trav�s de pres�ncia f�sica a l'AR en horari d'atenci� al p�blic mostrant el DNI del Signatari/Subscriptor o Sol�licitant.</li>
                                                        </ul>
                                                        <br>
                                                            Per als certificats de servidor segur, segell d'empresa o certificat de signatura de codi pot sol�licitar-se a trav�s del correu des del qual es va sol�licitar l'emissi� del certificat enviant la sol�licitud a <a href="mailto:soporte@camerfirma.com" target="_top"> soporte@camerfirma.com</a>. L'operador de Camerfirma confirmar� telef�nicament la sol�licitud de revocaci� per donar-li curs.<br><br>
                                                            Camerfirma mant� a la seva p�gina Web tota la informaci� relativa als processos de revocaci� dels certificats.
                                                            Quan es produeix una suspensi�, Camerfirma tindr� una setmana per decidir l'estat definitiu del certificat: (revocat o actiu). En cas de no tenir en aquest termini tota la informaci� necess�ria per a la verificaci� i validaci� de la sol�licitud de revocaci�, Camerfirma revocar� definitivament el certificat.<br><br>
                                                            En el cas de produir-se una suspensi� del certificat, s'envia un comunicat mitjan�ant email al 					
                                                            Signatari/Subscriptor comunicant l'hora de suspensi� i la causa de la mateixa.<br><br>
                                                            L'AR rebr� un correu del sistema informant-li que s'ha produ�t una suspensi� del certificat.<br><br>
                                                            Si finalment la suspensi� no d�na lloc a la revocaci� definitiva i el certificat ha de ser de nou activat, el 				
                                                            Signatari/Subscriptor rebr� un correu indicant el nou estat del certificat.<br><br>
                                                            Tant el servei de gesti� de les revocacions com el servei de consulta s�n considerats serveis cr�tics i aix� consten en el Pla de conting�ncies o el pla de continu�tat de negoci de Camerfirma. Aquests serveis estaran disponibles les 24 hores del dia, els 7 dies de la setmana.<br><br>
                                                            En cas de fallada del sistema, o qualsevol altre factor que no estigui sota el control de Camerfirma. Camerfirma realitzar� els majors esfor�os per assegurar que aquests serveis no es trobin inaccessibles durant un per�ode m�xim de 24 hores.
                                                        </li>
                                                        <br><br>
                                                        <li>Per�ode de revocaci�<br><br>
                                                            La decisi� de revocar o no un certificat s'adoptaran en un per�ode m�xim d'una setmana.
                Durant aquest temps el certificat roman susp�s, mentre es decideix si tornar a activar l'efic�cia del mateix o revocar-ho definitivament basant-se en la informaci� obtinguda fins a aquest moment respecte a les causes que han provocat aquesta suspensi�.
                                                        </li>
                                                        <br><br>
                                                        <li>Suspensi�<br>
                                                        <a href="http://www.camerfirma.com/area-de-usuario/suspension-de-certificados/" target="_blank" style="color:#03F">Clica aqu� per tramitar la suspensi� de certificats</a>
                                                        <br>
                                                        Veure 4.5.1
                                                        <br><br>
                                                        <a href="http://docs.camerfirma.com/publico/DocumentosWeb/politicas/PC_CAM_PF_1_1_5.pdf" target="_blank" style="color:#03F">Clica aqu� per desc�rrega de les <strong>CPS:</strong> Certificats Camerales de Pertinen�a a Entitat. </a><br>
                                                        <a href="http://docs.camerfirma.com/publico/DocumentosWeb/politicas/PC_Camerfirma_Representante_AAPP.pdf" target="_blank" style="color:#03F">Clica aqu� per desc�rrega de les <strong>CPS:</strong> Certificats Camerales de Representaci� davant les Administracions P�bliques  </a>
                                                        </li>
                                                        <br>
                                                        <li>Procediment per a la sol�licitud de suspensi�. La sol�licitud de suspensi� es realitzar� segons el procediment descrit a l'apartat 4.5.3 d'aquesta CPS.</li>
                                                        <br>
                                                        <li>L�mits del per�ode de suspensi�<br><br>
                                                        Un certificat no romandr� susp�s m�s d'una setmana.<br><br>
                Camerfirma supervisar� mitjan�ant un sistema d'alertes de la plataforma de gesti� de certificats que el per�ode de suspensi� marcat per les Pol�tiques corresponents i aquesta CPS no se sobrepassa.
                                                        </li>
                                                        <br>
                                                        <li>Requisits de comprovaci� de CRL's<br><br>
                                                        Els Tercers que confien han de comprovar l�estat dels certificats en els quals van a confiar, havent de comprovar en tot cas a l'�ltima CRL emesa, que podr� descarregar-se des de la p�gina Web <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.<br><br>
                                                        Camerfirma emet CRLs signades per Camerfirma que ha em�s el certificat. �s possible que Camerfirma emeti si ho considera oport� CRL signades per una altra entitat de certificaci� diferent a l'emissora del certificat, la qual cosa es diu un CRL indirecte. En cas de produir-se aquest fet Camerfirma ho notificaria a trav�s de la seva p�gina Web, aix� com els certificats necessaris per a la validaci� de la CRLs emeses.<br>
                                                        L'usuari o tercer de confian�a haur� de comprovar que la llista de revocaci� �s l'�ltima emesa.
                                                        </li>
                                                        <br>
                                                        <li>Disponibilitat de comprovaci� on-line de la revocaci�<br><br>
                                                        AC proporciona un servei on-line de comprovaci� de revocacions via HTTP a <a href="http://www.camerfirma.com/area-de-usuario/consulta-de-certificados/" target="_blank">http://www.camerfirma.com/area-de-usuario/consulta-de-certificados/</a> tamb� mitjan�ant consultes OCSP a <a href="http://ocsp.camerfirma.com" target="_blank">http://ocsp.camerfirma.com</a> . M�s informaci� d'aquests serveis es pot trobar a <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.<br><br>
                                                        Les adreces d'acc�s a aquests serveis v�nen referenciades en el certificat digital. Per a les CRL i ARL en l'extensi� punts de distribuci� de CRL �CRL distribution Point� i l�adre�a d�OCSP en l�extensi� Acc�s a la Informaci� de l'Autoritat �Authority Information Access).<br><br>
                                                        En els certificats pot apar�ixer m�s d'una adre�a d'acc�s a les CRL per garantir la seva disponibilitat.<br>
                                                        El servei d'OCSP s'alimenta de les CRL emeses per les diferents autoritats de certificaci� a les quals d�na servei. Les dades t�cniques d'acc�s aix� com els certificats de validaci� de les respostes OCSP es troben publicades a la Web de Camerfirma <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a> .<br><br>
                                                        Aquests serveis estaran disponibles les 24 hores del dia els 7 dies de la setmana.<br><br>
                                                        Camerfirma realitzar� tots els esfor�os necessaris perqu� el servei mai es trobi inaccessible de forma cont�nua m�s de 24 hores, essent aquest un servei cr�tic en les activitats de Camerfirma i per tant tractat de forma adequada en el Pla de conting�ncies i de continu�tat de negoci.<br>
                                                        </li>
                                                        <br>
                                                        <li>Requisits de la comprovaci� on-line de la revocaci� <br><br>
                                                        Per realitzar la comprovaci� d'una revocaci� el Tercer que confia haur� de con�ixer l'e-mail associat al certificat que es desitja consultar si es realitza mitjan�ant acc�s Web i, el nombre de s�rie i l'autoritat de certificaci� si es realitza mitjan�ant altres mecanismes.<br><br>
                                                        Els requisits per accedir al servei OCSP i els certificats necessaris per a la seva validaci� estaran actualitzats a la p�gina <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.
                                                        </li>
                                                        <br>
                                                        <li>Altres formes de divulgaci� d'informaci� de revocaci� disponibles<br><br>
                Els mecanismes que Camerfirma posa a la disposici� dels usuaris del sistema, estaran publicats a la seva p�gina Web <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.<br><br>
                Com a exemple es presten dos serveis m�s de comprovaci� on-line de certificats: Consulta de l'estat dels certificats mitjan�ant Web Service segons els requeriments de l'AEAT.<br><br>
                Consulta hist�rica de l'estat d�un certificat. Web Service per consultar l'estat d'un certificat em�s en la jerarquia JCC en una data concreta. M�s informaci� en <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.
                                                        </li>
                                                    </ol>
                                                    <br>
                                                    <strong>Usos prohibits</strong>
                                                    <br>
                                                    Els certificats nom�s podran ser emprats amb els l�mits i per als usos pels quals hagin estat emesos en cada cas i que v�nen descrits en les pol�tiques de certificaci� corresponents.<br><br>
                                                        L'ocupaci� dels certificats digitals en operacions que contravenen les Pol�tiques de Certificaci� aplicables a cadascun dels Certificats, la CPS o els Contractes de l'AC amb les AR o amb els seus Signataris/Subscriptors tindr� la consideraci� d'usos indeguts, als efectes legals, oportuns, eximint-se per tant el CAFBL, en funci� de la legislaci� vigent, de qualsevol responsabilitat per aquest �s indegut dels certificats que realitzi el signant o qualsevol tercer.<br><br>
                                                        Aix� mateix, li ser� imputable al signatari qualsevol responsabilitat que pogu�s derivar-se de la utilitzaci� del mateix fora dels l�mits i condicions d��s recollides en les Pol�tiques de Certificaci� aplicables a cadascun dels Certificats, la CPS i els contractes de l'AC amb els seus Signants, aix� com de qualsevol altre �s indegut del mateix derivat d�aquest apartat o que pugui ser interpretat com a tal en funci� de la legislaci� vigent.


                                                </div>                                                
                                            </div>
                                        </div>



                                    </div>
                                </div>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer">
                    2019 � CAFBL - cafbl.cat
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