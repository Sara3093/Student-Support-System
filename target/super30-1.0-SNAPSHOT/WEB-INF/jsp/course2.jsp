<%-- 
    Document   : course2
    Created on : 12-Mar-2023, 8:00:08 pm
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
    <script src="https://kit.fontawesome.com/9564a968bf.js" crossorigin="anonymous"></script>
    <title>Student Support System</title>
</head>
<style>
    *{
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
    }
    .teacher{
        background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .teacher_dashboard{
        align-items: center; 
        border: 2px solid black;
        width: 23%;
        margin-top: 3.5%;
        padding: 3% 2%; 
        background-color:whitesmoke;
        border-radius: 20px;
    }
    .teacher_dashboard ul{
        display: block;
        list-style: none;
    }
    .teacher_dashboard ul li{
        
        margin:30px;
        padding: 5px;
        border-bottom: 1px solid black;
    }
    .teacher_dashboard ul li a{
        text-decoration: none;
        color:black;
        font-size: 20px;
        transition: all 0.3s;
    }
    .teacher_dashboard ul li:hover{
        background-color:background;
        padding: 3.5% 2.5%;
        border-radius: 3px;
    }
    .drop_down{
        display: none;
    }
    .teacher_dashboard ul li:hover .drop_down{
        display: block;
        position: absolute;
        background-color:whitesmoke;
        margin-top:-5%;
        margin-left: 13%;
        border: 2px solid black;
        border-radius: 20px;

    }
    .teacher_dashboard ul li:hover .drop_down ul{
        display: block;
        margin: 10px;
    }
    .teacher_dashboard ul li:hover .drop_down ul li{
        width: 80%;
        padding: 10px;
        border-bottom: 1px solid black;
        border-radius: 0px;
    }
    .teacher_dashboard ul li:hover .drop_down ul li:last-child{
        border-bottom: none;
    }
    .fa-solid{
        float: right;
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
     <div class="top_sec">
            <h3 class="emp_man"> Welcome  </h3>
            <h3 class="home"><a href="dashboard">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
    
    <section class="teacher">
        <div class="teacher_dashboard">
            <ul>
                <li><a class="active" href="nophyenroll">Number of Students</a></li>
                <li><a href="">Enter Marks <i class="fa-solid fa-caret-right"></i></a>
                <div class="drop_down">
                    <ul>
                        <li><a href="phytheory">Theory</a></li>
                        <li><a href="phypract">Practical</a></li>
                        <li><a href="phyia">Internal Assesment</a></li>
                    </ul>
                </div>
                </li>
                <li><a href="viewmarks">View Marks</a></li>
            </ul>
        </div>
    </section>
</body>
</html>
