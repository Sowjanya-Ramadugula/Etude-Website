<%-- 
    Document   : askqsndetails
    Created on : Oct 15, 2018, 6:46:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form name="questdetails"  method="post" action="insertqdetails"  >
   <center>   <table border="0">
<br>
<tr>
<td>      <label for="employee id"><b>Employee Id:</b></label></td>
  <td>    <input type="text" placeholder="Enter employee Id" name="empid" required ><br></td></tr>
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
<tr><td><label for="year"><b>Year:</b></label></td>
<td><input type="text" placeholder="Enter year" name="year" required ><br></td></tr>
<tr>
<td>   <label for="section"><b>Section:</b></label></td>

  <td>      <input type="text" name="section"  placeholder="eg:C">
</td></tr>
<tr>
<td>   <label for="exam name"><b>Exam Name:</b></label></td>

  <td>      <input type="text" name="examname"  placeholder="eg:WT unit-1">
</td></tr>
<tr>
<td>   <label for="subject name"><b>Subject Name:</b></label></td>

  <td>      <input type="text" name="subname"  placeholder="Web Technologies">
</td></tr>

<tr>
<td>   <label for="number of qsns"><b>Number os questions:</b></label></td>

<td>      <input type="text" name="noofqsns"  placeholder="eg:20">
</td></tr>
<tr>
                            <td colspan="4"><center><input type="submit" value="submit"></center></td>
                        </tr>
   </table></center>  </form>   
      </body>
</html>
