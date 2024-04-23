<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
    .heading,.mid_heading{
        text-align: center;
        padding-top: 5%;
        
        color: whitesmoke;
        
    }
    table{
        border-collapse: collapse;
        border-radius: 10px;
        margin: auto;
        padding: auto;
        height: 150px;
        width:55%;
        background-color: whitesmoke;
        padding: 2%;
       
    }
    .stud_info{
        
        margin: 2%;
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
     <% 
        String s,t,u,v;  
     String r=(String)  request.getAttribute("sid");
     int p;
     %>
         <%
     Connection con=null;
       
         PreparedStatement stmt=null;
         Statement st=null;
         Statement qt=null;
         Statement rt=null;
         Statement pt=null;
         Statement vt=null;
         Statement wt=null;
          Statement xt=null;
         Statement yt=null;
         Statement zt=null;
         Statement at=null;
         Statement bt=null;
         Statement ct=null;
       try{
        
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  



 

//ResultSet rs=st.executeQuery("select (select count(SHRUTI) from pattendance WHERE SHRUTI='present' and datee=r)as tp,(select count(hemangi) from pattendance WHERE hemangi='present'and datee='2023-04-17')as na from pattendance  ");





con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
qt= con.createStatement();
rt= con.createStatement();
pt= con.createStatement();
vt= con.createStatement();
wt= con.createStatement();
xt= con.createStatement();
yt= con.createStatement();
zt= con.createStatement();
at= con.createStatement();
bt= con.createStatement();
ct= con.createStatement();
ResultSet rs=st.executeQuery("SELECT (mindsem  + practical1 + practical2 + ia1 + ia2 ) AS total_marks FROM dam WHERE student_id ="+r);
ResultSet ts=qt.executeQuery("SELECT (mindsem  + practical1 + practical2 + ia1 + ia2 ) AS total_marks FROM cnm WHERE student_id ="+r);
ResultSet hs=rt.executeQuery("SELECT (mindsem  + practical1 + practical2 + ia1 + ia2 ) AS total_marks FROM coam WHERE student_id ="+r);
//
ResultSet ss=pt.executeQuery("SELECT  (practical1 + practical2 ) AS total_marks FROM dam WHERE student_id ="+r);
ResultSet us=vt.executeQuery("SELECT (practical1 + practical2  ) AS total_marks FROM cnm WHERE student_id ="+r);
ResultSet vs=wt.executeQuery("SELECT (practical1 + practical2  ) AS total_marks FROM coam WHERE student_id ="+r);

ResultSet ws=xt.executeQuery("SELECT  (ia1+ia2 ) AS total_marks FROM dam WHERE student_id ="+r);
ResultSet xs=yt.executeQuery("SELECT (ia1+ia2 ) AS total_marks FROM cnm WHERE student_id ="+r);
ResultSet ys=zt.executeQuery("SELECT (ia1+ia2 ) AS total_marks FROM coam WHERE student_id ="+r);

ResultSet zs=at.executeQuery("SELECT  (mindsem ) AS total_marks FROM dam WHERE student_id ="+r);
ResultSet as=bt.executeQuery("SELECT (mindsem) AS total_marks FROM cnm WHERE student_id ="+r);
ResultSet bs=ct.executeQuery("SELECT (mindsem ) AS total_marks FROM coam WHERE student_id ="+r);
while(rs.next())

while(ts.next())
while(hs.next())
while(ss.next())

while(us.next())
while(vs.next())
while(ws.next())

while(xs.next())
while(ys.next())
while(zs.next())

while(as.next())
while(bs.next())
{
{
{    {{{{{{{{{        
 int a=rs.getInt(1);
 int b=rs.getInt(1);
 int c=rs.getInt(1);
if(a>b && a>c)
 s="da";
 else if(b>a && b>c)
 {
 s="computer networking";
             }
             else
             {
             s="coa";
             }
  
             int d=ss.getInt(1);
 int e=us.getInt(1);
 int f=vs.getInt(1);
if(d<e && d<f)
 t="da";
 else if(e<f && e<d)
 {
 t="computer networking";
             }
             else
             {
             t="coa";
             }
  //m theory
   int g=xs.getInt(1);
 int h=ys.getInt(1);
 int i=ws.getInt(1);
if(g<h && g<i)
 u="da";
 else if(h<i && h<g)
 {
 u="computer networking";
             }
             else
             {
             u="coa";
             }
             //mia
              int j=zs.getInt(1);
 int k=as.getInt(1);
 int l=bs.getInt(1);
if(j<k && j<l)
{
 v="da";
             }
else if(k<l || k<j)
 {
 v="computer networking";
             }
    else
    {
      v="coa";
       }
                       


    //String ida=rs.getString("empid");
    
    
   %>
    <section class="top_sec">
        <div class="heading">
            <h1 style="font-size: 24px; margin-bottom: 3%;">CURRENT SEMESTER PERFORMANCE</h1>
        </div>
        <div class="stud_info">
            <table border="1px">
                <tr>
                    <td>Course to improve</td>
                    <td> <%=s%> </td>
                </tr>
                <tr>
                    <td>Least Practical Marks</td>
                    <td><%=t%> </td>
                </tr>
                <tr>
                    <td>Least IA Marks</td>
                    <td> <%=u%> </td>
                </tr>
                <tr>
                    <td>Least Theory Marks</td>
                    <td> <%=v%> </td>
                </tr>
            </table>
        </div>
        <div class="mid_heading">
            <h2>Passing Marks</h2>
        </div>
        <div class="stud_grade">
            <table border="1px">
                <tr >
                    <th>Subject</th>
                    <th>IA</th>
                    <th>Theory</th>
                </tr>
                <tr>
                    <td>CN</td>
                    <td><%=(32-g)%></td>
                    <td> <%=(40-j)%></td>
                </tr>
                <tr>
                    <td>COA</td>
                    <td><%=(32-h)%></td>
                    <td><%=(40-k)%></td>
                </tr>
                <tr>
                    <td>DA</td>
                    <td><%=(32-i)%></td>
                    <td><%=(40-l)%></td>
                </tr>
                 <%
                      
           }  }   } }}}}}}}}}

}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        finally
{
        st.close();
        qt.close();
        rt.close();
        pt.close();
        vt.close();
        wt.close();
        xt.close();
        yt.close();
        zt.close();
        at.close();
        bt.close();
        ct.close();
        con.close();

}
           
           %>
                
            </table>
            
        </div>
</body>
</html>