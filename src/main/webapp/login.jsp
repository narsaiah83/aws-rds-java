<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
<<<<<<< HEAD
    Connection con = DriverManager.getConnection("jdbc:mysql://mydb.cnf9rulncuju.us-east-1.rds.amazonaws.com:3306/jwt","admin", "admin123");
=======
    Connection con = DriverManager.getConnection("jdbc:mysql://myreplicadb.cnf9rulncuju.us-east-1.rds.amazonaws.com:3306/jwt", "admin", "admin123");
>>>>>>> 9e44dc8 (rplicadb added)
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from USER where userName='" +userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userName", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
