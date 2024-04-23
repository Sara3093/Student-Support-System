<%-- 
    Document   : homepage
    Created on : 11-Mar-2023, 11:06:41 am
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
<style>
    *{
        margin: 0px;
        padding: 0px;
    }

    .heading {
        background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        text-align: center;
        background-repeat: no-repeat;
    }
    .portal_head{
        font-size: 25px;
      
        letter-spacing: 2.5px;
        color: whitesmoke;
    }
    .login{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .stud_login{
        align-items: center; 
        border: 2px solid black;
        width: 23%;
        padding: 1.5% 0%;
        margin-top: 3.5%;
        
        background-color:grey;
        border-radius: 20px;
    }
    .admin_button, .employee_button{
        padding: 10px 7px;
        margin: 3px;
        border-radius: 20px;
        font-size: 16px;
        font-weight: 700;
        cursor: pointer;
    }
</style>
<body>
    <section class="heading">
        <div style="font-size: 25px;padding: 30px;letter-spacing: 2.5px;color: whitesmoke;" class="portal_head">
            <marquee behaviour="slide" width="50%"><h1><b>WELCOME TO STUDENT SUPPORT SYSTEM</b></h1></marquee>
        </div>
        <div class="login">
            <div class="stud_login">
                <img src="https://cdn1.iconfinder.com/data/icons/education-1-15/151/1-512.png" height="150px" width="150px">
                <br>
                <button onclick="document.location='studentlogin'" class="admin_button">Login as a Student</button>
                <br>
                <br>
                <img src="http://icons.iconarchive.com/icons/aha-soft/free-large-boss/512/Teacher-icon.png"height="150px" width="150px" >
                <br>
                <button onclick="document.location='teacherlogin'" class="employee_button">Login as a Teacher</button>
            </div>
        </div>
    </section>
</body>
</html>