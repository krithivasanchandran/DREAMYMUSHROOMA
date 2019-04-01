package com.dreamymushrooma.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GalleryDisplayAnonymousUserContent
 */
@WebServlet("/GalleryDisplayAnonymousUserContent")
public class GalleryDisplayAnonymousUserContent extends HttpServlet {
	
	final List<String> anonymousId = new ArrayList<String>();
	final List<String> contents = new ArrayList<String>();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GalleryDisplayAnonymousUserContent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		//Get Anonymous user contents based on anonymous id
	   Map<String,String> anonymousContents	= UserDreamPost.getUserContents();
	   
	   System.out.println("User Content Size is Before Null check is : ------> " + anonymousContents.size());
	   
	   anonymousContents.put("D97523", "Please do enter the right value to get started Please do enter the right value to get started"
	   		+ "Please do enter the right value to get startedPlease do enter the right value to get startedPlease do enter the right value to get started"
	   		+ "Please do enter the right value to get startedPlease do enter the right value to get startedPlease do enter the right value to get started"
	   		+ "Please do enter the right value to get startedPlease do enter the right value to get started");
	   
	   
	   anonymousContents.put("D871042", "Please do enter the right value to get started Please do enter the right value to get started"
		   		+ "Please do enter the right value to get startedPlease do enter the right value to get startedPlease do enter the right value to get started"
		   		+ "Please do enter the right value to get startedPlease do enter the right value to get startedPlease do enter the right value to get started"
		   		+ "Please do enter the right value to get startedPlease do enter the right value to get started");
		   
	   
	   if(anonymousContents.isEmpty()){
		   
		   System.out.println(" No Dream Contents to show. Please enter the data !!");
		   ServletContext sc = getServletContext();
		   sc.getRequestDispatcher("dashboard.html").forward(request, response);
		   
	   }else{
		   
		   System.out.println("User Content Size is : ------> " + anonymousContents.size());
		   
		   anonymousContents.entrySet().forEach((t) -> {
			   String anonyid =  t.getKey();
			   anonymousId.add(anonyid);
			   
			   String usercontents = t.getValue();
			   contents.add(usercontents);
		   });
	   }
	   
	   request.setAttribute("contentid", anonymousId);
	   request.setAttribute("content", contents);
	   
	   ServletContext sc = getServletContext();
	   sc.getRequestDispatcher("Gallery.jsp").forward(request, response);
	}

}
