<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<% 
     String r=(String)  request.getAttribute("us");
     %>
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
   padding-left: 18%;
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
.sidebar header i
{
    color:black;
    font-size: 25px;
   

}
#check{
    display: none;
}
label #btn, label #cancel,label #dash {
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
    top: 12%;
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

.events{
    position: fixed;
    right:0%;
    width: 20%;
    height: 100%;
    background: whitesmoke;
    border: 2px solid black;
    border-radius: 10px;
    text-align: center;
}
</style>
<body>
    <section class="page_3">
        <div class="top_sec">
            <h3 class="emp_man"> <a href="">Welcome  </a></h3>
            <h3 class="home"> <a href="">Home</a></h3>
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
                <header><a href="pinfo"><i class="fa-regular fa-circle-user" id="dash"></i></a> Dashboard</header>
                <ul>
                    <li><a href="cdisplay">Your Courses</a></li>
                    <li><a href="selectcourse">View Grades</a></li>
                    <li><a href="achievments">Achievements</a></li>
                    <li><a href="sc">Attendance</a></li>
                    <li><a href="s1report">semesterly report</a></li>
                    <li><a href="y1report">yearly report</a></li>
                    <li><a href="cp">current sem performance</a><li>
                </ul>
                 
            </div>
            <section class="sec_event">
      <div class="events">
        <h1 style=" font-size: 20px; padding:2% 10%; text-align:center ">Upcoming Events</h1>
            
      <%
           Connection con=null;
        Statement st=null;
       try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * From eventstable where event_date>sysdate");
while(rs.next())
{
    //String ida=rs.getString("empid");
      
   %>
    
   <h2 style="font-size: 20px; padding: 2% 10%"><%=rs.getString(1)%></h2>
   <p style="font-size: 15px; padding: 2% 10%"><%=rs.getString(2)%></p>
       <%
           }
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        finally
{
        st.close();
        con.close();
}
           
           %>
      </div>
    </section>

            
   
</section>
</body>
</html>