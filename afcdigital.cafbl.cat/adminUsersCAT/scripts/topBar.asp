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

            <!-- USUARI -->
            <li class="list-inline-item dropdown notification-list">
                <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button"
                    aria-haspopup="false" aria-expanded="false">
                    <i class="noti-icon"><img src="assets/images/users/avatar-1.jpg" alt="user" class="img-fluid rounded-circle"></i>
                    <span class="profile-username ml-2 text-dark"><%="("&session("CodColegiado")&")" & " " & session("NombreUsuario") & " - " & session("Demarcacion")%> </span> <span class="mdi mdi-menu-down text-dark"></span>
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
                        var URL = "http://afcdigital.cafbl.cat/adminCafbl/resultatCD.asp?SEARCH="+txtRecerca;
                        window.location.href = URL;
                    }
                </script>

                <!--form name="research" class=""-->
                    <input type="text" id="recerca" name="recerca" placeholder="Recerca..." class="form-control">
                    <a href="#" onClick=""><i class="fa fa-search"></i></a>
                <!--/form-->

            </li>

        </ul>

    </nav>

</div>