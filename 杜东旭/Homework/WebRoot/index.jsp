<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>增删改查</title>
  </head>
  
  <body>
  	    <h1>employee表</h1>
  	    <hr>	
  	    <table border="1">
  	    	<tr>
  	    		<td>编号</td>
  	    		<td>姓名</td>
  	    		<td>生日</td>
  	    		<td>入职日期</td>
  	    		<td>职业</td>
  	    		<td>工资</td>
  	    	</tr>
   <%
   		Class.forName("com.mysql.jdbc.Driver");
   		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstsql","root","132207");
   		Statement stmt=con.createStatement();
   		ResultSet rs=stmt.executeQuery("select * from employee");
   		while (rs.next()){
    %>
    		<tr>
    			<td><%=rs.getString(1) %>
    			<td><%=rs.getString(2) %>
    		 	<td><%=rs.getString(3) %>
    		 	<td><%=rs.getString(4) %>
    		 	<td><%=rs.getString(5) %>
    		 	<td><%=rs.getString(6) %>
    		</tr>
    		<%
    		}
    		rs.close();
    		stmt.close();
    		con.close();
    		%>
    		</table>
    		<hr>
    		<h1>输入要增加的信息</h1>
    <form action="add.jsp" method="post">
		<tr>
			<td>姓名</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>生日</td>
			<td><input type="text" name="bir"></td>
		</tr>
		<tr>
			<td>入职日期</td>
			<td><input type="text" name="date"></td>
		</tr>
		<tr>
			<td>职业</td>
			<td><input type="text" name="job"></td>
		</tr>
		<tr>
			<td>工资</td>
			<td><input type="text" name="sala"></td>
		</tr>
		<tr>
			<td><input type="submit" value="提交"></td>
			<td><input type="reset" value="取消"></td>
		</tr>
	</form>
    	<hr>
    	<br>
    	
    	
    		<form action="delete.jsp" method="post">
		<tr>
			<td>请输入要删除的序号</td>
			<td><input type="text" name="delete"></td>
		</tr>
		<tr>
			<td><input type="submit" value="提交"></td>
			<td><input type="reset" value="取消"></td>
		</tr>
	</form>
		<hr>
		<br>
		
		
		<h1>请输入要修改的信息:///除姓名之外</h1>
		<form action="revise.jsp" method="post">
		<tr>
			<td>姓名</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>生日</td>
			<td><input type="text" name="bir"></td>
		</tr>
		<tr>
			<td>入职日期</td>
			<td><input type="text" name="date"></td>
		</tr>
		<tr>
			<td>职业</td>
			<td><input type="text" name="job"></td>
		</tr>
		<tr>
			<td>工资</td>
			<td><input type="text" name="sala"></td>
		</tr>
		<tr>
			<td><input type="submit" value="提交"></td>
			<td><input type="reset" value="取消"></td>
		</tr>		
		</form>
  </body>
</html>
