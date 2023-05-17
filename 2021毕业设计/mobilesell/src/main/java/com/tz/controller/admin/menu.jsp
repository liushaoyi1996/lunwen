<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   

	<style>
	   .mainMenu {FONT-WEIGHT: bold; FONT-SIZE: 18px; CURSOR: hand; COLOR: #0572EF;font-weight: 700;font-family: courier;}
	</style>

    <script type="text/javascript">
	    function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="${path}/login.jsp";
		   }
		}
	</script>
  </head>
  
  
  
<body>
 <div class="col-xs-2 col-md-2" style="margin-left:15px">
<TABLE cellSpacing=0 cellPadding=0 width=185 border=0>
  <TR>
    <TD width=15><IMG src="${path}/images/new_005.jpg" border=0></TD>
    <TD><IMG src="${path}/images/new_006.jpg" border=0 width=155 height=35> <B></B> </TD>
    <TD width=15><IMG src="${path}/images/new_007.jpg" border=0></TD>
  </TR>
</TABLE>

<TABLE height=500 cellSpacing=0 cellPadding=0 border=0 style="float:left">
  <TR>
    <TD width=15 background=${path}/images/new_008.jpg></TD>
    <TD vAlign=top width=70 bgColor=#ffffff>
      <TABLE>
        <!--  -->
        <TR><TD class=mainMenu>商品管理</TD></TR>
        <TR><TD height=10></TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
             
			  <TR><TD class=menuSmall><A class=style2 href="${path}/admin/lowprice">设置特价</A></TD></TR>
			  <TR><TD class=menuSmall><A class=style2 href="${path}/admin/hotsell">设置热卖</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
		<TR><TD height=15></TD></TR>
        <!--  -->  
        
        
        
        
        <!--  -->
        <TR><TD class=mainMenu>订单管理</TD></TR>
        <TR><TD height=10></TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="${path}/admin/orders">订单审核</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD height=15></TD></TR><TR>  
        <!--  --> 
        
       
        <!--  -->
        <TR><TD class=mainMenu>用户管理</TD></TR>
        <TR><TD height=10></TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="${path}/register.jsp">添加用户</A></TD></TR>              
              <TR><TD class=menuSmall><A class=style2 href="${path}/admin/users">用户管理</A></TD></TR>              
			</TABLE>
		  </TD>
		</TR>
        <TR><TD height=15></TD></TR><TR>  
        <!--  -->  
        
         <TR><TD class=mainMenu>新闻管理</TD></TR>
         <TR><TD height=10></TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="${path}/admin/addnews.jsp">添加新闻</A></TD></TR>
                <TR><TD class=menuSmall><A class=style2 href="${path}/admin/newslist">新闻列表</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
       <TR><TD height=15></TD></TR><TR>  
        
       <TR><TD class=mainMenu>公告管理</TD></TR>
         <TR><TD height=10></TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="${path}/admin/preupdateg">修改公告</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
       <TR><TD height=15></TD></TR><TR>  
        <!--  --> 
         <TR><TD class=mainMenu>上架管理</TD></TR>
         <TR><TD height=10></TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="${path}/admin/addmobile.jsp">上架商品</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
       <TR><TD height=15></TD></TR><TR>  
        
        
        
      </TABLE>
    </TD>
    <TD width=15 background=${path}/images/new_009.jpg></TD></TR>
</TABLE>
</div>

</body>
<script>
//window.location="${pageContext.request.contextPath}/admin/sitenews/sitenewsAdd.jsp";
</script>
</html>
