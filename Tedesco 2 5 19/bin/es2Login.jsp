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
             String sql =  "SELECT Evento From (Cancellazione INNER JOIN Evento on Evento.ID= Cancellazione.ID) INNER JOIN Cittadino on Cittadino:ID = Cancellazione.ID) WHERE Cittadino:ID=? "
             
             ResultSet rs = stmt.executeQuery(sql);
             
             if (rs.next()){
                 out.println("Benvenuto" + rs.getString("username"));
             }
             else{
                 out.println("accesso negato");
             }
             
              connection.close();
               %>

               </body>
            </html>