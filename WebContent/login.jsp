<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="/header.jsp" %>  
      
  <article>
    <h1>Login</h1>
    <form method="post" action="jspshopServlet?command=login">
        <fieldset>
       	  <legend></legend>
        
          <label>User ID</label>
          <input name="id" type="text" value="${id}" value="one"><br> 
          
          <label>Password</label> 
          <input name="pwd" type="password" value=""><br> 
          
        </fieldset>
        <div class="clear"></div>
        <div id="buttons">
            <input type="submit" value="로그인" class="submit">
    
        </div>
    </form>  
  </article>
<%@ include file="../footer.jsp" %>      
