package com.dreamymushrooma.service;

import java.io.IOException;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDreamPost
 * 
 * Example Request: krithi<div>asdada</div><div>sda</div><div>sdas</div><div><br></div><div>s</div>
 */
@WebServlet("/UserDreamPost")
public class UserDreamPost extends HttpServlet {
	
	private static final String unqiueId = "D";
	private static final AtomicInteger Counter = new AtomicInteger(3212);
	private static final String fillers  = 
			"hello world this is krithivasan from paypal who like to work hard and have "+
			"fun building things. Here is a to do way of doing things and hence to be better off";
	
	/*
	 * Contents created by the user is persisted here: 
	 * 
	 *  Key : contentgenericUniqueId 
	 *  Value : contents of the dream goes here
	 */
	
	private static Map<String,String> dreamcontents = new ConcurrentHashMap<String,String>();
	
	/*
	 * Contents created by the user is persisted here: 
	 * 
	 *  Key : username which is getting from okta. 
	 *  Value : LinkedList of contentgenericUniqueId
	 */
	
	private static Map<String,LinkedList<String>> dreamUserContentMapper = new ConcurrentHashMap<String,LinkedList<String>>(); 
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserDreamPost() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
		String dreamcontent = request.getParameter("content");
		
		StringBuilder cleanText = new StringBuilder();
		
		//Escape Check to avoid null pointer exceptions
		dreamcontent = ((dreamcontent.isEmpty()) || dreamcontent.length() == 0) ? fillers : dreamcontent;
		
        if(!dreamcontent.isEmpty() && dreamcontent.length() != 0 && dreamcontent != null){
			
			/*
			 * Check for HTML tags appended to the string
			 */
			
			final String openbraces = "<";
			final String closebrace = ">";
			
			int firstindex = 0;
			
			while(dreamcontent.length() > 0 && dreamcontent.contains("<")){
				
				int startpos = dreamcontent.indexOf(openbraces, firstindex);
				int endpos = dreamcontent.indexOf(closebrace, startpos);
				
				String dc = dreamcontent.substring(firstindex,startpos);
				cleanText.append(dc);
				
				dreamcontent = dreamcontent.substring(endpos+1, dreamcontent.length());
			}
			
			System.out.println(" Clean Text String :: " + cleanText.toString());
			
		}

		/*
		 * Generating unique content id.
		 */
        int currVal = Counter.incrementAndGet();
        String generUniqueId = unqiueId.concat(currVal+"");
        
        final String confidentialUserContent = cleanText.toString();
        
        dreamcontents.put(generUniqueId, confidentialUserContent.isEmpty() ? "Contents are empty" : confidentialUserContent);
        Counter.set(currVal);
        
        if(dreamUserContentMapper.isEmpty()){
        	
        	LinkedList<String> userContentid = new LinkedList<String>();
        	userContentid.addFirst(generUniqueId);
        	dreamUserContentMapper.put("username", userContentid);
        }
        else if(dreamUserContentMapper.containsKey("username")){
        	
        	LinkedList<String> usercontentIdList = dreamUserContentMapper.get("username");
        	usercontentIdList.addLast(generUniqueId);
        	
        }else{
        	
        	LinkedList<String> usercontentIdList = new LinkedList<String>();
        	usercontentIdList.addFirst(generUniqueId);
        	dreamUserContentMapper.put("username", usercontentIdList);
        }
		
		response.setContentType("text/plain");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(generUniqueId);  

	}
	
	public static Map<String,String> getUserContents(){
		return dreamcontents;
	}

}
