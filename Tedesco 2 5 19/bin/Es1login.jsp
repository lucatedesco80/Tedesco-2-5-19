<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
  <body>
  
  <%
  
   String connectionUrl = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=XFactor;user=luca.tedesco;password=xxx123#";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connectionUrl);

             Statement stmt = connection.createStatement();
             String sql = "SELECT *FROM Utente WHERE username '"+ request.getParameter("username") + "' AND password = '"+request.getParameter("psw")+"'";
             
             ResultSet rs = stmt.executeQuery(sql);
             
             if (rs.next()){
                 out.println("Benvenuto" + rs.getString("username"));
             }
             else{
                 out.println("Non puoi eliminare eventi che non hai inserito tu ");
                 else{
                     out.println("Evento inesistente");
                 }
             }
             
              connection.close();
               %>
               
               </body>
            </html> 