<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style>
fieldset
{
      width: 70px;
}
</style>
</head>
<body>
<form action="Upload" method="post" enctype="multipart/form-data">
<fieldset>
<table>
   <tr> <td> <label for="name"><b>Subject Name:</b></label></td>
<td>  <input type="text" placeholder="Enter Subject Name" name="subname" required ><br></td></tr>
<tr>
<td>      <label for="employee id"><b>Subject Id:</b></label></td>
  <td>    <input type="text" placeholder="Enter Subject Id" name="subid" required ><br></td></tr>
<tr>
<td>      <label for="Unit "><b>Unit:</b></label></td>
  <td>    <input type="text" placeholder="Enter Unit Name" name="unit" required ><br></td></tr>

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

<tr>
<td>Upload materials</td>
<td><input type="file" name="material"></td>
</tr>
<td><input type="submit" value="Upload"></td>
</tr>
</table>
</fieldset>
</form>
</body>
</html>