<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email = request.getParameter("email");
session.putValue("email", email);
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javadb_158", "javadb_158", "ydwdwdaxhw");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from Users2 where email='" + email + "' and fpass='" + password + "'");
try {
 rs.next();
 if (rs.getString("password").equals(password) && rs.getString("email").equals(email)) {
	 response.sendRedirect("index.html");
 } else {
  out.println("Invalid password or username.");
 }
} catch (Exception e) {
 e.printStackTrace();
}
%>