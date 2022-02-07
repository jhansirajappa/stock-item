package com.ty.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

public class EditItemServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	

		Item item = new Item();
		String id=req.getParameter("id");
		String name = req.getParameter("itemName");
		String brand = req.getParameter("brand");
		String price = req.getParameter("price");
		String qty = req.getParameter("qty");
		
		item.setId(Integer.parseInt(id));
		item.setName(name);
		item.setBrand(brand);
		item.setPrice(Double.parseDouble(price));
		item.setQty(Integer.parseInt(qty));
		
		ItemDao dao = new ItemDao();
		dao.updateItem(item);
		
		PrintWriter pw =resp.getWriter();
		pw.print("<html><body><h1>Item Created</h1></body></html>");
}
}