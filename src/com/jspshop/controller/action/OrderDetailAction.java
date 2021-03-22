package com.jspshop.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspshop.dao.OrderDAO;
import com.jspshop.dto.MemberVO;
import com.jspshop.dto.OrderVO;

public class OrderDetailAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "mypage/orderDetail.jsp";
    
    HttpSession session = request.getSession();
    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
    if (loginUser == null) {
      url = "jspshopServlet?command=login_form";
    } else {
      
      //�ֹ���ȣ�� ������.
      int oseq=Integer.parseInt(request.getParameter("oseq"));
      OrderDAO orderDAO = OrderDAO.getInstance();
      
      //ex) �ֹ���ȣ(oseq)�� 29�� ��� ���� ������.                          result(�ֹ�����) �� 1,2 ��� ������
      ArrayList<OrderVO> orderList = orderDAO.listOrderById(loginUser.getId(), "%", oseq);
      
      int totalPrice=0;
      for(OrderVO ovo :orderList){//�ѿ��� ������.
        totalPrice+=ovo.getPrice2()*ovo.getQuantity();
      }
      request.setAttribute("orderDetail", orderList.get(0));  
      request.setAttribute("orderList", orderList);
      request.setAttribute("totalPrice", totalPrice);
      System.out.println(orderList);
    }
    request.getRequestDispatcher(url).forward(request, response);
  }    
}
