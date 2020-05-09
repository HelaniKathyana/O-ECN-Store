<?php

    if(!isset($_SESSION['admin_email'])){

        echo "<script>window.open('login.php','_self')</script>";

    }else{

?>

<div class="row"><!-- row no: 1 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <h1 class="page-header"> Dashboard </h1>

        <ol class="breadcrumb"><!-- breadcrumb begin -->
            <li class="active"><!-- active begin -->

                <i class="fa fa-dashboard"></i> Dashboard

            </li><!-- active finish -->
        </ol><!-- breadcrumb finish -->

    </div><!-- col-lg-12 finish -->
</div><!-- row no: 1 finish -->

<div class="row"><!-- row no: 2 begin -->

    <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 begin -->
        <div class="panel panel-primary"><!-- panel panel-primary begin -->

            <div class="panel-heading"><!-- panel-heading begin -->
                <div class="row"><!-- panel-heading row begin -->
                    <div class="col-xs-3"><!-- col-xs-3 begin -->

                        <i class="fa fa-tasks fa-5x"></i>

                    </div><!-- col-xs-3 finish -->

                    <div class="col-xs-9 text-right"><!-- col-xs-9 text-right begin -->
                        <div class="huge"> 17 </div>

                        <div> Products </div>

                    </div><!-- col-xs-9 text-right finish -->

                </div><!-- panel-heading row finish -->
            </div><!-- panel-heading finish -->

            <a href="index.php?view_products"><!-- a href begin -->
                <div class="panel-footer"><!-- panel-footer begin -->

                    <span class="pull-left"><!-- pull-left begin -->
                        View Details
                    </span><!-- pull-left finish -->

                    <span class="pull-right"><!-- pull-right begin -->
                        <i class="fa fa-arrow-circle-right"></i>
                    </span><!-- pull-right finish -->

                    <div class="clearfix"></div>

                </div><!-- panel-footer finish -->
            </a><!-- a href finish -->

        </div><!-- panel panel-primary finish -->
    </div><!-- col-lg-3 col-md-6 finish -->

    <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 begin -->
        <div class="panel panel-green"><!-- panel panel-green begin -->

            <div class="panel-heading"><!-- panel-heading begin -->
                <div class="row"><!-- panel-heading row begin -->
                    <div class="col-xs-3"><!-- col-xs-3 begin -->

                        <i class="fa fa-users fa-5x"></i>

                    </div><!-- col-xs-3 finish -->

                    <div class="col-xs-9 text-right"><!-- col-xs-9 text-right begin -->
                        <div class="huge"> 7 </div>

                        <div> Customers </div>

                    </div><!-- col-xs-9 text-right finish -->

                </div><!-- panel-heading row finish -->
            </div><!-- panel-heading finish -->

            <a href="index.php?view_customers"><!-- a href begin -->
                <div class="panel-footer"><!-- panel-footer begin -->

                    <span class="pull-left"><!-- pull-left begin -->
                        View Details
                    </span><!-- pull-left finish -->

                    <span class="pull-right"><!-- pull-right begin -->
                        <i class="fa fa-arrow-circle-right"></i>
                    </span><!-- pull-right finish -->

                    <div class="clearfix"></div>

                </div><!-- panel-footer finish -->
            </a><!-- a href finish -->

        </div><!-- panel panel-green finish -->
    </div><!-- col-lg-3 col-md-6 finish -->

    <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 begin -->
        <div class="panel panel-orange"><!-- panel panel-yellow begin -->

            <div class="panel-heading"><!-- panel-heading begin -->
                <div class="row"><!-- panel-heading row begin -->
                    <div class="col-xs-3"><!-- col-xs-3 begin -->

                        <i class="fa fa-tags fa-5x"></i>

                    </div><!-- col-xs-3 finish -->

                    <div class="col-xs-9 text-right"><!-- col-xs-9 text-right begin -->
                        <div class="huge"> 5 </div>

                        <div> Product Categories </div>

                    </div><!-- col-xs-9 text-right finish -->

                </div><!-- panel-heading row finish -->
            </div><!-- panel-heading finish -->

            <a href="index.php?view_p_cats"><!-- a href begin -->
                <div class="panel-footer"><!-- panel-footer begin -->

                    <span class="pull-left"><!-- pull-left begin -->
                        View Details
                    </span><!-- pull-left finish -->

                    <span class="pull-right"><!-- pull-right begin -->
                        <i class="fa fa-arrow-circle-right"></i>
                    </span><!-- pull-right finish -->

                    <div class="clearfix"></div>

                </div><!-- panel-footer finish -->
            </a><!-- a href finish -->

        </div><!-- panel panel-yellow finish -->
    </div><!-- col-lg-3 col-md-6 finish -->

    <div class="col-lg-3 col-md-6"><!-- col-lg-3 col-md-6 begin -->
        <div class="panel panel-red"><!-- panel panel-red begin -->

            <div class="panel-heading"><!-- panel-heading begin -->
                <div class="row"><!-- panel-heading row begin -->
                    <div class="col-xs-3"><!-- col-xs-3 begin -->

                        <i class="fa fa-shopping-cart fa-5x"></i>

                    </div><!-- col-xs-3 finish -->

                    <div class="col-xs-9 text-right"><!-- col-xs-9 text-right begin -->
                        <div class="huge"> 25 </div>

                        <div> Orders </div>

                    </div><!-- col-xs-9 text-right finish -->

                </div><!-- panel-heading row finish -->
            </div><!-- panel-heading finish -->

            <a href="index.php?view_orders"><!-- a href begin -->
                <div class="panel-footer"><!-- panel-footer begin -->

                    <span class="pull-left"><!-- pull-left begin -->
                        View Details
                    </span><!-- pull-left finish -->

                    <span class="pull-right"><!-- pull-right begin -->
                        <i class="fa fa-arrow-circle-right"></i>
                    </span><!-- pull-right finish -->

                    <div class="clearfix"></div>

                </div><!-- panel-footer finish -->
            </a><!-- a href finish -->

        </div><!-- panel panel-red finish -->
    </div><!-- col-lg-3 col-md-6 finish -->

</div><!-- row no: 2 finish -->

<div class="row"><!-- row no: 3 begin -->
    <div class="col-lg-8"><!-- col-lg-8 begin -->
        <div class="panel panel-primary"><!-- panel panel-primary begin -->
            <div class="panel-heading"><!-- panel-heading begin -->
                <h3 class="panel-title"><!-- panel-title begin -->

                    <i class="fa fa-money fa-fw"></i> New Orders

                </h3><!-- panel-title finish -->
            </div><!-- panel-heading finish -->

            <div class="panel-body"><!-- panel-body begin -->
                <div class="table-responsive"><!-- table-responsive begin -->
                    <table class="table table-hover table-striped table-bordered"><!-- table table-hover table-striped table-bordered begin -->

                        <thead><!-- thead begin -->

                            <tr><!-- th begin -->

                                <th> Order no: </th>
                                <th> Customer Email: </th>
                                <th> Invoice No: </th>
                                <th> Product ID: </th>
                                <th> Product Qty: </th>
                                <th> Product Size: </th>
                                <th> Status: </th>

                            </tr><!-- th finish -->

                        </thead><!-- thead finish -->

                        <tbody><!-- tbody begin -->

                            <tr><!-- tr begin -->
                                <td> 1 </td>
                                <td> pelanggan@gmail.com </td>
                                <td> 32sa32 </td>
                                <td> 24 </td>
                                <td> 2 </td>
                                <td> Large </td>
                                <td> Pending </td>

                            </tr><!-- tr finish -->

                            <tr><!-- tr begin -->
                                <td> 1 </td>
                                <td> pelanggan@gmail.com </td>
                                <td> 32sa32 </td>
                                <td> 24 </td>
                                <td> 2 </td>
                                <td> Large </td>
                                <td> Pending </td>

                            </tr><!-- tr finish -->

                            <tr><!-- tr begin -->
                                <td> 1 </td>
                                <td> pelanggan@gmail.com </td>
                                <td> 32sa32 </td>
                                <td> 24 </td>
                                <td> 2 </td>
                                <td> Large </td>
                                <td> Pending </td>

                            </tr><!-- tr finish -->

                            <tr><!-- tr begin -->
                                <td> 1 </td>
                                <td> pelanggan@gmail.com </td>
                                <td> 32sa32 </td>
                                <td> 24 </td>
                                <td> 2 </td>
                                <td> Large </td>
                                <td> Pending </td>

                            </tr><!-- tr finish -->

                        </tbody><!-- tbody finish -->

                    </table><!-- table table-hover table-striped table-bordered finish -->
                </div><!-- table-responsive finish -->

                <div class="text-right"><!-- text-right begin -->

                    <a href="index.php?view_orders"><!-- a href begin -->

                        View All Orders <i class="fa fa-arrow-circle-right"></i>

                    </a><!-- a href finish -->

                </div><!-- text-right finish -->

            </div><!-- panel-body finish -->

        </div><!-- panel panel-primary finish -->
    </div><!-- col-lg-8 finish -->

    <div class="col-md-4"><!-- col-md-4 begin -->
        <div class="panel"><!-- panel begin -->
            <div class="panel-body"><!-- panel-body begin -->
                <div class="mb-md thumb-info"><!-- mb-md thumb-info begin -->

                    <img src="admin_images/o-ecn-info.jpg" alt="admin-thumb-info" class="rounded img-responsive">

                    <div class="thumb-info-title"><!-- thumb-info-title begin -->

                        <span class="thumb-info-inner"> MsHelani </span>
                        <span class="thumb-info-type"> Web Developer </span>

                    </div><!-- thumb-info-title finish -->

                </div><!-- mb-md thumb-info finish -->

                <div class="mb-md"><!-- mb-md begin -->
                    <div class="widget-content-expanded"><!-- widget-content-expanded begin -->
                        <i class="fa fa-user"></i> <span> Email: </span> helaniwaidyarathne@gmail.com<br/>
                        <i class="fa fa-flag"></i> <span> Country: </span> Srilanka <br/>
                        <i class="fa fa-envelope"></i> <span> Contact: </span> 0818-0683-3157 <br/>
                    </div><!-- widget-content-expanded finish -->

                    <hr class="dotted short">

                    <h5 class="text-muted"> About Me</h5>

                    <p><!-- p begin -->

                        This application is created by O-ECN Media, if you willing to contact me, please click this link. <br/>
                        <a href="#"> O-ECN-Media </a> <br/>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.

                    </p><!-- p finish -->

                </div><!-- mb-md finish -->

            </div><!-- panel-body finish -->
        </div><!-- panel finish -->
    </div><!-- col-md-4 finish -->

</div><!-- row no: 3 finish -->


<?php } ?>
