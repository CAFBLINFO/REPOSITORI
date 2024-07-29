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
            
            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="slimscroll-menu" id="remove-scroll">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu" id="side-menu">
                            <li class="menu-title">Menú d'Aplicacions</li>

                            <%
                                select_menu = " SELECT * FROM [CD_Menus]" 
                                set rs_menu = GetRecordset(select_menu)
                                if not rs_menu.eof and not rs_menu.bof then
                                    While not rs_menu.eof

                            %>
                                    <% if rs_menu("Name")="Pendents de revisar" then %>

                                        <li>
                                            <a href="<%=rs_menu("Link")%>"><i class="ion-ios-apps"></i><span class="badge badge-warning float-right"><%=total_pendents_revisat%></span> <span> <%=rs_menu("Name")%> </span></a>
                                        </li>

                                    <% else %>

                                        <% if rs_menu("Name")="Pendents de enviar" then %>

                                            <li>
                                                <a href="<%=rs_menu("Link")%>"><i class="ion-ios-apps"></i><span class="badge badge-danger float-right"><%=total_pendents_enviar%></span> <span> <%=rs_menu("Name")%> </span></a>
                                            </li>

                                        <% else %>

                                                <% if rs_menu("Name")="Incidències" then %>

                                                    <li>
                                                        <a href="<%=rs_menu("Link")%>"><i class="ion-ios-apps"></i><span class="badge badge-pink float-right"><%=total_incidencies%></span> <span> <%=rs_menu("Name")%> </span></a>
                                                    </li>

                                                <% else %>

                                                    <li>
                                                        <a href="<%=rs_menu("Link")%>"><i class="ion-ios-apps"></i> <span> <%=rs_menu("Name")%> </span></a>
                                                    </li>

                                                <% end if %>

                                        <% end if %>

                                    <% end if %>

							<%
                                        rs_menu.movenext
                                    Wend
                            end if
                            rs_menu.close
                            set rs_menu=nothing
                            %>

                        </ul>

                    </div>
                    <!-- Sidebar -->
                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->