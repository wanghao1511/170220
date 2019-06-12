<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resource/js/jquery-1.8.3.js"></script>
<link   rel="stylesheet"  href="<%=request.getContextPath()%>/resource/css/index3.css" type="text/css">
<script type="text/javascript">
   function add(){
	   location.href="/toadd"
   }
</script>
</head>
<body>
 <table>
   <tr>
     <td colspan="10">
       <form action="list" method="post">
                    名称:<input type="text" name="name" value="${param.name }"/>
           <input type="submit" value="搜索"/>
           <input type="button" value="添加"  onclick="add()"/>
         </form>
      </td>
   </tr>
   <tr>
      <td colspan="10">
        <c:forEach items="${list }" var="b" varStatus="count">
			<div style="float: left; width: 260px;height: 330px;">
				   <img src="/pic/${b.pic }" alt="正在加载"  style="width: 180px;height: 150px;"/><br/><br/>
				序号：${count.count }<br/>
				标题：${b.name }<br/>
				作者：${b.author }<br/>
				价格：${b.price }<br/>
				创建时间：${b.datea }<br/>
				类型：${b.tname }<br/>
			</div>
		</c:forEach>
      </td>
   </tr>
   <tr>
     <td colspan="10">${fenye }</td>
   </tr>
 </table>
</body>
</html>