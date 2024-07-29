<%
' Revisem quants certificats queden pendents de Revisar
total_pendents_revisat = 0
sqlReviat = "select count(*) as Pendents_revisat from [CD_documentacio_iterator] where [estat]='NO REVISAT'"
    set rsRevisat = GetRecordset(sqlReviat)
    if not rsRevisat.eof and not rsRevisat.bof then
        total_pendents_revisat = rsRevisat("Pendents_revisat")
    end if
rsRevisat.close
set rsRevisat=Nothing

' Revisem quants certificats estan revisats pero pendents d'enviar
total_pendents_enviar = 0
sqlEnviat = "select count(*) as Pendents_enviar from [CD_documentacio_iterator] where [estat]='REVISAT CORRECTE' and [enviat] ='NO'"
set rsEnviar = GetRecordset(sqlEnviat)
    if not rsEnviar.eof and not rsEnviar.bof then
            total_pendents_enviar = rsEnviar("Pendents_enviar")
    end if
rsEnviar.close
set rsEnviar=Nothing

' Mirem quantes incidencies tenim al sistema
total_incidencies = 0
sqlIncidencies = "select count(*) as Incidencies from [CD_log_motius_incidencies]"
set rsIncidencies = GetRecordset(sqlIncidencies)
    if not rsIncidencies.eof and not rsIncidencies.bof then
            total_incidencies = rsIncidencies("Incidencies")
    end if
rsIncidencies.close
set rsIncidencies=Nothing            
%>

<div class="topbar">

    <!-- LOGO -->
    <div class="topbar-left">
        <a href="menu.asp" class="logo">
            <span>
                <img src="assets/images/logo.png" alt="" height="24">
            </span>
            <i>
                <img src="assets/images/logo_sm.png" alt="" height="24">
            </i>
        </a>
    </div>

    <nav class="navbar-custom">

        <ul class="list-inline float-right mb-0">

            <!-- INCIDENCIES -->
            <li class="list-inline-item dropdown notification-list">
                <a class="nav-link dropdown-toggle arrow-none" data-toggle="dropdown" href="#" role="button"
                    aria-haspopup="false" aria-expanded="false">
                    <i class="mdi mdi-death-star-variant noti-icon waves-light waves-effect"></i>
                </a>
                <span class="badge badge-pink noti-icon-badge"><%=total_incidencies%></span>
            </li>        

            <!-- PENDENTS DE REVISAR -->
            <li class="list-inline-item dropdown notification-list">
                <a class="nav-link dropdown-toggle arrow-none" data-toggle="dropdown" href="#" role="button"
                    aria-haspopup="false" aria-expanded="false">
                    <i class="mdi mdi-bell-ring-outline noti-icon waves-light waves-effect"></i>
                </a>
                <span class="badge badge-warning noti-icon-badge"><%=total_pendents_revisat%></span>
            </li>

            <!-- USUARI -->
            <li class="list-inline-item dropdown notification-list">
                <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button"
                    aria-haspopup="false" aria-expanded="false">
                    <i class="noti-icon"><img src="assets/images/<%=session("UserPhoto")%>" alt="user" class="img-fluid rounded-circle"></i>
                    <span class="profile-username ml-2 text-dark">(<%=session("UserID")%>) <%=session("UserName")%> </span> <span class="mdi mdi-menu-down text-dark"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-animated dropdown-menu-right profile-dropdown ">
                    <!-- item-->
                    <a href="disconnectUser.asp" class="dropdown-item notify-item">
                        <i class="mdi mdi-power"></i> <span>Desconnectar...</span>
                    </a>
                </div>
            </li>

        </ul>

        <ul class="list-inline menu-left mb-0">
            <li class="float-left">
                <button class="button-menu-mobile open-left waves-light waves-effect">
                    <i class="mdi mdi-menu"></i>
                </button>
            </li>

            <li class="hide-phone app-search">

                <script language="JavaScript">
                    function goSearch() {
                        var txtRecerca = document.getElementById("recerca").value;
                        var URL = "resultatCD.asp?SEARCH="+txtRecerca;
                        window.location.href = URL;
                    }
                </script>

                <!--form name="research" class=""-->
                    <input type="text" id="recerca" name="recerca" placeholder="Recerca..." class="form-control">
                    <a href="#" onClick="goSearch()"><i class="fa fa-search"></i></a>
                <!--/form-->

            </li>

        </ul>

    </nav>

</div>