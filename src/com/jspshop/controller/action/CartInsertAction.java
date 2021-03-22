package com.jspshop.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;

import com.jspshop.dao.CartDAO;
import com.jspshop.dto.CartVO;
import com.jspshop.dto.MemberVO;

public class CartInsertAction implements Action {
	

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String url = "jspshopServlet?command=cart_list";
   
   
    HttpSession session = request.getSession();
    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
    
    if (loginUser == null) {
      url = "jspshopServlet?command=login_form";
    } else {
      CartVO cartVO = new CartVO();
      cartVO.setId(loginUser.getId());//구매자 아이디
      cartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));//제품코드 가져오기
      cartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));//제품수량 가져오기
 
      CartDAO cartDAO = CartDAO.getInstance();
      cartDAO.insertCart(cartVO);
    }

    response.sendRedirect(url);
  }
}