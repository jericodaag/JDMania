<?php

if(!isset($_SESSION)){
  session_start();
  
}

include_once("connections/connect.php");
$con=connect();

        $id=0;
        $fname = "";
        $lname = "";
        $email = "";
        $password = "";
        $address = "";
        $phone = "";
        $signup=false;

      
         
        $sql = "SELECT * FROM tbluser";
        $users = $con->query($sql) or die ($con->error);
        $row = $users->fetch_assoc();


        $sql=  "SELECT * FROM tbltransaction";
        $transaction = $con->query($sql) or die ($con->error);
        

if(isset($_SESSION['UserLogIn'])&&($_SESSION['Access']=="User")){
    $signup=true;
    $user=$_SESSION['ID'];
    
    $sql="SELECT COUNT(tbltransaction.`transactionID`) AS 'NOTIF' FROM `tbltransaction` INNER JOIN `tbluser` ON `tbltransaction`.`userID`=`tbluser`.`userID` WHERE tbltransaction.`Status`='Added to cart' AND tbltransaction.`userID`='$user'";
    $cart = $con->query($sql) or die ($con->error);
    $notif = mysqli_fetch_assoc($cart);
    $count=$notif['NOTIF'];

    $photo=$row['photo'];
    if(isset($_GET['select'])){

        $ID=$_GET['select'];

        $sql = "SELECT * FROM tblinventory where productID=$ID";
        $pic = $con->query($sql) or die ($con->error);
        $row = $pic->fetch_assoc();
        $img=$row['photo'];
        $prodname=$row['productName'];
        $price=$row['price'];
        $left=$row['quantity'];
        $desc1=$row['itemdesc1'];
        $desc2=$row['itemdesc2'];
        $desc3=$row['itemdesc3'];

        if(isset($_POST['add'])){
            
            
            $quantity = $_POST['quan'];
            $prod=$_POST['prod'];
            $price=$_POST['price'];
            $itemleft=$_POST['itemleft'];
            $date=date('F d, Y');
            $id=$_SESSION['ID'];
            $fname=$_SESSION['firstname'];
            $lname=$_SESSION['lastname'];
            $time=date("h:i a");
            $photo=$_POST['photo'];
            $total=$price*$quantity;

            if($itemleft=="0"){
                $_SESSION['message']="We're sorry the item is out of stock";
                $_SESSION['msg_type']="danger";
                echo header("Refresh:1; url=home.php");
            }
            else if($quantity=="0"){
                $_SESSION['message']="Please select quantity";
                $_SESSION['msg_type']="danger";
                echo header("Refresh:1; url=home.php?select=".$row['productID']);
            }
            else{
            

            $sql= "INSERT INTO `tbltransaction`(`transactionID`, `userID`, `productID`, `customerName`, `productName`, `photo`, `Price`, `Quantity`, `Total`, `Time`, `Date`,  `Status`) VALUES ('', '$id', '$ID','$fname $lname','$prod', '$photo', '$price', '$quantity', '$total', '$time', '$date', 'Added to cart')";
            $con->query($sql) or die ($con->error);
            
            echo header("Refresh:1; url=cart.php");
            }
        }
        // $sql= "UPDATE tblinventory SET quantity=quantity-'$quantity' where productID=$ID";
        //     $con->query($sql) or die ($con->error);
           
    }
   
    
}
else if(isset($_SESSION['UserLogIn'])&&($_SESSION['Access']=="Admin"&&"Supervisor")){
    echo header("Location: accounts.php");
}
else{

    if(isset($_GET['select'])){

        $ID=$_GET['select'];

        $sql = "SELECT * FROM tblinventory where productID=$ID";
        $pic = $con->query($sql) or die ($con->error);
        $row = $pic->fetch_assoc();
        $img=$row['photo'];
        $prodname=$row['productName'];
        $price=$row['price'];
        $left=$row['quantity'];
        $desc1=$row['itemdesc1'];
        $desc2=$row['itemdesc2'];
        $desc3=$row['itemdesc3'];

        if(isset($_POST['add'])||isset($_POST['buy'])){
            echo header("Refresh:0; url=LogIn.php");
        }
        

    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JDM | About</title>
    <link rel="shortcut icon" type=image/x-icon href=images/icon.png>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:black;">


    <!-- NAVIGATION -->
    <nav class="navbar navbar-expand-md sticky-top navigation">
        <div class="container-fluid">
            <a href="home.php" class="navbar-brand logo-container"><img src="images/Logo.png" alt="" class="logo"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                <span class="fas fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">        
                <ul class="navbar-nav ml-auto">
                    <?php if (isset($_SESSION['UserLogIn'])){ ?>
                        <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                            <a href="cars.php" class="nav-link dropbtn">Cars</a>
                        <div class="dropdown-content">
                            <a href="hot-deals.php">Hot Deals</a>
                            <a href="new-arrival.php">New Arrival</a>
                            <a href="jdm-classics.php">Classic Cars</a>
                        </div>
                    </li>
                
                    <li class="nav-item dropdown">
                        <a href="merchandise.php" class="nav-link dropbtn" id=women>Merchandise</a>
                        <div class="dropdown-content">
                            <a href="best-sellers.php">Best Sellers</a>
                            <a href="car-accessories.php">Accessories</a>
                            <a href="jdm-clothing.php">Jdm Clothing</a>
                        </div>
                    </li>
                
                        <a href="about.php" class="nav-link dropbtn">About</a>
                        <div class="dropdown-content">
                        </div>
                    </li>
                </ul>
                    <?php } else{ ?>
                        <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                            <a href="cars.php" class="nav-link dropbtn">Cars</a>
                        <div class="dropdown-content">
                            <a href="hot-deals.php">Hot Deals</a>
                            <a href="new-arrival.php">New Arrival</a>
                            <a href="jdm-classics.php">Classic Cars</a>
                        </div>
                    </li>
                
                    <li class="nav-item dropdown">
                        <a href="merchandise.php" class="nav-link dropbtn">Merchandise</a>
                        <div class="dropdown-content">
                            <a href="best-sellers.php">Best Sellers</a>
                            <a href="car-accessories.php">Accessories</a>
                            <a href="jdm-clothing.php">Jdm Clothing</a>
                        </div>
                    </li>
                
                        <a href="about.php" class="nav-link dropbtn">About</a>
                        <div class="dropdown-content">
                        </div>
                    </li>
                </ul>
                    <?php }?>
                   
                    <?php if($signup==true){?>
                    <li class="nav-item" id="account">
                    <div class="navbar-collapse" id="navbar-list-4">
                            <ul class="navbar-nav">
                            <?php if (isset($_SESSION['UserLogIn'])){ ?>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="<?php echo 'images/avatars/'.$_SESSION['photo']?>" width="30" height="30" class="rounded-circle">
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a href="user-account.php" class="dropdown-item"><i class="fas fa-shopping-bag"></i> &nbspMy Orders</a>
                                <a href="LogOut.php?logout=<?php echo $_SESSION['ID']?>" class="dropdown-item" name=logout><span class="fas fa-sign-out-alt"></span>&nbsp&nbspLogout</a>
                                </div>
                            </li>
                            <?php } else { ?>
                        <li class="nav-item">
                        <a href="LogIn.php" class="nav-link">Login</a>
                    </li>
                    <?php }?>
                            </ul>
                        </div>
                    </li>
                    
                    <?php } else{ ?>
                    
                    <li class="nav-item" id="signup">
                        <a href="sign-up.php"  class="nav-link">Sign Up</a>
                    </li>
                    <?php }?>
                    <?php if (isset($_SESSION['UserLogIn'])){ ?>
                        <?php if($count!='0'){?>
                            <style>.cart-button:before {content: "<?php echo $count ?>"}</style>
                        <?php }?>

                    <li class="nav-item">
                     <a href="user-account.php"  class="nav-link"><?php echo $_SESSION['firstname']." ".$_SESSION['lastname']; ?></a>
                    </li>
                    <?php } else { ?>
                        <li class="nav-item">
                        <a href="LogIn.php" class="nav-link">Login</a>
                    </li>
                    <?php }?>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br><br>



    <!-- BANNER ABOUT -->
    <div class="inline">
            <div class="col-12 about banner-image-container" style="color:white;">
                <h4 class="display-4">Car Categories</h4>
                <form action=home.php method=get>
                <div class="search-boxkids">
                    <input class="search-input" name=searchitem  value="" type="text" placeholder="Search something..">
                    <button class="search-btn"><i class="fas fa-search"></i></a></button>
                    <?php if (isset($_SESSION['UserLogIn'])){ ?>
                        <a href="cart.php" class="nav-link cart-button">
                                <i class="fas fa-shopping-cart" style="font-size: 25px"></i>
                            </a>
                        <?php } else{?>
                            <a href="LogIn.php" class="nav-link cart-button">
                                <i class="fas fa-shopping-cart" style="font-size: 25px"></i>
                            </a>
                            <?php }?>
                </div>
            </form>
            </div>
        </div>
    </div>
    <br><br><br>

    <!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 40px;
        }
        h1 {
            font-family: "Valorant font";
            font-size: 48px;
            color: #ff4500;
            text-align: center;
            margin-bottom: 20px;
        }
        .subtitle {
            font-family:"A4speed";
            font-size: 24px;
            color: #ff4500;
            text-align: center;
            margin-bottom: 40px;
        }
        .description {
            font-family:"Cafe";
            font-size: 20px;
            text-align: center;
            margin-bottom: 40px;
        }
        .mission {
            font-family:"A4speed";
            font-size: 24px;
            color: #fff;
            text-align: center;
            margin-bottom: 40px;
        }
        .mission-statement {
            font-family:"Cafe";
            font-size: 20px;
            text-align: center;
            margin-bottom: 40px;
        }
        .why-choose {
            font-family:"A4speed";
            font-size: 24px;
            color: #fff;
            text-align: center;
            margin-bottom: 40px;
        }
        .why-choose-list {
            font-family:"Cafe";
            list-style-type: none;
            padding-left: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-bottom: 40px;
        }
        .why-choose-item {
            font-family:"Cafe";
            width: 400px;
            padding: 20px;
            margin: 10px;
            background-color: #1a1a1a;
            border-radius: 10px;
            text-align: center;
        }
        .why-choose-item p {
            font-family:"Cafe";
            font-size: 18px;
            color: #fff;
            margin: 0;
        }
        .start-journey {
            font-family:"A4speed";
            font-size: 35px;
            text-align: center;
            margin-bottom: 20px;
        }
        .explore-inventory {
            font-family:"Cafe";
            font-size: 20px;
            text-align: center;
            margin-bottom: 60px;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to JDMania!</h1>
        <p class="subtitle">Unleash Your Passion for JDM Cars</p>
        <p class="description">At JDMania, we live and breathe JDM (Japanese Domestic Market) cars. We are more than just a dealership; we are a gateway to a world where performance, style, and heritage intertwine to create automotive masterpieces.</p>
        <p class="mission">Our Mission:</p>
        <p class="mission-statement">To provide car enthusiasts with access to the finest selection of JDM vehicles, meticulously curated to ignite your automotive dreams and empower your driving experience.</p>
        <p class="why-choose">Why Choose JDMania:</p>
        <ul class="why-choose-list">
            <li class="why-choose-item">
                <p>Authentic JDM Vehicles: We handpick each car, ensuring it embodies the essence of the JDM culture and represents the pinnacle of Japanese automotive engineering.</p>
            </li>
            <li class="why-choose-item">
                <p>Quality and Transparency: Our team of experts meticulously inspects and verifies the authenticity and performance of every vehicle, providing you with peace of mind and confidence in your purchase.</p>
            </li>
            <li class="why-choose-item">
                <p>Passionate Expertise: Our knowledgeable staff are true car enthusiasts, ready to share their expertise, offer valuable insights, and guide you towards your perfect JDM car.</p>
            </li>
            <li class="why-choose-item">
                <p>Exceptional Buying Experience: From browsing our extensive inventory to personalized test drives and seamless transactions, we prioritize your satisfaction and strive to exceed your expectations.</p>
            </li>
            <li class="why-choose-item">
                <p>Join the JDM Community: By choosing JDMania, you become part of a vibrant community of passionate JDM enthusiasts, where your love for cars can flourish and connections can be forged.</p>
            </li>
        </ul>
        <p class="start-journey">Start Your JDM Adventure Today!</p>
        <p class="explore-inventory">Explore our diverse inventory of JDM vehicles, immerse yourself in the legacy of automotive greatness, and embark on an unforgettable journey behind the wheel of your dream car.</p>
    </div>
</body>
</html>












    <!-- FOOTER -->
 <footer>
        <div class="container-fluid footer">
            <div class="row" style="justify-content: space-around;">
                <div class="col-sm-6 col-lg-3" align="left">
                    <h4 class="display-4 name">Lifestyle Clothing Co.</h4>
                    <p class="lead">
                    We are JDMania Auto Deals, the ultimate destination for JDM enthusiasts. We offer a curated 
                    selection of top-tier JDM vehicles that ignite the senses, from iconic classics to cutting-edge 
                    performance machines. Experience the heart and soul of JDM culture with us, where horsepower meets 
                    passion in perfect harmony.
                    </p>
                </div>

                <div class="col-sm-6 col-lg-3" align="center">
                    <p class="lead">Follow Us On:</p>
                    <div class="col-12 social">
                        <a href="#"><span class="fab fa-facebook"></span> Facebook</a><br>
                        <a href="#"><span class="fab fa-instagram"></span> Instagram</a><br>
                        <a href="#"><span class="fab fa-twitter"></span> Twitter</a><br>
                        <a href="#"><span class="fab fa-youtube"></span> YouTube</a><br>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3" align="center">
                    <p class="lead">Email Us:</p>
                    <div class="textbox">
                        <input type="text" placeholder="Write Your Thoughts">
                    </div>
                    <div class="button">
                    <a href="mailto:" class="btn btn-primary" style="border-color:#bf2e2e; background-color:#bf2e2e;">Send</a>
                    </div>
                </div>
            </div>
            <br>
            <hr>
            <div class="row text-center">
                <div class="col-12">
                   <p>Copyright © 2021 | All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>