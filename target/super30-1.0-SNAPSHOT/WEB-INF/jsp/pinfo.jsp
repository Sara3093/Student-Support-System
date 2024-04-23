<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
    margin-bottom: 15px;
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
.sidebar
{
    position: fixed;
    width: 22%;
    height: 100%;
    background: whitesmoke;
    border: 2px solid black;
    border-radius: 10px;
}
.sidebar header{
    font-size: 20px;
    color: black;
   padding-left: 18%;
    line-height: 70px;
    background-color:rgb(217, 249, 249) ;
    user-select: none;
    font-weight: 700;
    border:2px;
}

.sidebar header i
{
    color:black;
    font-size: 25px;
}
form{
    text-align: center;
    
}
button{
    padding: 10px 20px;
        margin: 3px;
        border-radius: 20px;
        font-size: 16px;
        font-weight: 700;
        cursor: pointer;
}
</style>
<body>
    <section class="page_3">
        <div class="top_sec">
            <h3 class="emp_man"> <a href="">Welcome  </a></h3>
            <h3 class="home"> <a href="home">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
            <%
           String q=(String)  request.getAttribute("sid"); 
  
            Connection con=null;
        PreparedStatement stmt=null;
            try
            {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
            stmt=con.prepareStatement("select * from studentinfo where student_id=?"); 
             stmt.setInt(1,Integer.parseInt(q));
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
             {
            %>

        <div class="sidebar">
            <header><a href="pinfo"><i class="fa-regular fa-circle-user" id="dash"></i></a> Dashboard</header>
                <form action="pinfoform" method="post">
                    PERSONAL INFO:
                    <BR><br>
                    <LABEL>  PRN:</LABEL>
                    <br>
                    <input type="text" name="a"  value="<%=rs.getString("student_id")%>">
                    
                    <BR><br>
                    <label> NAME :</label>
                    <br>
                    <input type="text" name="b"  value="<%=rs.getString("name")%>">
                    
                    <BR><br>
                     <label>DOB:<label>
                             <br>
                    <input type="text" name="c"  value="<%=rs.getString("dob")%>">
                    <br>
                    <BR><!-- comment -->
                     <label>YEAR:</label>
                     <br>
                    <input type="text" name="d" value="<%=rs.getString("year")%>">
                    <br>
                    <BR><!-- comment -->
                    <label>DEPARTMENT:</label>
                    <br>
                    <input type="text" name="e" value="<%=rs.getString("department")%>">
                    <br>
                    <BR>
                    
            <div ALIGN="CENTER">
                <BR>
            <button type="submit" class="button" ALIGN="CENTER">Save</button>
            <%
            }
  }
        catch(Exception e)
        {
            System.out.println(q);
        }
        finally
{
       stmt.close();
//        con.close();
con.close();
}

                    %>


        </div>
        </section>
        </body>