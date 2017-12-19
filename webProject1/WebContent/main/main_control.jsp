


<% 
	// 컨트롤러 요청 파라미터
	String main_action = request.getParameter("main_action");

	// 파라미터에 따른 요청 처리
	// 주소록 목록 요청인 경우

	// sub_main
	if(main_action.equals("sub_main")) {
		pageContext.include("/main/sub_main.jsp");
	}
	// sub_list
	else if(main_action.equals("sub_list")) {
		pageContext.include("/list/sub_list.jsp");
	}
	// sub_content
	else if(main_action.equals("sub_content")) {
		pageContext.include("/list/sub_content.jsp");
	}
	
	// sub_jang
	else if(main_action.equals("sub_jang")) {
		pageContext.include("/member/sub_jang.jsp");
	}
	// sub_buy
	else if(main_action.equals("sub_buy")) {
		pageContext.include("/member/sub_buy.jsp");
	}
	// sub_mypage_buy
	else if(main_action.equals("sub_mypage_buy")) {
		pageContext.include("/member/sub_mypage_buy.jsp");
	}
	// sub_login
	else if(main_action.equals("sub_login")) {
		pageContext.include("/member/sub_login.jsp");
	}
	// sub_member_join
	else if(main_action.equals("sub_member_join")) {
		pageContext.include("/member/sub_member_join.jsp");
	}
	// sub_member_edit
	else if(main_action.equals("sub_member_edit")) {
		pageContext.include("/member/sub_member_edit.jsp");
	}
	
	// 예외
	else {
		pageContext.include("/main/nopage.jsp");
	}
	
%>