<%-- 
    Document   : yearly report
    Created on : 08-May-2023, 11:34:47 pm
    Author     : shruti
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Support System</title>
</head>
<style>
    *{
        margin: 0px;
        padding: 0px;
    }
    .top_sec {
        background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        
        background-repeat: no-repeat;
        align-items: center;
    }
    .heading{
        text-align: center;
        padding-top: 5%;
        font-size: 24px;
        color: whitesmoke;
        
    }
    table{
        border-collapse: collapse;
        border-radius: 10px;
        margin: auto;
        padding: auto;
        height: 150px;
        width:65%;
        background-color: whitesmoke;
        padding: 2%;
       
    }
    .stud_info{
        
        margin: 3%;
    }
    .stud_grade{
        
        margin: 3%;
    }
    th{
        padding: 1.8% 1%;
    }
    span{
        font-weight: bold;
        font-size: 18px;
    }
    td{
        padding: 0.5%;
        font-size: 18px;
    }
</style>

<body>
    <section class="top_sec">
        <div class="heading">
             <form id="Form">
                       <input type="radio"  onclick="document.location='y1report'" name="s1report" value="sem1"/>1st year
                          <input type="radio" onclick="document.location='y2report'" name="link" value="sem2"/>2nd year
                    <input type="radio" onclick="document.location='y3report'" name="link" value="sem3"/>3rd year
                     <input type="radio" onclick="document.location='y4report'" name="link" value="sem3"/>4th year
                </form>
            <h1>GRADE CARD</h1>
        </div>
        <h1> NOO REPORT PRESENT</H1>
            </table>
            
        </div>
</body>
</html>
