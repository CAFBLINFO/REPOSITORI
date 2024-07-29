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
                                    <h4 class="page-title float-left">Informació general del servei</h4>
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
                                                    <a href="#servei" class="nav-link active" data-toggle="tab" aria-expanded="true">Què és el servei?</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#contractacio" class="nav-link" data-toggle="tab" aria-expanded="false">Contractació</a>
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
                                                                <h3><strong>Emissió i centralització de certificats</strong></h3>
                                                                <p>Permet obtenir certificats digitals de forma immediata, sense necessitat de desplaçaments, a través d'un panell de control intuïtiu on s'emmagatzemen tots els certificats gestionats per un mateix col·legiat.<br><br></p>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="alert alert-info">
                                                                <h3><strong>Gestió de notificacions obligatòries</strong></h3>
                                                                <p>Amb la mateixa solució integral els col·legiats podran rebre automàticament les notificacions electròniques obligatòries de tots els seus clients des d'un únic punt d'accés per complir amb la normativa legal i optimitzar el temps.<br><br></p>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <iframe src="https://player.vimeo.com/video/100087681" width="960" height="635" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> 

                                                    <br>
                                                    
                                                    Des de l'entrada en vigor de la Llei 11/2007, de 22 de juny, d'accés electrònic dels ciutadans als serveis públics, sorgeix la necessitat de dotar les entitats de l'administració, en diferents àmbits, dels mecanismes necessaris per impulsar el desenvolupament en relació amb les comunicacions telemàtiques, la signatura electrònica i els serveis a través d'Internet.<br><br>
                                                                Tanmateix, arran de la publicació de la Llei 39/2015, de l'1 d'octubre, de procediment administratiu comú, tota persona jurídica, entitat sense personalitat jurídica, així com hom que exerceixi una activitat professional per a la qual sigui menester col·legiació obligatòria,  han de relacionar-se amb les Administracions Públiques, a través de mitjans telemàtics i per això de la necessitat de disposar d'un certificat electrònic.<br><br>
                                                    Mitjançant aquest certificat electrònic es garanteix la confidencialitat, la integritat, la autenticitat i alhora la impossibilitat de repudiar un missatge electrònic. Erigint-se com un sistema d'acreditació que permet verificar la identitat de la persona amb el mateix valor que una firma manuscrita, autentificant les comunicacions generades per la persona que hagi firmat.<br><br>
                                                    
                                                    <strong>Els usos més habituals d'un certificat electrònic són:</strong><br><br>
                                                    <ul>
                                                    <li>Gestions amb les Administracions Públiques</li>
                                                    <li>Emissió i acceptació d'ofertes. Facturació i contractes electrònics</li>
                                                    <li>Així com d'altres usos empresarials com : Firmar documents i correus electrònics</li>
                                                    <li>Autentificació en Xarxa. Xifrat de documents, e-mails i tot garantint la confidencialitat d'acord amb el que disposa LOPD</li>
                                                    <li>Substitució de Login/ pasword amb el certificat d'origen</li>
                                                    </ul> 
                                                    <br>
                                                    Amb el certificat electrònic obtingut a través del CAFBL, el certificat romandrà "en el núvol", a través de https://caf.ivsign.net/certmanager/, i no caldrà descarregar-lo ni via hardware, ni en software, tot disposant de les contrasenyes amb plenes garanties de seguretat, amb l'avantatge que es podrà fer ús des de qualsevol dispositiu amb sistema operatiu Windows, en qualsevol moment, i sense les vicissituds tècniques que poden ocórrer a qualsevol dispositiu electrònic. <br><br>
                                                    Tanmateix, aquest certificat permet una delegació personal (oficial habilitat o persona de confiança del despatx), temporal (per  a un temps determinat segons es configuri), o bé parcial (només per a determinades gestions ex. notificacions amb l'Agència Tributària, impossibilitant altres Administracions Públiques), permetent el seguiment de l'activitat desenvolupada en cada certificat electrònic, mitjançant un registre d'ús i gestionant-ho a través d'un únic panell de control i administració. <br><br>
                                                    La Plataforma de Gestió de Notificacions Electròniques es podrà emprar des de qualsevol PC amb sistema operatiu Windows.</h4>


                                                </div>
                                                <div class="tab-pane" id="contractacio">

                                                    <strong>1)</strong> Emissió de Certificat de Ciutad&agrave; del CAFBL<br>
                                                    <strong>2)</strong> Emissió de Certificats de representant davant les Administracions Públiques<br>
                                                    <strong>3)</strong> Plataforma CAFirma
                                                    <ul>
                                                    <li>La plataforma CAFirma et facilitarà les gestions dels teus certificats.</li>
                                                    <li>El certificat s'ubicarà al núvol de manera segura perquè es pugui fer servir des de qualsevol dispositiu.</li>
                                                    <li>Ofereix la possibilitat de delegar l'ús del certificat de forma concreta perquè una altra persona realitzi gestions puntuals i fitades. </li>
                                                    </ul>
                                                    <strong>4)</strong> Gestor de Notificaions CAFirma
                                                    <ul>
                                                    <li>Eina que facilita la recepció de totes les Notificacions Electròniques Obligatòries de tots els clients, des d'un únic lloc.</li>
                                                    </ul>
                                                    <br>
                                                    <strong>TARIFES DE CONTRACTACIÓ I AMPLIACIÓ</strong>
                                                    <br>
                                                    <strong>1.-</strong> Emissió i custòdia del certificat propi d'AFC, de franc en contractar els certificats electrònics dels seus clients.<br>
                                                    <strong>2.-</strong> Servei <strong>“Paquete Sign”:</strong> Inclou ús de la Plataforma CAFirma, obtenció del certificat, custòdia del certificat, gestor documental per a les sol·licituds dels certificats. Preu: 23,00 euros any.<br>
                                                    <strong>3.-</strong> Servei <strong>“Paquete Premium”:</strong> Inclou l'ús de la Plataforma CAFirma, obtenció del certificat, custòdia del certificat, gestor documental per a les sol·licituds dels certificats de les comunitats. Contractant el servei CAFirma Notificacions. Preu : 20,00 euros any.<br>
                                                    <strong>4.-</strong> Servei <strong>“Gestor de Notificacions CAFirma”: </strong><br>
                                                    <strong>4.1.-</strong> Subscripció anual Llicència i Manteniment anual:<br><br>
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <td><strong>Producte</strong></td>
                                                                <td align="right"><strong>Llicència 1er any</strong></td>
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
                                                    
                                                    <strong>4.2.-</strong> Comandes d'<strong>ampliació</strong> aplicables a la opció de subscripció anual.<br><br>
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <td colspan="2"><strong>Producte</strong></td>
                                                                <td align="right"><strong>Preu dels paquets</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="2">Paquet ampliació de 10 NIF</td>
                                                                <td align="right">80,00 euros </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Paquet ampliació de 50 NIF</td>
                                                                <td align="right">340,00 euros</td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Paquet ampliació de 100 NIF</td>
                                                                <td align="right">570,00 euros</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                            
                                                    <strong>4.3- Gestor de Notificacions CAFirma:</strong> Subscripció Mensual <br><br>
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <td colspan="2"><strong>Producte</strong></td>
                                                                <td align="right"><strong>Manteniment mensual</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="2">Subscripció gestor notificacions Base (10 NIF)</td>
                                                                <td align="right">20,00 euros/mes </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Subscripció gestor notificacions Professional (100 NIF)</td>
                                                                <td align="right">41,00 euros/mes </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="2">Subscripció gestor notificacions Premium (250 NIF)</td>
                                                                <td align="right">77,00 euros/mes</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                
                                                    A aquell usuari que contracti el paquet Premium CAFirma disposarà d'un 20% de descompte a qualsevol pla de CAFirma Notificacions. El 20% no s'aplicarà al cost del manteniment anual. Tots els preus indicats  ho són sense incloure l'IVA. <br><br>

                                                </div>
                                                <div class="tab-pane" id="ciutada">

                                                    Aquí t'indicarem com sol·licitar els certificats electrònics a través del CAFBL.<br>
                                                    Per començar, s'ha d'obtenir el teu propi Certificat Electrònic de Ciutad&agrave; del CAFBL, amb independència que ja en disposis d'un propi. Serà compatible amb els certificats que tinguis si no han estat emesos per Camerfirma.<br>
                                                    <strong>L'emissió i manteniment d'aquest certificat és de franc per als col·legiats, al contractar els certificats electrònics dels teus clients.</strong><br>
                                                    <br>
                                                    <strong>A qui s'adreça? Quins beneficis té?</strong><br>
                                                    <ul>
                                                        <li>És un certificat per a persones físiques</li>
                                                        <li>És necessari estar col·legiat</li>
                                                        <li>Et permetrà comunicar-te amb les Administracions Públiques de manera àgil i còmoda</li>
                                                        <li>La plataforma CAFirma et facilitarà les gestions del teus certificats</li>
                                                        <li>&Eacute;s gratu&iuml;t, en contractar els certificats electr&ograve;nics dels teus clients</li>
                                                    </ul>
                                                
                                                    <strong>Què necessito?</strong><br>
                                                    <ul>
                                                        <li>És imprescindible tenir un adreça de correu electrònic (e-mail).</li>
                                                        <li>Emplenar el formulari (Pas 2.1)</li>
                                                        <li>Pujar DNI del Col·legiat (Pas 2.2)</li>
                                                    </ul>
                                                
                                                    <br>
                                                    
                                                    A partir d'aquí, i una vegada creat el certificat, tindràs accés al teu Panell de Control de CAFirma, a la següent URL: 
                                                    <br>
                                                    <a href="http://caf.ivsign.net" target="_blank" style="color:#03F">caf.ivsign.net</a>, tal com t'indicaran en l'e-mail que rebis juntament amb els noms d'usuari i contrasenyes pertinents.<br>
                                                    
                                                    Per tal de treballar amb el teu certificat, cal descarregar-te dues aplicacions, a l'ordinador des d'on vulguis treballar (donat que el certificat està en el núvol):<br>
                                                    <ul>
                                                        <li>A. Instal·lar aplicació Key Controller: <a href="https://product.ivsign.net/keycontroller/download" target="_blank" style="color:#03F">https://product.ivsign.net/keycontroller/download</a> (es fan servir les mateixes claus que a la Plataforma de Centralització de Claus. </li>
                                                        <li>B. Instal·lar aplicació Switch, selector de certificats: <a href="https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application" target="_blank" style="color:#03F">https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application</a> </li>
                                                    </ul>
                                                    <br> 
                                                    Si necessites ajuda per a la seva instal·lació i/o ús podràs consultar el manual a Plataforma de Centralización de claus <a href="https://ayuda.cafirma.com/" target="_blank" style="color:#03F">https://ayuda.cafirma.com/</a><br>
                                                    <strong>Telèfon d'assistencia tècnica:</strong> 96 100 22 85<br>
                                                    <strong>Correu electrònic d'assistencia tècnica:</strong> soporte@cafirma.com


                                                </div>
                                                <div class="tab-pane" id="representant">


                                                    Una vegada disposis del Certificat Electrònic de Ciutad&agrave; del CAFBL, ja podràs sol·licitar els certificats electrònics de les entitats sense personalitat jurídica que administres.<br><br>
                                                    <strong>Què necessito per sol·licitar certificat electrònic d'una COMUNITAT DE PROPIETARIS ?</strong><br>
                                                    <i>És necessari que aquesta documentació estigui signada electrònicament.</i>
                                                    <br><br>
                                                    <ul>
                                                        <li>DNI de l'Administrador de Finques.</li>
                                                        <li>NIF Comunitat de Propietaris.</li>
                                                        <li>Certificat emès per l'Administrador de Finques Col·legiat, tot especificant l'acord de les actes de nomenament del càrrec d'administrador i el de l'apoderament per a representar a la comunitat (us proposem un model), cal firmar-lo electrònicament. Expedir durant els 10 dies anteriors a la data de sol·licitud.</li>
                                                        <br>
                                                        <li><strong>En defecte del certificat, aquest pot substituir-se per:</strong><br>
                                                            <ul>
                                                                <li>Acta de nomenament de l'Administrador.</li>
                                                                <li>Acta d'Apoderament (Ha de constar la data on s'acorda en junta que se cedeixen a l'Administrador poders totals com a representant de la Comunitat davant de totes les Administracions Públiques).
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <br>
                                                    
                                                    (*) <em>Els apoderaments en Junta tindràn una validesa de 12 mesos.</em><br>
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

                                                    <strong>Què necessito per sol·licitar certificat electrònic d'una COMUNITAT DE BÉNS? </strong><br>
                                                    <i>És necessari que aquesta documentació estigui signada electrònicament.</i>
                                                    <br><br>
                                                    <ul>
                                                        <li>NIF de la persona sol·licitant;</li> 
                                                        <li>CIF de la comunitat de béns;</li>
                                                        <li>Escriptura de constitució de la Comunitat de Béns; o Estatuts; o Nota informativa del Registre de la Propietat que acrediti els comuners, amb 10 dies de validesa des de la seva emissió.</li>
                                                        <li>En relació a l'apoderament: Escollir un document entre els següents:
                                                            <ul>
                                                                <li>Poder Notarial amb poder especial per obtenir i treballar amb el certificat digital a favor de l'Administrador de Finques;</li>
                                                                <li>Còpia de l'acta/acord, adoptats per la Junta de comuners en la que consti el nomenament de l'Administrador i l'autorització explícita per obtenir el certificat de representant. N'hi ha prou amb la firma manuscrita dels comuners, i Administrador de Finques apoderat, sempre que vagi acompanyat dels seus corresponents DNI.</li>
                                                                <li>Autorització del representant (sempre que el representant estigui  prèviament habilitat mitjançant poder notarial o en estatuts) dels comuners per sol·licitar el certificat de representant, firmat pel representant dels comuners i expedit durant els 10 dies abans de la sol·licitud del certificat. Necessitarà firma manuscrita del representant i el seu DNI.</li>
                                                                <li>Poder notarial de constitució i designació del representant firmat davant de notari per tots els comuners.</li> 
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <br><br>
                                                    <strong>Què necessito per sol·licitar certificat electrònic d'una HERÈNCIA JACENT?</strong><br>
                                                    <i>És necessari que aquesta documentació estigui signada electrònicament.</i>
                                                    <br><br>
                                                    <ul>
                                                        <li>NIF de l'Herència jacent.</li>
                                                        <li>NIF de la persona sol·licitant.</li>
                                                        <li>Documents que acreditin la capacitat i vigència de la representació: Certificat  de defunció, últimes voluntats, últim testament o declaració d'hereus abintestat, poder notarial o documento firmat per tots els hereus, amb legalització de firma notarial (menys en el cas d'administrador judicial o marmessor).</li>
                                                        <li>Si el sol·licitant fos el representante legal de l'Herència Jacent, n'hi ha prou amb els seus poders i facultats d'administració, representació o bé poders especials</li>
                                                        <li>Si el sol·licitant fos un representant voluntari (persona a qui es faculta o s'habilita expressament para una actuació concreta, ex. Administrador de Finques Col·legiat), l'Agència Tributària exigeix un poder especial específic i notarial per poder sol·licitar aquest certificat. 
                                                        </li>
                                                        <li>I si fos una persona jurídica, documents que acreditin les facultats d'administració, representació o poders especials.</li>
                                                    </ul>
                                                    <br><br>
                                                    Per sol·licitar els Certificats Digitals dels teus clients haurás d'emplenar el formulari (Pas 4) i pujar la documentació pertinent (Pas 5).
                                                    <br><br>
                                                    <ul>
                                                        <li>Una vegada hagis remès tota la documentació, es verificarà i validaran les sol·licituds de certificat electrònic de cada entitat. A continuació rebràs un e-mail amb els PINS i les Claus de revocació dels certificats.</li><br>
                                                        <li>Has d'instal·lar i configurar-te els certificats, clicant el següent enllaç:<br><br>
                                                        <ul>
                                                            <li>A. Instal·lar aplicació Key Controller: <a href="https://product.ivsign.net/keycontroller/download" target="_blank">https://product.ivsign.net/keycontroller/download</a>  (es fan servir les mateixes claus que a la Plataforma de Centralització de Claus. </li>
                                                            <br>
                                                            <li>B. Instal·lar aplicació Switch, selector de certificats: <a href="https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application" target="_blank">https://firma.ivnosys.com/download/cafsign-switch/CAFSign-Switch.application</a> </li>
                                                        </ul> 
                                                        <br>
                                                            Si necessites ajuda per a la seva instal·lació i/o ús podràs consultar el manual a Plataforma de Centralización de claus <a href="https://ayuda.cafirma.com/" target="_blank">https://ayuda.cafirma.com/</a> <br><br>
                                                            <strong>Telèfon d'assistencia tècnica:</strong> 96 100 22 85<br><br>
                                                            <strong>Correu electrònic d'assistencia tècnica:</strong> soporte@cafirma.com<br>
                                                        </li>
                                                        <br>
                                                        <li>Si han contractat el Gestor de Notificacions CAFirma, es posaran en contacte amb tu.<br><br> 
                                                        Per a qualsevol incidència, en el transcurs d'aquesta sol·licitud, pots posar-te en contacte amb el nostre Departament de Certificacions Digitals, mitjançant el telèfon 934 510 202, de 8:30h a 14.00h.<br><br>

                                                        </li>
                                                    </ul>



                                                </div>
                                                <div class="tab-pane" id="revocacions">

                                                    Per a qualsevol incidència amb el Certificat, pot REVOCAR els certificats que gestiones.<br><br>
                                                    Ho pots fer en línia, a través del <a href="https://status.camerfirma.com/certificados_2010/revocar_certificado.php" target="_blank" style="color:#03F">Servei de Revocacions</a>.<br><br>
                                                    S'introdueix l'adreça de correu electrònic que aparegui en el certificat digital, el PIN de Revocacions i el motiu de l'operativa. Aquest mitjà de revocacions només és accessible pel Firmant/Subscriptor.<br><br>
                                                    O bé a través de la presència física en l'Autoritat de Registre, en horari d'atenció al públic, mostrant el DNI del Firmant/Subscriptor o sol·licitant.<br><br>

                                                    <strong>Revocacions</strong>
                                                    <br><br>
                                                    <ol>
                                                        <li> Aclariments previs. S'entendrà per revocació aquell canvi en l'estat d'un certificat motivat per la pèrdua de validesa d'aquest en funció d'alguna circumstància diferent a la de la seva caducitat. En parlar de revocació ens referirem sempre a la pèrdua de validesa definitiva i no reversible del certificat. La suspensió per la seva banda suposa una revocació amb causa de suspensió, això és, es revoca un certificat temporalment fins que es decideixi sobre l'oportunitat o no de realitzar una revocació definitiva.<br>
                                                        L'extinció de la vigència d'un certificat electrònic per causa de revocació o suspensió produirà efectes enfront de tercers des que la indicació d'aquesta extinció s'inclogui en el servei de consulta sobre la vigència dels certificats del prestador de serveis de certificació.<br>
                                                        La possibilitat de suspensió d'un certificat concret ve definida en la seva política de certificació concreta.<br>
                                                        Els certificats revocats estaran inclosos en la CRL fins a la fi de la seva validesa, en aquests casos s'eliminen de la llista de certificats revocats.
                                                        </li>
                                                        <br>
                                                        <li>Causes de revocació i documents justificatius. Les causes de revocació d'un certificat vénen definides en la seva política de certificació concreta.</li>
                                                        <br>
                                                        <strong>Com a norma general es procedirà a la revocació d'un certificat:</strong>
                                                        <br>
                                                            <ul>
                                                                <li>Circumstàncies que afecten la informació continguda en el certificat.</li>
                                                                <li>Modificació d'alguna de les dades contingudes en el certificat.</li>
                                                                <li>Descobriment que alguna de les dades aportades en la sol·licitud de certificat és incorrecta, així com l'alteració o modificació de les circumstàncies verificades per a l'expedició del certificat.</li>
                                                                <li>Descobriment que alguna de les dades contingudes en el certificat és incorrecta.</li>
                                                                <li>Inexactitud greu de les dades aportades pel sol·licitant per l'obtenció del certificat, així com la concurrència de circumstàncies que provoquin que aquestes dades, originalment incloses en el certificat, no s'adeqüen a la realitat.</li>
                                                                <li>Per resolució judicial o administrativa que ordeni.
                                                                </li>
                                                            </ul>
                                                            <br>
                                                            <strong>Circumstàncies que afecten la seguretat de les claus o del certificat: </strong>
                                                            <ul>
                                                                <li>Compromís de la clau privada o de l'infraestructura o sistemes de l'Entitat de Certificació que va emetre el certificat, sempre que afecti a la fiabilitat dels certificats emesos a partir d'aquest incident.</li>
                                                                <li>Infracció, per l'Entitat de Certificació, dels requisits previstos en els procediments de gestió de certificats, establerts en aquesta DPC.</li>
                                                                <li>Compromís o sospita de compromís de la seguretat de la clau o del certificat del subscriptor o del responsable de certificat.</li>
                                                                <li>Accés o utilització no autoritzada, per un tercer, de la clau privada del subscriptor o del responsable de certificat.</li>
                                                                <li>L'ús irregular del certificat del subscriptor o del responsable de certificat, o falta de diligència en la custòdia de la clau privada.</li>
                                                            </ul>
                                                        <br> 
                                                        <strong>Circumstàncies que afecten la seguretat del dispositiu criptogràfic</strong>
                                                            <ul>
                                                                <li>Compromís o sospita de compromís de la seguretat del dispositiu criptogràfic.</li>
                                                                <li>Pèrdua o inutilització per danys del dispositiu criptogràfic.</li>
                                                                <li>Accés no autoritzat, per un tercer, a les dades d'activació del subscriptor o del responsable de certificat Circumstàncies que afecten el subscriptor o responsable del certificat.</li>
                                                                <li>Finalització de la relació entre Entitat de Certificació i subscriptor o responsable del certificat.</li>
                                                                <li>Modificació o extinció de la relació jurídica subjacent o causa que va provocar l'emissió del certificat al subscriptor o responsable del certificat.</li>
                                                                <li>Infracció pel sol·licitant del certificat dels requisits preestablerts per a la sol·licitud d'aquest.</li>
                                                                <li>Infracció pel subscriptor o responsable del certificat, de les seves obligacions, responsabilitat i garanties, establertes en l'instrument jurídic corresponent o en aquesta Declaració de Pràctiques de Certificació.</li>
                                                                <li>La incapacitat sobrevinguda o la mort del subscriptor o responsable del certificat.</li>
                                                                <li>L'extinció de la persona jurídica subscriptora del certificat, així com la finalitat de l'autorització del subscriptor al responsable del certificat o la finalització de la relació entre subscriptor i responsable del certificat.</li>
                                                                <li>Sol·licitud del subscriptor de revocació del certificat, d'acord amb l'establert en aquesta DPC.</li>
                                                            </ul>
                                                        <br>
                                                        <strong>Altres circumstàncies</strong>
                                                        <ul>
                                                            <li>La suspensió del certificat digital per a un període superior a l'establert en aquesta DPC.</li>
                                                            <li>La finalització del servei de l’Entitat de Certificació, d'acord amb l'establert en la secció en aquesta DPC.</li>
                                                        </ul>
                                                        <br>
                                                        Per justificar la necessitat de revocació que s'al·lega s'hauran de presentar davant la AR o l'AC els documents corresponents, en funció de la causa que motiva la sol·licitud.<br>
                Els subscriptors disposen dels codis de revocació que poden usar en els serveis de revocació via Web o mitjançant SMS.
                                                        </li>
                                                        <br><br>
                                                        <li>Qui pot sol·licitar la revocació. La revocació d'un certificat podrà sol·licitar-se per:
                                                        <br><br>
                                                        <ul>
                                                            <li>El Signatari/Subscriptor</li>
                                                            <li>El Sol·licitant responsable</li>
                                                            <li>L'Entitat (a través d'un representant de la mateixa)</li>
                                                            <li>L'AR o l'AC després d'haver autenticat l'ordre de revocació</li>
                                                        </ul>
                                                        <br>
                                                        Més detalls sobre els casos particulars poden trobar-se en les polítiques de certificació concretes.   
                                                        </li>
                                                        <br>
                                                        <li>Procediment de sol·licitud de revocació. Totes les sol·licituds hauran de realitzar-se:
                                                        <br><br>
                                                        <ul>
                                                            <li>A través del Servei de Revocació ON-LINE, accedint al servei de revocació localitzat a la pàgina Web de Camerfirma <a href="https://status.camerfirma.com/certificados_2010/revocar_certificado.php" target="_blank" style="color:#03F">http://www.camerfirma.com</a> i introduint el PIN de Revocació. Mitjà de revocació accessible solament per al Signatari/Subscriptor.</li>
                                                            <li>A través de presència física a l'AR en horari d'atenció al públic mostrant el DNI del Signatari/Subscriptor o Sol·licitant.</li>
                                                        </ul>
                                                        <br>
                                                            Per als certificats de servidor segur, segell d'empresa o certificat de signatura de codi pot sol·licitar-se a través del correu des del qual es va sol·licitar l'emissió del certificat enviant la sol·licitud a <a href="mailto:soporte@camerfirma.com" target="_top"> soporte@camerfirma.com</a>. L'operador de Camerfirma confirmarà telefònicament la sol·licitud de revocació per donar-li curs.<br><br>
                                                            Camerfirma manté a la seva pàgina Web tota la informació relativa als processos de revocació dels certificats.
                                                            Quan es produeix una suspensió, Camerfirma tindrà una setmana per decidir l'estat definitiu del certificat: (revocat o actiu). En cas de no tenir en aquest termini tota la informació necessària per a la verificació i validació de la sol·licitud de revocació, Camerfirma revocarà definitivament el certificat.<br><br>
                                                            En el cas de produir-se una suspensió del certificat, s'envia un comunicat mitjançant email al 					
                                                            Signatari/Subscriptor comunicant l'hora de suspensió i la causa de la mateixa.<br><br>
                                                            L'AR rebrà un correu del sistema informant-li que s'ha produït una suspensió del certificat.<br><br>
                                                            Si finalment la suspensió no dóna lloc a la revocació definitiva i el certificat ha de ser de nou activat, el 				
                                                            Signatari/Subscriptor rebrà un correu indicant el nou estat del certificat.<br><br>
                                                            Tant el servei de gestió de les revocacions com el servei de consulta són considerats serveis crítics i així consten en el Pla de contingències o el pla de continuïtat de negoci de Camerfirma. Aquests serveis estaran disponibles les 24 hores del dia, els 7 dies de la setmana.<br><br>
                                                            En cas de fallada del sistema, o qualsevol altre factor que no estigui sota el control de Camerfirma. Camerfirma realitzarà els majors esforços per assegurar que aquests serveis no es trobin inaccessibles durant un període màxim de 24 hores.
                                                        </li>
                                                        <br><br>
                                                        <li>Període de revocació<br><br>
                                                            La decisió de revocar o no un certificat s'adoptaran en un període màxim d'una setmana.
                Durant aquest temps el certificat roman suspès, mentre es decideix si tornar a activar l'eficàcia del mateix o revocar-ho definitivament basant-se en la informació obtinguda fins a aquest moment respecte a les causes que han provocat aquesta suspensió.
                                                        </li>
                                                        <br><br>
                                                        <li>Suspensió<br>
                                                        <a href="http://www.camerfirma.com/area-de-usuario/suspension-de-certificados/" target="_blank" style="color:#03F">Clica aquí per tramitar la suspensió de certificats</a>
                                                        <br>
                                                        Veure 4.5.1
                                                        <br><br>
                                                        <a href="http://docs.camerfirma.com/publico/DocumentosWeb/politicas/PC_CAM_PF_1_1_5.pdf" target="_blank" style="color:#03F">Clica aquí per descàrrega de les <strong>CPS:</strong> Certificats Camerales de Pertinença a Entitat. </a><br>
                                                        <a href="http://docs.camerfirma.com/publico/DocumentosWeb/politicas/PC_Camerfirma_Representante_AAPP.pdf" target="_blank" style="color:#03F">Clica aquí per descàrrega de les <strong>CPS:</strong> Certificats Camerales de Representació davant les Administracions Públiques  </a>
                                                        </li>
                                                        <br>
                                                        <li>Procediment per a la sol·licitud de suspensió. La sol·licitud de suspensió es realitzarà segons el procediment descrit a l'apartat 4.5.3 d'aquesta CPS.</li>
                                                        <br>
                                                        <li>Límits del període de suspensió<br><br>
                                                        Un certificat no romandrà suspès més d'una setmana.<br><br>
                Camerfirma supervisarà mitjançant un sistema d'alertes de la plataforma de gestió de certificats que el període de suspensió marcat per les Polítiques corresponents i aquesta CPS no se sobrepassa.
                                                        </li>
                                                        <br>
                                                        <li>Requisits de comprovació de CRL's<br><br>
                                                        Els Tercers que confien han de comprovar l’estat dels certificats en els quals van a confiar, havent de comprovar en tot cas a l'última CRL emesa, que podrà descarregar-se des de la pàgina Web <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.<br><br>
                                                        Camerfirma emet CRLs signades per Camerfirma que ha emès el certificat. És possible que Camerfirma emeti si ho considera oportú CRL signades per una altra entitat de certificació diferent a l'emissora del certificat, la qual cosa es diu un CRL indirecte. En cas de produir-se aquest fet Camerfirma ho notificaria a través de la seva pàgina Web, així com els certificats necessaris per a la validació de la CRLs emeses.<br>
                                                        L'usuari o tercer de confiança haurà de comprovar que la llista de revocació és l'última emesa.
                                                        </li>
                                                        <br>
                                                        <li>Disponibilitat de comprovació on-line de la revocació<br><br>
                                                        AC proporciona un servei on-line de comprovació de revocacions via HTTP a <a href="http://www.camerfirma.com/area-de-usuario/consulta-de-certificados/" target="_blank">http://www.camerfirma.com/area-de-usuario/consulta-de-certificados/</a> també mitjançant consultes OCSP a <a href="http://ocsp.camerfirma.com" target="_blank">http://ocsp.camerfirma.com</a> . Més informació d'aquests serveis es pot trobar a <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.<br><br>
                                                        Les adreces d'accés a aquests serveis vénen referenciades en el certificat digital. Per a les CRL i ARL en l'extensió punts de distribució de CRL “CRL distribution Point” i l’adreça d’OCSP en l’extensió Accés a la Informació de l'Autoritat “Authority Information Access).<br><br>
                                                        En els certificats pot aparèixer més d'una adreça d'accés a les CRL per garantir la seva disponibilitat.<br>
                                                        El servei d'OCSP s'alimenta de les CRL emeses per les diferents autoritats de certificació a les quals dóna servei. Les dades tècniques d'accés així com els certificats de validació de les respostes OCSP es troben publicades a la Web de Camerfirma <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a> .<br><br>
                                                        Aquests serveis estaran disponibles les 24 hores del dia els 7 dies de la setmana.<br><br>
                                                        Camerfirma realitzarà tots els esforços necessaris perquè el servei mai es trobi inaccessible de forma contínua més de 24 hores, essent aquest un servei crític en les activitats de Camerfirma i per tant tractat de forma adequada en el Pla de contingències i de continuïtat de negoci.<br>
                                                        </li>
                                                        <br>
                                                        <li>Requisits de la comprovació on-line de la revocació <br><br>
                                                        Per realitzar la comprovació d'una revocació el Tercer que confia haurà de conèixer l'e-mail associat al certificat que es desitja consultar si es realitza mitjançant accés Web i, el nombre de sèrie i l'autoritat de certificació si es realitza mitjançant altres mecanismes.<br><br>
                                                        Els requisits per accedir al servei OCSP i els certificats necessaris per a la seva validació estaran actualitzats a la pàgina <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.
                                                        </li>
                                                        <br>
                                                        <li>Altres formes de divulgació d'informació de revocació disponibles<br><br>
                Els mecanismes que Camerfirma posa a la disposició dels usuaris del sistema, estaran publicats a la seva pàgina Web <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.<br><br>
                Com a exemple es presten dos serveis més de comprovació on-line de certificats: Consulta de l'estat dels certificats mitjançant Web Service segons els requeriments de l'AEAT.<br><br>
                Consulta històrica de l'estat d’un certificat. Web Service per consultar l'estat d'un certificat emès en la jerarquia JCC en una data concreta. Més informació en <a href="http://www.camerfirma.com" target="_blank">http://www.camerfirma.com</a>.
                                                        </li>
                                                    </ol>
                                                    <br>
                                                    <strong>Usos prohibits</strong>
                                                    <br>
                                                    Els certificats només podran ser emprats amb els límits i per als usos pels quals hagin estat emesos en cada cas i que vénen descrits en les polítiques de certificació corresponents.<br><br>
                                                        L'ocupació dels certificats digitals en operacions que contravenen les Polítiques de Certificació aplicables a cadascun dels Certificats, la CPS o els Contractes de l'AC amb les AR o amb els seus Signataris/Subscriptors tindrà la consideració d'usos indeguts, als efectes legals, oportuns, eximint-se per tant el CAFBL, en funció de la legislació vigent, de qualsevol responsabilitat per aquest ús indegut dels certificats que realitzi el signant o qualsevol tercer.<br><br>
                                                        Així mateix, li serà imputable al signatari qualsevol responsabilitat que pogués derivar-se de la utilització del mateix fora dels límits i condicions d’ús recollides en les Polítiques de Certificació aplicables a cadascun dels Certificats, la CPS i els contractes de l'AC amb els seus Signants, així com de qualsevol altre ús indegut del mateix derivat d’aquest apartat o que pugui ser interpretat com a tal en funció de la legislació vigent.


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