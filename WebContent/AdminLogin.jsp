<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta content=" text/html charset=UTF-8">
    <title></title>
    <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/css/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="css/AdminLogin.css" rel="stylesheet">


</head>
<body>
<div>
<jsp:include page="Link.jsp"></jsp:include>
</div>
<br>
<br>
<header>
<div class="container-fluid center-click text-center">
    <div class="jumbotron">
        <h1>WELCOME ADMIN</h1>
        <br>
        <button type="button" class="btn btn-info  btn-lg loginBTN " data-toggle="modal" data-target="#myModal">LOGIN<span class="glyphicon glyphicon-log-in"></span></button>
    </div>
    <div class="modal fade" id="myModal" role="form">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h3 align="left">PLEASE LOGIN</h3>
                    <button type="button" class="close" data-dismiss="modal">close&times;</button>
                </div>

                <div class="modal-body">
                    <form action="adminlogin" method="post" class="form-horizontal center-form">


                        <div class="form-group">
                            <label class="control-label col-sm-2" for="ADMINID">ADMIN ID:</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="ADMINID" name="adminid" placeholder="ADMIN ID">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-2" for="PASSKEY">PASSWORD:</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="PASSKEY" name="passkey" placeholder="Password">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-primary">LOGIN<span class="glyphicon glyphicon-log-in"></button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <a href="">Need Help..?</a>
                </div>
            </div>
        </div>
    </div>
</div>
</header>
<!--modal window-->
<footer class="container-fluid footer text-center">
    <br><br>
    <p>Created by- G2</p>
</footer>

</body>
</html> --%>