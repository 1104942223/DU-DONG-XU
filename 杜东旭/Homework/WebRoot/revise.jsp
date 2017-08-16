<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
   	<h1>插入成功</h1>
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
    	String username=request.getParameter("username");
    	byte b[]=username.getBytes("ISO-8859-1");    	
    	username=new String (b,"UTF-8");
    	String bir=request.getParameter("bir");
    	String date=request.getParameter("date");
    	String job=request.getParameter("job");
    	byte c[]=job.getBytes("ISO-8859-1");
    	job=new String (c,"UTF-8");
    	String sala=request.getParameter("sala");
    	Integer sala1=Integer.valueOf(sala);
   		Class.forName("com.mysql.jdbc.Driver");
   		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstsql","root","132207");
   		Statement stmt=con.createStatement();
   		try{
   		String sql="update employee set birthday='"+bir+"',entry_date='"+date+"',job='"+job+"',salaly='"+sala+"' where username='"+username+"'";
   		stmt.executeUpdate(sql);
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
    		con.close();}catch(Exception e){
   		out.print(e.toString());
   		}
    		%>
    	</table>
    	<p><a href="index.jsp">返回上一页</a></p>
  </body>
</html>
