<%-- 
    Document   : cour
    Created on : 13-Mar-2023, 5:28:45 pm
    Author     : shruti
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/9564a968bf.js" crossorigin="anonymous"></script>
    <title>Student Support System</title>
</head>
<style>
    
    .course_head, .course_nm_head{
        display: block;
        justify-content: center;
        align-items: center;
    }
    .courses{
        align-items: center;
        display: block;
        padding: 10px 7px;
        font-size: 22px;
        font-weight: 700;
        border-radius: 15px;
        cursor: pointer;
        margin-top: 3%;
         text-align: center;
    }
    .course_nm{
        align-items: center;
        padding: 13px 50px;
        font-size: 22px;
        font-weight: 700;
        border-radius: 15px;
        cursor: pointer;
        margin-top: 7%;
        margin-left: 2%;
    }
    *{
    padding: 0;
    margin: 0;
    font-family: 'Montserrat', sans-serif;
    list-style: none;
    text-decoration: none;
}
.page_3
{
    background:rgba(0,0,0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png); 
    background-size: cover; 
    background-blend-mode: darken; 
    height: 100vh; 
    position: relative;
    text-align: center;
    background-repeat: no-repeat;
}
.top_sec
{
    padding: 3px 5px; 
    display: flex; 
    background-color: white;
    max-width: 100%;;
    border: 3px solid black; 
    margin-bottom: 20px;
    color: black;
}
.emp_man
{
    width:85%;
}
.home
{
    padding-right: 20px;
    cursor: pointer;
}


</style>
<body>
     <section class="page_3">
        <div class="top_sec">
            <h3 class="emp_man"> <a href="">Welcome  </a></h3>
            <h3 class="home"> <a href="">Home</a></h3>
            <h3><a href="">Logout</a></h3>
        </div>
    
   <div class="heading">
   <br>
        <div class="course_nm_head">
 
            <div class="course_name">
                <button  value="physic" onclick="document.location='viewmarkss?paramName=physics'" class="course_nm">physics</button>
            <button  value="coa" onclick="document.location='coam?paramName=coa'" class="course_nm">coa</button><br>
            <button value="cn" onclick="document.location='cnm?paramName=cn'" class="course_nm">computer networking</button>
            <button  value="da" onclick="document.location='dam?paramName=da'" class="course_nm"> DA</button>
          
            <br>
            </div>
            
     
       

        </div>
        </div>
    </section>
</body>
</html>
