<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>访客签到</title>
  
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
     <style>
         body{
             background-image: url(css/e.jpg);
             background-repeat:no-repeat}
     </style>
</head>
<body>
   <div align="center">
       <table border="1" align="center" border="1" align="center" style="background: rgba(204,255,250,0.5);"height="60px" width="600px" >
   <caption style="font-size:20px">宿舍成员信息</caption>
             <tr>
   <th>学号</th>
   <th>姓名</th> 
   <th>楼号</th> 
   <th>楼层</th>
   <th>宿舍号</th> 
   <th>价格</th> 
   <th>床位</th>
   
   </tr>
   <%
    //加载JDBC驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    String url ="jdbc:mysql://localhost:3306/sushe?useSSL=false&serverTimezone=UTC";
    //建立连接
    Connection connection = DriverManager.getConnection ( url, "root",
      "root" );
    //SQL语句
    String sql = "select * from dormitory";
    Statement stmt = connection.createStatement ( );
    ResultSet rs = stmt.executeQuery(sql); //返回查询结果
    //如果记录集非空，表明有匹配的用户名和密码，登陆成功
while(rs.next()) {%>
    <tr style="color:white;text-align: center">
   <td><%=rs.getString("adname") %></td>
   <td><%=rs.getString("sname") %></td>
   <td><%=rs.getString("dormitory") %></td>
   <td><%=rs.getString("floor") %></td>
    <td><%=rs.getString("dno") %></td>
   <td><%=rs.getString("prize") %></td>
   <td><%=rs.getString("NUMBER") %></td>
    </tr>
    
    <%}rs.close ( );
    stmt.close ( );
    connection.close ( );
   %>
   </table> 
   <form method="post" name="Login5" action="login.html">
                         <h3 style="margin:0 30px 0 50px;"></h3>
              <input type="submit" name="submit" value="退出"  
                    style="width: 200px; height:50px;margin:0 30px 0 60px;"><br /> </form>
   </div>
</body>
</html>
<!--       <button style="width: 200px; height:50px;margin:0 30px 0 60px;" onclick="history.back()">返回</button><br /> -->