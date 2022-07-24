<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Vignan's Informtion System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="style.css" type="text/css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }
  .jumbotron {
      /*background-color: #50f442;*/
     
      color: black;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color:#94e8f7;
      
  }
  input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #2f3ced;
    color: white;
    padding: 7px 10px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 70%;
}

  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #f4511e;
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #f4511e !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #f4511e;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    }
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    }
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container" >

    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">HOME</a></li>
        <li><a href="#services">DEPARTMENTS</a></li>
        <li><a href="#portfolio">LOGIN</a></li>
        <li><a href="#pricing">REGISTER</a></li>
        <li><a href="#contact">CONTACT US</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center" style=" background:url('q7.jpg');">
  <h1 style="color:white;"><b>ETUDE</b></h1>
  <p>A Smart Way Of Learning</p>
  </div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid" style=" background:url('input-bg-03.jpg');;">
  <div class="row">
    <div class="col-sm-8">
  <h2>About Vignan's University</h2><br>
      <h4>Vignan's Foundation for Science, Technology & Research is a private university in the Guntur district Andhra Pradesh, India. It is in the rural area of Vadlamudi, on the southeastern part of Guntur City</h4><br>
      <p>The difference between dreamers and innovators is that a dreamer just dreams and does nothing to realize it, while an innovator charts his own path and breathes life into his ideas. That streak of originality is the distinct quality that makes innovator a breed apart from the mere people of this world.Vignan University is the place where dreams of parents and students are fulfilled to reach heights in their lives.</p>
      <br><button class="btn btn-default btn-lg"><a href="http://vignanuniversity.org/">Get in Touch</a></button>
    </div>
    <div class="col-sm-4"><br><br><br>
      <img src="vig.png" alt="vignan" width="200" height="200" align="right">
    </div>
  </div>
</div>

<div class="container-fluid bg-grey" style=" background:url('q11.jpg');background-size:cover;">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2 style="color:white;">Our Values</h2><br>
      <h4 style="color:white;"><strong>MISSION:</strong>  TO PROVIDE HIGH QUALITY</h4>

   <p>  academic programmes, training activities, research facilities and opportunities supported by continuous industry - institute interaction aimed at promoting employability, entrepreneurship, leadership and research aptitude among students and contribute to the economic and technological development of the region, state and nation</p>
    <br>
     <h4 style="color:white;"> <strong>VISION:</strong>  TO EVOLVE IN TO A CENTRE OF EXCELLENCE IN SCIENCE & TECHNOLOGY</h4>

    through creative and innovative practices in teaching - learning, towards promoting academic achievement and research excellence to produce internationally accepted, competitive and world class professionals who are psychologically strong & emotionally balanced imbued with social consciousness & ethical values.
<br></div>
  </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center" style=" background:url('w8.jpg');background-size:cover;">
   <h1>Departments</h1>
    <br><br><br><br><br><br><br>
 <form action="deptbased_display.jsp" method="POST" >
<select name="departments" id="departments">
<option value="APPLIED ENGINEERING">APPLIED ENGINEERING</option>
<option value="BIOTECHNOLOGY" id="2">BIOTECHNOLOGY</option>
<option value="CHEMICAL ENGINEERING" id="3">CHEMICAL ENGINEERING</option>
<option value="CIVIL ENGINEERING" id="4">CIVIL ENGINEERING</option>
<option value="CSE" id="5">CSE</option>
<option value="ECE" id="6">ECE</option>
<option value="EEE" id="7">EEE</option>
<option value="MECHANICAL ENGINEERING" id="8">MECHANICAL ENGINEERING</option>
<option value="INFORMATION TECHNOLOGY" id="9">INFORMATION TECHNOLOGY</option>
<option value="MBA" id="10">MBA</option>
<option value="SCIENCE AND HUMANITIES" id="11">SCIENCE AND HUMANITIES</option>
<option value="PHARMACEUTICAL SCIENCES" id="12">PHARMACEUTICAL SCIENCES</option>
</select><br><br><br><br><br><br>
<input type="submit"><br><br>
</form>
  <br><br><br><br>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey" style=" background:url('w2.jpg');background-size:cover;">
  <h2 style="color:white;">Login Form</h2><br>
<center>
<form action="login" method="post">
 <table>
  <div class="container">
    <tr><td><label for="uname"><b>Username</b></label></td>
    <td><input type="text" placeholder="Enter Username" name="uname" required></td></tr>
<br><br><br>
    <tr><td><label for="psw"><b>Password</b></label></td>
    <td><input type="password" placeholder="Enter Password" name="psw" required></td></tr>
  <br><br><br>
   <tr><td></td><td><br><br><br><button type="submit">Login</button></td></tr>

  </div>
</table><br><br>
  <div class="container" style="background-color:#f1f1f1">
   </div><br><br>
