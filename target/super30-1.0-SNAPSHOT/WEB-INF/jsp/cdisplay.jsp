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
.main{
  position: relative;
  padding: 20px;
  width: 50%;
  margin-left: 45%;
}
.main-top{
  display: flex;
  width: 100%;
}
.main-top i{
  position: absolute;
  right: 0;
  margin: 10px 30px;
  color: rgb(110, 109, 109);
  cursor: pointer;
}
.main-skills{
  display: flex;
}
.main-skills .card{
  width: 25%;
  margin: 10px;
  background: #fff;
  text-align: center;
  border-radius: 20px;
  padding: 10px;
  box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
}
.main-skills .card h3{
  margin: 10px;
  text-transform: capitalize;
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
<% 
          
     String r=(String)  request.getAttribute("s");
     %>
      <%
           Connection con=null;
        Statement st=null;
       try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM scourse WHEre student_id= 1");
while(rs.next())
{
    //String ida=rs.getString("empid");
      
   %>
   <section class="main">
    <div class="main-skills">
      <div class="card">
        <i class="fas fa-laptop-code"></i>
        <h3><%=rs.getString(2)%></h3>
      </div>
    </div>

    
  </section>

           
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
            
     
       

        </div>
        </div>
    </section>
</body>
</html>