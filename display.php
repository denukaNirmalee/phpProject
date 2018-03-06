
<!DOCTYPE html>
<html lang="en">


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>UoM-display std data</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

<?php

include("connection.php");

if(isset ($_POST['btndisplay'])){

    $id = $_POST['display'];
    //echo $id;
    $query = "SELECT * FROM student_detail_tbl WHERE Std_id='$id' ";
    $result = mysqli_query($db, $query) or die(' error getting data');

}
?>


<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">

</nav>

<!-- Header -->
<a name="about"></a>
<div class="intro-header">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="intro-message">
                    <h2>University of Moratuwa</h2>
                    <h3>Insert student data to the database</h3>
                    <hr class="intro-divider">

                    <div align="center">
                        <form action = "display.php" method = "post">

                                <input type="text" name="display" style = "width : 400px" class="form-control input-sm chat-input" placeholder="student id"><br>

                                <input type="submit" name="btndisplay" value="Go"  class="btn btn-default">
                        </form>

                    </div>
                    <br>
                    <br>
                    <?php


                    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){

                        echo "ID: ". $row['Std_id'] . "<br/>" ;
                        echo "Name: ".$row['Std_name']."<br/>";
                        echo "Contact Number: ".$row['Std_contact'] . "<br/>";
                        echo "Faculty: ".$row['Std_faculty']."<br/>";
                        echo "Department: ".$row['Std_department']."<br/>";

                    }
                    ?>


                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.intro-header -->

<!-- Page Content -->

<a  name="services"></a>
<!--
 <div class="content-section-a">

    <div class="container">

        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <hr class="section-heading-spacer">
                <div class="clearfix"></div>
                <h2 class="section-heading">Google Web Fonts and<br>Font Awesome Icons</h2>
                <p class="lead">This template features the 'Lato' font, part of the <a target="_blank" href="http://www.google.com/fonts">Google Web Font library</a>, as well as <a target="_blank" href="http://fontawesome.io">icons from Font Awesome</a>.</p>
            </div>
            <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                <img class="img-responsive" src="img/phones.png" alt="">
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.content-section-a -->


<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="list-inline">
                    <li>
                        <a href="home.php">Home</a>
                    </li>
                    <li class="footer-menu-divider">&sdot;</li>
                    <li>
                        <a href="about.php">About</a>
                    </li>
                    <li class="footer-menu-divider">&sdot;</li>
                    <li>
                        <a href="contact.php">Contact</a>
                    </li>
                    <li class="footer-menu-divider">&sdot;</li>
                    <li>
                       <a href="adminLogin.php">Admin Login</a>
                    </li>
                </ul>
                <p class="copyright text-muted small">Copyright &copy; Your Company 2017. All Rights Reserved</p>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

</body>

</html>
