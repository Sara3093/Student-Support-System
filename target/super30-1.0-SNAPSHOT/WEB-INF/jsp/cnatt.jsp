<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>grade display page</title>
    </head>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <style>
        *{
            
            font-family: sans-serif;
            margin:0px;
            padding:0px;
            
        }   
        .top_sec{
            background:rgba(0, 0, 0,0.4) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        text-align: center;
        background-repeat:no-repeat; 
            height:100%;
                width:100%;
        }
        form{
            color: white;
            text-align:center;
            font-size: 18px;
        }

       
        .head li{
            float:left;
            color:white;
            font-size: 23px;
        }
        .head li img{
                
                height: 41px;
                width: 41px;
                margin: -10px -21px;
                background-color: white;
                
            }
            
            .heading h1{
            text-align:center;
            
            
            border: 3px solid black;
            background-color:#192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            position:absolute;
            top:65px;
            left:748px;
        }

        h1{
            font-size: 20px;
            color:white;
            padding: 39px 42px;
        }

            .heading h1{
            text-align:center;
            margin: 40px -250px;
            
            border: 3px solid black;
            background-color:#192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            
        }
    .data{
        font-size: 23px;
        background-color:#ffffffe3;
        width: 927px;         
        height: 280px;
        padding: 57px 35px;
        margin: 132px auto;
        
        
       
    }
 
    .data input{
            margin-left: 12cm;
            font-size: 23px;
        align-content: center;
    }
    .data label{
        font-size: 23px;
        position: absolute;
        margin:5px 23px;
        align-content: center;
    }
    input[type=submit]{
            text-align: center;
            margin: 13px 113px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
            font-size: 23px;
        }
    
    </style>
    <% 
     //String r=(String)  request.getAttribute("da");
     %>
     <body>
         <%//=r%>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
    <h1 style="text-align:center;color: #ffffff;background-color: #003366; ">ATTENDANCE REPORT</h1>
    <div class="top_sec">
         
        <br>
         <form id="Form">
               <input type="radio"  onclick="document.location='satt'" name="s1report" value="sem1"/>Physics
               <input type="radio" onclick="document.location='cnatt'" name="link" value="sem2"/>Computer Networing
               <input type="radio" onclick="document.location='datt'" name="link" value="sem3"/>DA
               <input type="radio" onclick="document.location='coaatt'" name="link" value="sem4"/>COA
                </form>
    
 <%
     Connection con=null;
        Statement st=null;
        Statement t=null;
         Statement qt=null;
         PreparedStatement stmt=null;
          PreparedStatement stmt1=null;
       try{
        
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  

qt= con.createStatement();
t= con.createStatement();

 

//ResultSet rs=st.executeQuery("select (select count(SHRUTI) from pattendance WHERE SHRUTI='present' and datee=r)as tp,(select count(hemangi) from pattendance WHERE hemangi='present'and datee='2023-04-17')as na from pattendance  ");
ResultSet s=t.executeQuery("select count(*)from coaattendance");
//stmt1=con.prepareStatement("select count(SHRUTI) from pattendance WHERE SHRUTI='present'" );
  stmt1=con.prepareStatement("select (select count(SHRUTI) from coaattendance WHERE SHRUTI='present' )as tp,(select count(shruti) from coaattendance WHERE shruti='absent')as na from coaattendance  ");
   ResultSet rs=stmt1.executeQuery();
ResultSet p=qt.executeQuery("select * from APREPORT");

String h[];
h=new String[5];
float A[];    //declaring array
A = new float[20];
String B[];    //declaring array
B = new String[20];
int C[];    //declaring array
C = new int[20];
int i=0;
while(p.next())


{


    { B[i]=p.getString(1);
     }
    





    //String ida=rs.getString("empid");
    
    
   %>
  
<% 
     C[i]=p.getInt(2);
       i=i+1; 
 }
 while(rs.next())
    {

 A[3]=rs.getInt(1);
A[7]=rs.getInt(1)+rs.getInt(2);
}
while(s.next())
    {
    A[2]=s.getInt(1);
    A[1]=A[2]*75/100;
int c=Math.round(A[1]);
    A[4]=c-A[3];
 A[5]=A[3]/A[2]*100;
A[6]=100-A[5];

}
%>
  <h1 style="padding: 25px; border: 2px solid black; color: black; background-color: whitesmoke;  border-radius: 10px; margin-right: 25%;"> TOTAL SESSIONS=    <%=A[2]%> </h1>  
  <% if(A[7]<=A[4])
  
  {
  h[0]="you are going to be in detention";
}
 else
 
  %>
 <h1 style="padding: 25px; border: 2px solid black; color: black; background-color: whitesmoke;  border-radius: 10px; margin-bottom: 2%;margin-right: 25%;" > TOTAL SESSIONS YOU ATTENDED =   <%=A[3]%>;</h1>


 
  <h1 style="padding: 25px; border: 2px solid black; color: black; background-color: whitesmoke;  border-radius: 10px; margin-bottom: 2%; margin-right: 25%;"> NUMBER OF SESSION YOU NEED TO ATTEND TO GET 75% ATTENDANCE = <%=A[4]%> </h1>  
   
<canvas id="myChart" style="width:30%;max-width:400px;max-height: 300px;left-margin:80%; right-margin:20%;align-items:center ; background: whitesmoke;  "></canvas>
<script>
var xValues = ["present", "absent"];
var yValues = [<%=A[5]%>,<%=A[6]%>];



var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChart", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "attendance percentage"
    }
  }
});
</script>

<%

}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        finally
{
       
     
         
         t.close();
        qt.close();
//       stmt.close();
//stmt1.close();
        con.close();
       
}
           
           %>


    </div>
    
</body>
</html>