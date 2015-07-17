<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>MnL 반응형 웹</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<script type="text/javascript">
$(document).ready( function() {
	
	
	
	$("#id").focusout(function() {
		
		var idtext = $('#id').val();
		//console.log(idtext);
		
		 $.ajax({
             url : "../go/IDcheck",
             method : "get",
             data : {"id":idtext},
             dataType : "text", //넘어갈 데이터 타입을 정해준다.
             success : function(responseData, status, xhr) {
            	 console.log(responseData);
            	 $("#p33").text("    =>  ");
            	 if(responseData==0){
            		 $("#view").text("");
            		 $("#view2").text("아이디 사용가능");
            	 }else{
            		 $("#view").text("아이디 중복");
            		 $("#view2").text("");
            	 }
            	 
             }
		 })

	});
});

</script>

<style type="text/css">
	p2{
		color:#ff0000;
	}
	p3{
	}
	p4{
		color:#0859FC;
	}

</style>
</head>
<!--


DB연동해서 결과값 1 나오면 window.onload() => index.php
session에 값 올리기

0이면 window.alert();
-->


<body>
<%if(request.getAttribute("user")!=null){
	if((Integer)request.getAttribute("user")==0){
		%>
		<script>
		alert("id, passwd를 확인하세요.");
		</script>
		<%
	}
}
	%>


<!-- **********************************************************************************************************************************************************
MAIN CONTENT
*********************************************************************************************************************************************************** -->

<div id="login-page">
    <div class="container">

        <form class="form-login" action="login"  method="post">
            <h2 class="form-login-heading">sign in now</h2>
            <div class="login-wrap">

                <input type="text" class="form-control" placeholder="User ID"  name="id" autofocus >
                <br>
                <input type="password" class="form-control" placeholder="Password" id="pass" name="pass">
                <label class="checkbox">
		                <span class="pull-right">
		                  <!--  <a data-toggle="modal" href="login.html#myModal"> 비밀번호를 잃어 버리셨나요?</a>-->
		
		                </span>
                </label>
                <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
                <hr>

                <div class="login-social-link centered">

                </div>
                <div class="registration">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">회원가입</button>

                </div>

            </div>


        </form>



    </div>
</div>

<!-- js placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
<script>
    $.backstretch("assets/img/south-korea-05.jpg", {speed: 500});
    $('.backstretch').css('opacity', '0.6');

</script>





</body>


<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h3 class="modal-title" id="exampleModalLabel">회원 가입</h3>
            </div>
            <form action="IDinsert"  method="post">
                <div class="modal-body">

                        <div class="form-group">
                            <label for="id" class="control-label">I D : <p3 id="p33"></p3><p2 id="view"></p2><p4 id="view2"></p4></label>
                            <input type="text" class="form-control" id="id" name="id">
                        </div>
                        <div class="form-group">
                            <label for="pass" class="control-label">비밀번호 :     </label>
                            <input type="password" class="form-control" id="pass" name="pass" >
                        </div>
                        <div class="form-group">
                            <label for="name" class="control-label">이 름 :</label>
                            <input class="form-control" id="name" name="name">
                        </div>
                        
                        <div class="form-group">
                            <label for="birth" class="control-label">생년월일 : &nbsp;&nbsp; ex)</label>
                            <input class="form-control" id="birth" name="birth">
                        </div>
                        
                        <div class="form-group">
                            <label for="name" class="control-label">주 소 :</label>
                            <input class="form-control" id="addr" name="addr">
                        </div>
                        
                        
                        <div class="form-group">
                            <label for="tel" class="control-label">P H :</label>
                            <input class="form-control" id="tel" name="tel">
                        </div>
                        <div class="form-group">
                            <label for="email" class="control-label">E-Mail :</label>
                            <input class="form-control" id="email" name="email">
                        </div>
                        
                       



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <input type="reset" class="btn btn-default" value="다시 쓰기">
                    <input type="submit" class="btn btn-primary" value="회원가입" >
                </div>
            </form>
        </div>
    </div>
</div>


</html>
<script type="text/javascript">


    