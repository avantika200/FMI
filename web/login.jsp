<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 10:09:26 AM
    Author     : Softpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height:600px;background-color:aqua;"></div>
                <div class="col-sm-8" style="min-height:600px;background-color:aliceblue;">
                    <h2 style="color:blue;text-align:center;">Admin Login</h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="login"/>                       
                        <table class="table" style="margin:0 auto;width:80%;">
                            <tr>
                                <td>Enter Userid</td>
                                <td>
                                    <input type="text" name="userid" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Password</td>
                                <td>
                                    <input type="password" name="password" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Login</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
