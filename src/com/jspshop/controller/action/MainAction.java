package com.jspshop.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspshop.dao.ProductDAO;
import com.jspshop.dto.ProductVO;

public class MainAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {    
	  
    String url = "/main.jsp";
    
    ProductDAO productDAO=ProductDAO.getInstance();
    ArrayList<ProductVO> newProductList = productDAO.listNewProduct();
    ArrayList<ProductVO> bestProductList = productDAO.listBestProduct();
    
    request.setAttribute("newProductList", newProductList);
    request.setAttribute("bestProductList", bestProductList);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
    dispatcher.forward(request, response);
  }
}
