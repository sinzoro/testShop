

<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

	// 파라미터에 따른 요청 처리
	// 주소록 목록 요청인 경우

	if(action.equals("main")) {
		//ArrayList<AddrBook> datas = ab.getDBList();
		//request.setAttribute("datas", datas);
		pageContext.forward("/main/main.jsp");
	}
	else if(action.equals("admin")) { 
		pageContext.forward("/main/admin.jsp");
	}
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
	
%>