</form>
</center>


  </div>


<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid" style=" background:url('w5.jpg');">

<div >
    <div class="container">
<center>
    <form name="faculty" method="post" action="Employee_Registration" enctype="multipart/form-data" >
      <table border="0">
<tr> <td colspan="2" >        <h1 align="center" style="font-family:verdana; color:black;">Faculty Sign Up Form</h1><hr>
</td></tr><br>
<tr> <td> <label for="name"><b>Full Name:</b></label></td>
<td>  <input type="text" placeholder="Enter Full Name" name="full name" required ><br></td></tr>
<tr>
<td>      <label for="employee id"><b>Employee Id:</b></label></td>
  <td>    <input type="text" placeholder="Enter Emp Id" name="emp id" required ><br></td></tr>
<tr>

<td>      <label for="department"><b>Department:</b></label></td>

      <td><select name="departments">
      <option value="APPLIED ENGINEERING">APPLIED ENGINEERING</option>
      <option value="BIOTECHNOLOGY">BIOTECHNOLOGY</option>
      <option value="CHEMICAL ENGINEERING">CHEMICAL ENGINEERING</option>
      <option value="CIVIL ENGINEERING">CIVIL ENGINEERING</option>
      <option value="CSE">CSE</option>
      <option value="ECE">ECE</option>
      <option value="EEE">EEE</option>
      <option value="MECHANICAL ENGINEERING">MECHANICAL ENGINEERING</option>
      <option value="INFORMATION TECHNOLOGY">INFORMATION TECHNOLOGY</option>
      <option value="MBA">MBA</option>
      <option value="SCIENCE AND HUMANITIES">SCIENCE AND HUMANITIES</option>
      <option value="PHARMACEUTICAL SCIENCES">PHARMACEUTICAL SCIENCES</option>
      </select>
</form><br></td>
<tr><td>
     <label for="qualification"><b>Qualification:</b></label></td>
     <td><select name="qualification">
     <option value="BTech">B.Tech</option>
     <option value="MTech">M.Tech</option>
     <option value="PhD">PhD</option>
     </select>
    <br></td></tr>

<tr><td>
     <label for="designation"><b>Designation:</b></label></td>
     <td><select name="designation">
     <option value="dean">Dean</option>
     <option value="adean">Assistant Dean</option>
     <option value="Hod">HOD</option>
     <option value="Professor">Professor</option>
     <option value="Associate">Associate Professor</option>
     <option value="assistnt">Assistant Professor</option>
     <option value="scholar">Research Scholar</option>
     
         </select>
    <br></td></tr>

    <tr><td>  <label for="email"><b>Email:</b></label></td>
<td>      <input type="text" placeholder="Enter Email" name="email" required><br></td></tr>



<tr><td><label for="research area"><b>Research Area:</b></label></td>
<td><input type="text" placeholder="Enter research area" name="research area" required ><br></td></tr>
<tr>
<td>   <label for="experiance"><b>Experiance:</b></label></td>

  <td>      <textarea name="experiance" rows="10" cols="50"  placeholder="eg:2 years 8 months">
</textarea></td></tr>
<tr><td>  <label for="password"><b>Password:</b></label></td>
<td>      <input type="password" placeholder="Enter password" name="pswd" required><br></td></tr>

<tr><td>  <label for="Confirm password"><b>Confirm Password:</b></label></td>
<td>      <input type="password" placeholder="Confirm password" name="cnfpswd" required><br></td></tr>

<tr><td>      <form action="/action_page.php">
<label for "image"><b>Upload Your Image:</b></label><br><br>
<td> &nbsp&nbsp<input type="file" name="myFile" required="required" accept="image/*"><br></td></tr>
</form>

      <div class="clearfix">
  <tr> <td colspan="2" >

<center> <input id="abc" type="submit" class="signupbtn" style="background-color:white;"></center><br><br><br><br> </input></td></tr></center>
      </div>
    </div>
</div>
    </div>
</table
</center>
</div>
<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey" style=" background:url('w9.jpg'); color:white;">
  <h2 class="text-center">CONTACT</h2><br><br><br>
  <div class="row">

<center>
      <p>Get In Touch</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>  Vignan's Foundation for Science, Technology & Research<br> (deemed to be University),
Vadlamudi, Guntur-522213</p>
      <p><span class="glyphicon glyphicon-phone"></span>0863-2344700 / 701</p>
      <p><span class="glyphicon glyphicon-envelope"></span>  info@vignanuniversity.org</p><br><br><br><br><br><br><br>
    </div></center>
  </div>

<!-- Add Google Maps -->


<footer class="container-fluid text-center">
  <a href="#myPage" title="Back To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>All rights Reserved @CSE</p>
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });

  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
});
</script>

</body>
</html>
