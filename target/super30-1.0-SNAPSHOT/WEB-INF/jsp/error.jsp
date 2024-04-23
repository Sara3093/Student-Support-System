<%-- 
    Document   : homepage
    Created on : 07-Mar-2023, 10:19:50 pm
    Author     : shruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <title>Student Support System</title>
</head>
 
        <script>
            function clearErrors(){
                errors=document.getElementsByClassName('formerror');
                for(let item of errors)
                {
                    item.innerHTML="";
                }
            }
            function seterror(id,error){
                element=document.getElementById(id);
                element.getElementsByClassName('formerror')[0].innerHTML=error;
            }
            
            function validateForm(){
                var returnval=true;
                clearErrors();
                var name= document.forms['myForm']["b"].value;
                if(name ==""){
                    seterror("name","*this field is required");
                    returnval=false;
                }
                
                var pass= document.forms['myForm']["c"].value;
                if(pass == ""){
                    seterror("pass","*this field is required");
                    returnval=false;
                }
                  
                  return returnval;
            }
        </script>
        <style>
            .error{
            font-size: 15px;
            color:red;
        }
        </style>
<body>
    <section style="background-image: url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png); background-size: cover; background-blend-mode: lighten; height: 100vh; position: relative; text-align: center;" class="login_admin" >
        <button style="margin-top: 25px; margin-bottom: 80px; padding: 8px 12px; font-size: 22px; font-weight: 700; border-radius: 5px; " class="admin_button">Teacher Login</button>
        <section style="display: flex;justify-content: center;align-items: center;" class="form-container">
    <form style="border: 2px solid black; background-color:whitesmoke;width:max-content; padding: 60px 60px 60px 60px; border-radius: 25px;" action="processform" name="myForm" onsubmit="return validateForm()" method="post">
            <div class="error" ">
                <%
                    String k= (String) request.getAttribute("ero");
                    %>
                   <b><%=k%></b>
            </div>
                <div class="details_form">
                    <div class="form-group">
                        <label style="font-size: 18px" for="username">Enter Your Username</label>
                        <br>
                        <input style="font-size: 15px; padding: 5px;" type="text" id="username" name="b" required>
                    </div>
                    <br>
                    <br>
                    <div class="form-group">
                        <label style="font-size: 18px" for="password">Enter Your Password</label>
                        <br>
                        <input style="font-size: 15px; padding: 5px;" type="password" id="password" name="c" required>
                    </div>
                    <div class="submit" >
                       <input style="margin-top: 50px; padding: 6px 50px; font-size: 18px;font-weight: 700;border-radius: 5px;cursor: pointer;" type="submit" value="confirm">
                    </div>
                    <p style="cursor: pointer;"><a href="fpass"><i>Forgot Password?</i></a></p>
                 </div>
                 

        </form>
        </section>
    </section>
</body>
</html>