<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>  
     
  <article>
    <h3 align="center" > 카테고리 </h3>     
    <c:forEach items="${productKindList }"  var="productVO">
         <div class="container">
    		<div class="row">
			<div class="col-lg-4 col-md-6 mb-4">
			<div class="card h-100">
			<a href="jspshopServlet?command=product_detail&pseq=${productVO.pseq}">
			<img class="card-img-top" src="product_images/${productVO.image}" alt=""></a>
			<div class="card-body">
			<h4 class="card-title">
			<a href="jspshopServlet?command=product_detail&pseq=${productVO.pseq}">
			${productVO.name}</a></h4>
			<h5>${productVO.price2}</h5>
      </div></div></div></div></div>
      
    </c:forEach>    
    <div class="clear"></div>
  </article>
<%@ include file="../footer.jsp" %>    