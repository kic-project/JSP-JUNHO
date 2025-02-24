package com.jspshop.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspshop.dao.CartDAO;
import com.jspshop.dao.OrderDAO;
import com.jspshop.dto.CartVO;
import com.jspshop.dto.MemberVO;

public class OrderInsertAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "jspshopServlet?command=order_list";    
    
    HttpSession session = request.getSession();
    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
    if (loginUser == null) {
      url = "jspshopServlet?command=login_form";
    } else {
      CartDAO cartDAO = CartDAO.getInstance();
      ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getId());//userId가 카트에 넣은 모든 값들을 가져옴.
      
      OrderDAO orderDAO = OrderDAO.getInstance();      
      
      int maxOseq=orderDAO.insertOrder(cartList, loginUser.getId());
      url = "jspshopServlet?command=order_list&oseq="+maxOseq;
    }
    response.sendRedirect(url);
  }
}
