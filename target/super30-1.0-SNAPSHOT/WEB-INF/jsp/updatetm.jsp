<%-- 
    Document   : updatepm
    Created on : 16-Mar-2023, 7:02:32 pm
    Author     : shruti
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
        .top-sec{

            background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
            background-size: cover;
            background-blend-mode: darken;
            height: 100vh;
            position: relative;
            text-align: center;
            background-repeat: no-repeat;
        
        }
        form{
            background-color: whitesmoke;
            border: 2px solid black;
            width:max-content; 
            padding: 80px 60px 60px 60px; 
            border-radius: 20px;
        }
        .top_sec{
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        label{
            font-size: 18px;
            font-weight: 500;
        }
        .button{
            margin-top: 50px; 
            padding: 6px 50px; 
            font-size: 18px;
            font-weight: 700;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }
        .topsec
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
         <div class="topsec">
            <h3 class="emp_man"> Welcome  </h3>
            <h3 class="home"><a href="dashboard">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
    
        <div class="top-sec">
            <header>
       
            </header>
        
            <br>
            
            <div class="heading"  align="center">
               
               <h1 style="color: white;" >Update Marks</h1><br>
               <br>
               <br>
               
            </div>
            <%
            String id=request.getParameter("id");
            int id2= Integer.parseInt(id);
            Connection con=null;
        PreparedStatement stmt=null;
            try
            {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
            stmt=con.prepareStatement("select * from physicsm  where student_id="+id2); 
            
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
             {
            %>
            <div class="top_sec">
                <form class="form" action="updtform" method="post">
                    <div align="center">
                   
                        <div align="center">
                   
                    <div class="data" align="center">
                        <div class="row">
                       
                    <input type="hidden" name="id" value="<%out.println(id2);%>">
                    
                    <label>Student Name</label><br>
                   <input style="font-size: 15px; padding: 5px;" type="text" name="name" value="<%=rs.getString("student_NAME")%>">
                    </div>
                    <br>
                    
                    <div class="row"><!-- comment -->
                     <label> Mid Semester</label><br>
                   <input style="font-size: 15px; padding: 5px;" type="text" name="midsem" value="<%=rs.getString("midsem")%>">
                   <br>
                   <br>
                    <label>End Semester</label><!-- comment --> <br>
                        <input style="font-size: 15px; padding: 5px;" type="text" name="endsem" value="<%=rs.getString("endsem")%>">
                    </div>
                    <br>
                    
                    <br>
                    <div >
                    <button type="submit" class="button">Save</button>
                    <br>
                     <br>
                      
                     </div>  
                      <br>
                    </div>
                    </div>
                     
                    
                </form>
                <%
            }
            }
        catch(Exception e)
        {
            System.out.println("e");
        }
        finally
{
        stmt.close();
        con.close();
}

                    %>
            </div>
           
        </div>
               
    </body>
</html>
