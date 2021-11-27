<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String email = request.getParameter("email");
String fpass = request.getParameter("pswd1");
String spass = request.getParameter("pswd2");
try {
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javadb_158", "javadb_158", "ydwdwdaxhw");
 Statement st = conn.createStatement();
 int i = st.executeUpdate("insert into users2(email,fpass,spass)values('" +email+"','"+fpass+"','"+spass+"')");
 response.sendRedirect("login.html");
		 
} catch (Exception e) {
 System.out.print(e);
 e.printStackTrace();
}
%>