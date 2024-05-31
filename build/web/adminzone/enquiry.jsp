<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 10:10:49 AM
    Author     : Softpro
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue;">
                    <h2 style="text-align:center;color:blue;">Enquiry Management</h2>
                    <table class="table table-bordered" style="width:90%;margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Enquiry Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            String query="select * from enquiry";
                            ResultSet rs=dm.select(query);
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getInt("id")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailaddress")%></td>
                            <td><%=rs.getString("enquirytext")%></td>
                            <td><%=rs.getString("enquirydate")%></td>
                            <td>
                                <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                        
                        <%  }  %>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" style="height:80px;background-color:black;color:white;font-size:25px;text-align:center;line-height:80px;">
                    Copyright &copy; to Farmer Merchant Integration
                </div>
                <div class="col-sm-6" style="height:80px;background-color:navy;color:white;font-size:25px;text-align:center;line-height:80px;">
                    Developed By:- Brijesh Mishra
                </div>
            </div>
        </div>
    </body>
</html>
<% } %>