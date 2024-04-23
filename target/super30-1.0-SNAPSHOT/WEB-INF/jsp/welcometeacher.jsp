<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>Student Support System</title>
</head>
<style>
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

.sidebar{
    position: fixed;
    left: -36%;
    width: 22%;
    height: 100%;
    background: whitesmoke;
    border: 2px solid black;
    border-radius: 10px;
    transition: all .5s ease;
}
.sidebar header{
    font-size: 20px;
    color: black;
    text-align: center;
    line-height: 70px;
    background-color:rgb(217, 249, 249) ;
    user-select: none;
    font-weight: 700;
}
.sidebar ul a{
    display: block;
    height: 100%;
    width: 100%;
    line-height: 60px;
    font-size: 18px;
    font-weight: 500;
    color: black;
    padding-left: 10%;
    box-sizing: border-box;
    border-top: 1px solid black;
    border-bottom: 1px solid black;
}
#check{
    display: none;
}
label #btn, label #cancel {
    position: absolute;
    cursor: pointer;
    background: dimgray;
    border-radius: 3px;
}
label #btn
{
    left: 2%;
    top: 8%;
    font-size: 25px;
    color: white;
    padding: 6px 12px;
    transition: all .5s;
}
label #cancel
{
    z-index: 1111;
    left: -20%;
    top: 10%;
    font-size: 30px;  
    color: black; 
    padding: 4px 9px;
    transition: all .5s ease;
}
#check:checked ~ .sidebar{
    left: 0;
}
#check:checked ~ label #btn
{
    left: 5%;
    opacity: 0;
    pointer-events: none;
}
#check:checked ~ label #cancel
{
    left: 18%;
}
.stud_block_1
{
    display: flex;
    width: 100%;
    padding-left: 35%;
    padding-top: 3%;
}
.stud_block_2
{
    display: flex;
    width: 100%;
    padding-left: 35%;
    padding-top: 3%;
}
.emp_cnt, .num_dept, .leave_app, .num_grade
{
    background-color: whitesmoke;
    margin:2% 4%;
    padding: 40px 60px 120px 30px;
    border: 2px solid black;
    border-radius: 30px;
    box-shadow: 0px 10px 0px rgb(59, 58, 58);
}
.icon
{
    padding :40px 60px 120px 30px;
    margin-left: 60%;
    margin-top: 6%;
    cursor:pointer;
}
</style>
 <% 
     String r=(String)  request.getAttribute("us");
     %>
<body>
    <section class="page_3">
        <div class="top_sec">
            <h3 class="emp_man"> Welcome <%=r%> </h3>
            <h3 class="dashboard"><a href="homepage">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
    
    <section class="stud_details">
        <section class="stud_data">
            <input type="checkbox" id="check">
            <label for="check">
                <i  class="fas fa-bars" id="btn"></i>
                <i  class="fas fa-times" id="cancel"></i>
            </label>
            <div  class="sidebar">
                <header>Dashboard</header>
                <ul>
                    <li><a href="courses">COURSES</a></li>
                    <li><a href="achievementdisplay">  Achievements</a></li>
                   
                    <li><a href="repo">Reports</a></li>
                    <li><a href="event">add event</a></li>
                </ul>
            </div>
            <div class="icon">
            
                <img src="https://lh3.googleusercontent.com/CDtNdJO2JIbO2pk_5w4dEE_QxFIpm5VgOAdD7iWOVOnapAbf0N2ZyEYdZShax9QtZFwi"  left="10%";right="20%"height="150px" width="150px"; onclick="document.location='apage'";>
                <br>
            </div>
        
        </section>
</section>
</body>
</html>