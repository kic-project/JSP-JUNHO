package com.jspshop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspshop.dao.MemberDAO;
import com.jspshop.dto.MemberVO;

public class LoginAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url="member/login_fail.jsp";
    HttpSession session=request.getSession();
  
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    
    MemberDAO memberDAO=MemberDAO.getInstance();
      
    MemberVO memberVO=memberDAO.getMember(id);
    
    if(memberVO!=null){
      if(memberVO.getPwd().equals(pwd)){    
        session.removeAttribute("loginUser");
        session.setAttribute("loginUser", memberVO);
        url="jspshopServlet?command=main";
      }
    }
    
    request.getRequestDispatcher(url).forward(request, response);  
  }
}
