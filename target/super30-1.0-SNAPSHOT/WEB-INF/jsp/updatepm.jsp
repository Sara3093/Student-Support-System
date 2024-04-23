b<%-- 
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
            <h3 class="emp_man"> Welcome </h3>
            <h3 class="home"><a href="dashboard">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
    
                <header>
       
        </header>
    
        <br>
        
        <div class="heading"  align="center">
           
           <h1>Update Marks</h1><br>
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
            <form action="updform" method="post">
            <div align="center">
           
                <div align="center">
           
            <div class="data" align="center">
                <div class="row">
               
            <input type="hidden" name="id" value="<%out.println(id2);%>">
            
            <label>student Name</label>
           <input type="text" name="name" value="<%=rs.getString("student_NAME")%>">
            </div>
            <br>
            <hr>
            
            <div class="row"><!-- comment -->
             <label> practical1</label>
           <input type="text" name="practical1" value="<%=rs.getString("practical1")%>">
            <label>practical2</label><!-- comment --> 
                <input type="text" name="practical2" value="<%=rs.getString("practical2")%>">
            </div>
            <br>
            <div class="row"><!-- comment -->
                <label> Practical3</label>
                <input type="text" name="practical3" value="<%=rs.getString("practical3")%>">                
                 <label>practical4 </label>
                  <input type="text" name="practical4" value="<%=rs.getString("practical4")%>">
            </div>
            <br>
            <div ALIGN="CENTER">
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
            
        
        
        
    </body>
</html>
