<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	  

	<script type="text/javascript">
	    function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="${path}/adminLogout.action";
		   }
		}
	</script>
  </head>
  
<body>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TR>
    <TD width=10></TD>
    <TD background=>
       <div style="margin-top: 30px;font-family: courier;font-size: 33px;margin-left: 9px;text-shadow: 2px 2px 4px #000000;color:#000000">手机销售系统</div>
    </TD>
    <TD>
	      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
	        <TR><TD align=right height=35></TD></TR>
	        <TR>
	          <TD height=35>&nbsp; 
	                <c:if test="${userType==0}">
                        <span style="color:#000000;font-size: 21px;font-family: courier"><b>欢迎您：系统管理员</b></span>  
	                </c:if>
	                &nbsp;&nbsp;&nbsp;
	                <a href="#" style="color:#00FF00;font-size: 16px;font-family: courier" onclick="logout()"><b>注销</b></a>
              </TD>
            </TR>
	      </TABLE>
    </TD>
    <TD width=10></TD>
  </TR>
</TABLE>
<br><br><br>

</body>
</html>
