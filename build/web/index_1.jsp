<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Faculty Registration Form</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 8px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;

}
fieldset
{
      width: 70px;
}
table {
    background-color: #9ff9d8;
    width: 300px;
    border: 25px solid #07fca2;
    padding: 25px;
    margin: 25px;
}


/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
 #abc{

    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
    font-weight:bold;
    font-size: 17px;
}

button:hover {
    opacity:1;
}

/* Float cancel and signup buttons and add an equal width */.signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered
    border: 1px solid #888;
    width: 80%;  Could be more or less, depending on screen size
}
/* Style the horizontal ruler */
hr {
    border: 1.5px solid black;
    margin-bottom: 25px;
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}
select{

  width: 100%;
  padding: 8px;
  margin: 5px 0 22px 0;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
</head>

<body>
<center>
<div >
    <div class="container" style=" background-color:#31eff9;">

    <form  action="Employee_Registration" method="post" enctype="multipart/form-data" >
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

<tr><td>     

<tr>
<td>Select Photo</td>
<td><input type="file" name="photo"></td>

</tr>



      <div class="clearfix">
  <tr> <td colspan="2" >

 <input id="abc" type="submit"  class="signupbtn" style="background-color:#31eff9;"> </input></td></tr></center>
      </div>
    </div>
</div>
</table>
</center>
</body>
</html>
