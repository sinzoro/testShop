<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id="memberDAO" class="ky_webProject.ZB_MemberDAO"/>
<jsp:useBean id="zbMember" class="ky_webProject.ZB_Member"/>
<jsp:setProperty name="zbMember" property="*"/>

<%=zbMember.getLoginId() %>
<%
	int ck_num = memberDAO.loginCheck(zbMember);
	if( ck_num == -1 || ck_num == 0 ){
		response.sendRedirect("/ky_webProject/index.jsp?main_action=sub_login");
	}else if( ck_num == 1 ){
		response.sendRedirect("/ky_webProject/index.jsp?main_action=sub_main");
		session.setAttribute("login_id", zbMember.getLoginId() );
	}else{
		response.sendRedirect("/ky_webProject/main/nopage.jsp");
	}
	
	
%>

