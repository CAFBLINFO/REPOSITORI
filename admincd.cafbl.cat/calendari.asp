<!--#include file="scripts/dataaccess.asp"-->

<%

if session("UserID") <> "" and session("idsecurity") = "837RHYF7SHS73HYDID9SUJSKSHVHUGTS634HDUCYS7SUW9SJHFHNVJSIA93JR9C7" and session("HGFY-7876") = "#?¬?%&@@=()+*//*-[]__ÑÇXFD^^^^^" then

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

        <!--calendar css-->
        <link href="../plugins/fullcalendar/css/fullcalendar.min.css" rel="stylesheet" />

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
                                    <h4 class="page-title float-left">Calendari</h4>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-lg-12">

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-3">
                                                <a href="#" data-toggle="modal" data-target="#add-category" class="btn btn-lg btn-primary btn-block waves-effect m-t-20 waves-light">
                                                    <i class="fa fa-plus"></i> Create New
                                                </a>
                                                <div id="external-events" class="m-t-20">
                                                    <br>
                                                    <p class="text-muted">Drag and drop your event or click in the calendar</p>
                                                    <div class="external-event bg-success" data-class="bg-success">
                                                        <i class="mdi mdi-checkbox-blank-circle m-r-10 vertical-middle"></i>New Theme Release
                                                    </div>
                                                    <div class="external-event bg-info" data-class="bg-info">
                                                        <i class="mdi mdi-checkbox-blank-circle m-r-10 vertical-middle"></i>My Event
                                                    </div>
                                                    <div class="external-event bg-warning" data-class="bg-warning">
                                                        <i class="mdi mdi-checkbox-blank-circle m-r-10 vertical-middle"></i>Meet manager
                                                    </div>
                                                    <div class="external-event bg-purple" data-class="bg-purple">
                                                        <i class="mdi mdi-checkbox-blank-circle m-r-10 vertical-middle"></i>Create New theme
                                                    </div>
                                                </div>
    
                                                <!-- checkbox -->
                                                <div class="checkbox checkbox-primary m-t-30">
                                                    <input type="checkbox" id="drop-remove">
                                                    <label for="drop-remove">
                                                        Remove after drop
                                                    </label>
                                                </div>
                                            </div> <!-- end col-->
                                            <div class="col-xl-9">
                                                <div id="calendar"></div>
                                            </div> <!-- end col -->
                                        </div>  <!-- end row -->
                                    </div>
                                </div>

                                <!-- BEGIN MODAL -->
                                <div class="modal fade none-border" id="event-modal" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title">Add New Event</h4>
                                            </div>
                                            <div class="modal-body p-b-0"></div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal Add Category -->
                                <div class="modal fade none-border" id="add-category" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title">Add a category</h4>
                                            </div>
                                            <div class="modal-body p-b-0">
                                                <form role="form">
                                                    <div class="form-group">
                                                        <label class="control-label">Category Name</label>
                                                        <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label">Choose Category Color</label>
                                                        <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                            <option value="success">Success</option>
                                                            <option value="danger">Danger</option>
                                                            <option value="info">Info</option>
                                                            <option value="pink">Pink</option>
                                                            <option value="primary">Primary</option>
                                                            <option value="warning">Warning</option>
                                                            <option value="inverse">Inverse</option>
                                                        </select>
                                                    </div>

                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END MODAL -->
                            </div>
                            <!-- end col-12 -->
                        </div> <!-- end row -->    
            


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

        <!-- Jquery-Ui -->
        <script src="../plugins/jquery-ui/jquery-ui.min.js"></script>

        <script src="../plugins/moment/moment.js"></script>
        <script src="../plugins/fullcalendar/js/fullcalendar.min.js"></script>

        <!--dragging calendar event-->
        <script src="assets/pages/calendar-init.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>

<%

else

    response.redirect "index.asp"

end if

%>