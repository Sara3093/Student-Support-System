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
    .heading{
        background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        text-align: center;
        background-repeat: no-repeat;
    }
    .course_head, .course_nm_head{
        display: block;
        justify-content: center;
        align-items: center;
    }
    .courses{
        align-items: center;
        padding: 10px 7px;
        font-size: 22px;
        font-weight: 700;
        border-radius: 15px;
        cursor: pointer;
        margin-top: 3%;
    }
    .course_nm{
        align-items: center;
        padding: 13px 50px;
        font-size: 22px;
        font-weight: 700;
        border-radius: 15px;
        cursor: pointer;
        margin-top: 7%;
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
    
    <% 
          
     String r=(String)  request.getAttribute("tID");
   
    
     String m=(String)  request.getAttribute("c_name");          
        %>
    <section class="heading">
        <div class="course_head">
            <button onclick="document.location=''" class="courses">Courses</button>
        </div>
          <%
           Connection con=null;
        Statement st=null;
       try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM courses WHEre teacher_id= "+r);
while(rs.next())
{
    //String ida=rs.getString("empid");
      
   %>
   <br>
        <div class="course_nm_head">
            <button onclick="document.location='course2'" class="course_nm"><%=rs.getString(2)%></button>
            <br>
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
</body>
</html>
