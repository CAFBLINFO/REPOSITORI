            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="slimscroll-menu" id="remove-scroll">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu" id="side-menu">
                            <li class="menu-title">Menú d'Aplicacions</li>

                            <%
                                select_menu = " SELECT * FROM [CD_Users_Menus]" 
                                set rs_menu = GetRecordset(select_menu)
                                if not rs_menu.eof and not rs_menu.bof then
                                    While not rs_menu.eof

                            %>

                                <li>
                                    <a href="<%=rs_menu("Link")%>"><i class="ion-ios-apps"></i> <span> <%=rs_menu("Name")%> </span></a>
                                </li>

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