<%-- 
    Document   : forgot
    Created on : Nov 1, 2018, 5:45:13 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-image: url(blog-6.jpg); height:100%; background-size:cover;background-repeat:no-repeat">
	<center>
		<div class="central-div">
			<form method='get' action="Mailer">
                             <input type="hidden" name="page" value="forgot"> 
				<table>
					<tr>
						<td colspan="2">
							<center><h2>Forgot Password</h2></center>
						</td>
					</tr>
                                
                                <tr>
						<td>
							<label>Enter Your ID</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder="User Name" name="username">
						</td>
					</tr>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	                                <tr><td colspan="2">	<center>
							<input type="submit" value="submit" class="button">
							</center></td></tr>
					
                                </table></form>
                    </div>
            </center>

    </body>
</html>
