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
                    <h2 style="color:blue;text-align:center;">List Of Farmers</h2>
                    <table class="table table-bordered">
                        <tr>
                            <th>Reg.Id</th>
                            <th>Name</th>
                            <th>Village</th>
                            <th>Post</th>
                            <th>District</th>
                            <th>State</th>
                            <th>Pin Code</th>
                            <th>Contact No</th>
                            <th>Aadhar No</th>
                            <th>Book</th>
                            <th>View</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from farmerinfo");
                            while(rs.next())                        
                            {
                        %>
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("village")%></td>
                            <td><%=rs.getString("post")%></td>
                            <td><%=rs.getString("district")%></td>
                            <td><%=rs.getString("state")%></td>
                            <td><%=rs.getString("pincode")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td>
                                <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-success">Book</button>
                                </a>
                            </td>
                            <td>
                                <a href="view.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-primary">View</button>
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