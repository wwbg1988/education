<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/basePath.js"></script>
<script type="text/javascript">
$(function(){
    $("#userform").attr("action",basePath+"/userLoginController/usersub.do");

 });
</script>

</head>
<body>

   <form id="userform" action="">
      username: <input type="text" id="username"  name="username">
      <br>
      userpassword: <input type="text" id="userpassword" name="userpassword">
      <br>
      <button type="submit">提交</button>
   </form>



</body>
</html>