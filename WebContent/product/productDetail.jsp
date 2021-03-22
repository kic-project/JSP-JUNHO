<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>  
<%@ include file="../cartorder.jsp" %> 
<meta charset="UTF-8">
<script type="text/javascript">
function fncart(){
	alert("장바구니에 담았습니다.");}	
function fnpay(){
	alert("결제창으로 이동합니다.");}		
</script> 
 <h1> Item </h1>
<form  method="post" name="formm">
<table class="calculation1"> 
<tr>
    <th><div><img  src="product_images/${productVO.image}"  /></div></th>
    <th>${productVO.name}<br/>
    ${productVO.content}<br/>
    <label> 가 격 : ${productVO.price2} 원 </label><br/>  
          <label> 수 량 : </label>
          <input  type="number"      name="quantity"  size="2"      value="1"><br>
          <input  type="hidden"    name="pseq"       value="${productVO.pseq}"><br>
          </th>
    </tr>
</table>
<br/>
        <div align="center">
		<button class="btn default" id="allProduct" onclick="fncart(); go_cart()">장바구니</button>
		<button class="btn default backBtn" id="productClear" onclick="fnpay(); go_order()">즉시구매</button>
		<button class="btn default footerbtn" id="footerbtn" onclick="cancel">취소</button> </div>
      </form>  
<%@ include file="../footer.jsp" %> 