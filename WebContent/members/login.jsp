<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title></title>
        
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script src="js/modernizr.custom.63321.js"></script>
        <script src="js/myscript.js"></script>
       
		<style>
			body {

			}
		</style>
    </head>
    <body>
        <div class="container">
		
			
            	
			
			<section class="main">
			
				<form class="form-2" action="login.inc" method="post" name="ff">
				
				
					<h1><span class="log-in" id="t_off1"><img id="" src="images/t_off.png" align="left" width="54px"/>
					<img src="images/t_signup.png" align="right" onclick="signup()"  style="cursor:pointer"/></span>
					<span class="log-in" id="t_off2"><img id="" src="images/t_on.png" align="left" width="54px"/>
					<img src="images/t_signup.png" align="right" onclick="signup()"  style="cursor:pointer"/></span>
					</h1>
					<p class="float">
						<label for="login"><i class="icon-user"></i><img src="images/t_id.png"/></label>
						<input type="text" name="id" id="id" placeholder="">
						
					</p>


					<p class="float">
						<label for="password"><i class="icon-lock"></i><img src="images/t_password.png"/></label>
						<input type="password" name="pwd" id="pwd" placeholder="" class="showpassword">
					</p>
					
					
							
					<p class="clearfix" align="center"> 

			<img src="images/t_login.png" style="cursor:pointer" onclick="subgo()"/>
			<img src="images/t_find.png" style="cursor:pointer" onclick="findid()"/>

						
					</p>
				</form>​​
			</section>
			
        </div>
	
    </body>
</html>