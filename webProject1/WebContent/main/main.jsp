<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	// session create
	session.setAttribute("login_id", "");
	// 컨트롤러 요청 파라미터
	String main_action = request.getParameter("main_action");
	out.print("main_action:"+main_action);
	if( main_action == null ){
		//main_action = "sub_main";
		//main_action = "sub_list";
		//main_action = "sub_content";
		//main_action = "sub_jang";
		//main_action = "sub_buy";
		
		//main_action = "sub_mypage_buy";
		main_action = "sub_login";
		//main_action = "sub_member_join";
		//main_action = "sub_member_edit";
		
	}
	out.print("main_action2:"+main_action);
%>
    
<html>
<head>
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href="css/zoroBook.css" />
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="js/zoroBook.js"></script>
</head>
<body>

	<!-- 전체를 감싸는 태그1 -->
	<div id="test">
	<!-- 전체를 감싸는 태그2 -->
	<div id="page-wrapper">
		<!-- 헤더 -->
		<header id="main-header">
		<!-- 상단 소메뉴(로그인,회원가입..) -->
			<div class="top-header-main">
				<span class="top-header">
				<a href="./index.jsp?main_action=sub_login"><%=session.getAttribute("login_id") %>
				<%//=session.getAttribute("login_id").equals("")?"로그인":session.getAttribute("login_id") %>
				</a></span>
				<span class="top-header">
				<a href="./index.jsp?main_action=sub_member_join">회원가입</a></span>
				<span class="top-header">
				<a href="./index.jsp?main_action=sub_member_edit">내종이</a></span>
				<span class="top-header">
				<a href="./index.jsp?main_action=sub_jang">장바구니</a></span>
				<span class="top-header">
				<a href="./index.jsp?main_action=sub_main">고객센터</a></span>
			</div>
			<!-- logo -->
			<div class="top-logo">
				<img src="http://placehold.it/200x100" />
			</div><!-- logo -->
			<!-- 검색 -->
			<div class="top-header-search">				
				<div class="search-bar">
					<form name="main-search">
						<input type="text" class="input-search" />
						<input type="submit" class="input-search-submit" value="검색" />
						<span class="search-detail"><!-- 상세검색 --></span>
					</form>
				</div>
			</div>
		</header><!-- /헤더 -->
		<!-- 내비게이션 -->
		<nav id="main-navigation">
			<!-- pull-left -->
			
				
			<div class="pull-left">
				<ul class="outer-menu">
					<li class="outer-menu-item">
						<span class="menu-title">분야보기</span>
						<ul class="inner-menu">
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
						</ul><!-- inner-menu -->
					</li><!-- outer-menu-item -->
					<li class="outer-menu-item">
						<span class="menu-title">베스트셀러</span>
						<ul class="inner-menu">
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
						</ul><!-- inner-menu -->
					</li><!-- outer-menu-item -->
					<li class="outer-menu-item">
						<span class="menu-title">신간</span>
						<ul class="inner-menu">
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
							<li class="inner-menu-item"><a href="#">data</a></li>
						</ul><!-- inner-menu -->
					</li><!-- outer-menu-item -->
				</ul><!-- outer-menu -->
			</div>
		</nav><!-- /내비게이션 -->
		<!-- 본문 -->
		<div id="content">
		
		<!-- 본문 좌측 영역 -->
		<section id="main-section">
			<article>
			
			<% pageContext.include("/main/main_control.jsp?main_action="+main_action); %>
			
			</article>
		</section><!-- 본문 좌측 영역 -->
		
		<!-- 본문 우측 영역 -->
			<aside id="main-aside">
				<div class="aside-list">
					<h3>카테고리</h3>
					<ul>
						<li><a href="#">data</a></li>
						<li><a href="#">data</a></li>
						<li><a href="#">data</a></li>
						<li><a href="#">data</a></li>
						<li><a href="#">data</a></li>
					</ul>
				</div>
			</aside><!-- /본문 우측 영역 -->
		</div><!-- /본문 -->
		<!-- 푸터 -->
		<footer id="main-footer">
			<div class="footer-img">
				<img src="http://placehold.it/200x100" />
			</div>
			<div class="footer-dic">
				<span class="footer-dics">(주)조로북</span>
				<span class="footer-dics">대표:zoro</span>
				<span class="footer-dics">그 뒤로 어쩌구 저쩌구</span>
			</div>
		</footer><!-- /푸터 -->
	</div><!-- /전체를 감싸는 태그2 -->
	</div><!-- /전체를 감싸는 태그1 -->

</body>
</html>