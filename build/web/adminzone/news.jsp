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
                    <h2 style="color:blue;text-align:center;">Add News & Events</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                        <table class="table table-bordered" style="width:70%;margin:auto;">
                            <tr>
                                <td>Enter News</td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Add</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br/>
                    <h2 style="text-align:center;color:blue;">News Management</h2>
                    <table class="table table-bordered" style="width:80%;margin: auto;">
                        <tr>
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from news");
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getInt("id")%></td>
                            <td><%=rs.getString("newstext")%></td>
                            <td><%=rs.getString("posteddate")%></td>
                            <td>
                                <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
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