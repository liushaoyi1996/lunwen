<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="${path }/admin/login" name="ThisForm" method="post">
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
	  <TR>
	       <TD style="HEIGHT: 105px;text-align:center"><h1>BEST CINEMA</h1></TD>
	  </TR>
	  <TR>
	       <TD background="${path }/images/login_2.jpg" height=300>
		      <TABLE height=300 cellPadding=0 width=900 border=0>
		        <TR><TD colSpan=2 height=35></TD></TR>
		        <TR>
		          <TD width=360></TD>
		          <TD>
		            <TABLE cellSpacing=0 cellPadding=2 border=0>
			              <TR>
			                <TD style="HEIGHT: 28px" width=120>登 录 名：</TD>
			                <TD style="HEIGHT: 28px" width=150><INPUT style="WIDTH: 130px" name=username type="text"></TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 28px" width=120>登录密码：</TD>
			                <TD style="HEIGHT: 28px" width=150><INPUT style="WIDTH: 130px" type=password name=password></TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 18px"></TD>
			                <TD style="HEIGHT: 18px"></TD>
			                <TD style="HEIGHT: 18px"></TD>
			              </TR>
			              <TR>
			                <TD></TD>
			                <TD>
			                   <img src="${path }/images/login_button.gif" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" onclick='check1()'/>
			                   <img id="indicator" src="${path }/images/loading.gif" style="display:none"/>
			                </TD>
			              </TR>
		            </TABLE>
		          </TD>
		        </TR>
		      </TABLE>
	       </TD>
	  </TR>
      <TR>
           <TD><IMG src="${path }/images/login_3.jpg" border=0></TD>
      </TR>
</TABLE>
</form>
</body>
<script>
function check1()
{                                                                                         
     if(document.ThisForm.username.value=="")
	 {
	 	alert("请输入账号");
		document.ThisForm.username.focus();
		return false;
	 }
	 if(document.ThisForm.password.value=="")
	 {
	 	alert("请输入密码");
		document.ThisForm.password.focus();
		return false;
	 }
	 if(document.ThisForm.password.value=="1")
	 {
	 	alert("用户名或密码错误");
		document.ThisForm.password.focus();
		return false;
	 }
	window.ThisForm.submit();

}
</script>
</html>