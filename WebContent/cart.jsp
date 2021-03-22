<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %> 
<%@ include file="/cartorder.jsp" %> 
<!DOCTYPE html>
<html></html>
<head></head>
<script type="text/javascript">
function fnpay(){
	alert("결제창으로 이동합니다.");}	
</script> 
	<h3 class="mt-3 mb-3 text-center">장바구니</h3>
	
	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	    <form name="formm" method="post">
    <c:choose>
    <c:when test= "${cartList.size() == 0}">
		<table class="table table-bordered">
			
      <h2 colspan="3">장바구니가 비었습니다</h2>
      
      </table>
      <br/><br/>
      	<div align="center">
	<button class="btn default" id="allProduct" onclick="location.href='jspshopServlet?command=main'">메인페이지</button>
	<input type="button" value="쇼핑 계속하기" class="cancle" onclick="location.href='jspshopServlet?command=main'">
	</div>
	<br/><br/>   
   
    </c:when>
    <c:otherwise>

      <table class="table table-bordered">
		<tr>
			<th scope="col">이미지</th>
			<th scope="col">상품명</th>
			
			<th scope="col">수 량</th>
			<th scope="col">판매가</th>
			<th scope="col">적립금</th>
			<th scope="col">배송비<br/>일괄 ₩2,500</th>
			<th scope="col">주문일</th>
		</tr>
	<c:forEach items="${cartList}"  var="cartVO">	
		<tr>
			<td>  </td> <%--이미지 넣기 계속 막힘 장바구니 담기시 DB로 이미지가 가지않음 해결할것!!!--%>
          <td> ${cartVO.pname}</td>
          
          <td> ${cartVO.quantity} </td>
          <td> 
            <fmt:formatNumber value="${cartVO.price2}"
                              type="currency"/> 
          </td>
          <td><fmt:formatNumber value="${cartVO.price2*cartVO.quantity*0.1}" 
                              type="currency"/></td>      
          <td>묶음배송</td>
          <td> <fmt:formatDate value="${cartVO.indate}" type="date"/></td>      
          </tr></c:forEach>
          </table>
          
                  
        
        <br/>
        <table class="table table-bordered">
        <tr>
          <th colspan="1"> 총 상품금액 </th>
         <th colspan="1"> 적립예정금액 </th>
         <th colspan="1"> 등급할인액 </th>
         <th colspan="1"> 결제예정금액</th>
                    </tr> 
           <tr  class="price" style='background-color: #fff'>
           <td  colspan="1">
            <fmt:formatNumber  value="${totalPrice}" type="currency"/>
          </td>
           <td colspan="1">
            <fmt:formatNumber value="${totalPrice*0.1}" type="currency"/>
          </td>
          <td> </td> <%-- 등급할인예정금액 --%>
          <td colspan="1">
            <fmt:formatNumber value="${totalPrice+2500}" type="currency"/> </td>
          </tr>                       
         </table>
         <br/>
        
        
            <div align="center">
		<input type="button" value="주문하기"  class="submit" onclick="fnpay(); go_order_insert()">
		
		<input type="button"    value="쇼핑 계속하기"  class="cancel"  onclick="location.href='jspshopServlet?command=main'">
     <br/>
    <br/>
    </c:otherwise>  
    </c:choose>  
     </div>
    </form>
</head></html>
<%@ include file="../footer.jsp" %>