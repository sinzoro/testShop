<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    				<!-- login, member_join, member_edit 공용사용 스타일 -->
<form name="sub_login" id="sub_login" method="post" >  				
					<!-- 본문 영역 -->
					<div id="body-main">
						<div class="body-list">
							<div>login test</div>
							<div>
								<div class="line-height"></div>
								<div class="login-line" id="login-line">
									<table class="login-tb">
										<tr>
											<td class="login-td1">아이디</td>
											<td class="login-td2">
												<input type="text" name="loginId" class="login-txt" />
											</td>
										</tr>
										<tr><td class="login-tr" colspan="2"></td></tr>
										<tr>
											<td class="login-td1">암호</td>
											<td class="login-td2">
												<input type="password" name="loginPasswd" class="login-txt"  />
											</td>
										</tr>
										<tr><td class="login-tr" colspan="2"></td></tr>
										<tr>
											<td class="login-td1" colspan="2">
												<input type="button" value="로그인" onclick="login_ck()" class="login-btn" />
											</td>
										</tr>
									</table>
								</div>
								<div class="login-line2">
									<table class="login-tb">
										<tr>
											<td>
												<input type="button" value="회원가입" onclick="join_move()" class="login-btn" />
											</td>
										</tr>
										<tr>
											<td>
												<input type="button" value="아이디 검색" onclick="id_search()" class="login-btn" />
											</td>
										</tr>
										<tr>
											<td>
												<input type="button" value="암호 검색" onclick="pass_search()" class="login-btn" />
											</td>
										</tr>
										
									</table>
								</div>
							</div>
							<!-- 검색 -->
							<!-- id search -->
							<div id="id-search">
								<div class="login-line">
									<table class="login-tb">
										<tr>
											<td class="login-td1">주민번호</td>
											<td>
												<input type="password" class="login-search-txt" />
											</td>
											<td>-</td>
											<td>
												<input type="password" class="login-search-txt" />
											</td>
										</tr>
										<tr><td class="login-tr" colspan="4"></td></tr>
										<tr>
											<td class="login-td1">이름</td>
											<td>
												<input type="text" class="login-search-txt"  />
											</td>
											<td></td>
										</tr>
										<tr><td class="login-tr" colspan="4"></td></tr>
									</table>
								</div>
								<div class="login-line2">
									<table class="login-tb">
										<tr>
											<td>
												<input type="button" value="아이디 검색" class="login-btn" />
											</td>
										</tr>
										<tr>
											<td><div id="search-id">검색된 아이디</div></td>
										</tr>
										<tr>
											<td><div id="search-id-value">sinzoro</div></td>
										</tr>
									</table>
								</div>
							</div>
							<!-- pw search -->
							<div id="pw-search">
								<div class="login-line">
									<table class="login-tb">
										<tr>
											<td class="login-td1">주민번호</td>
											<td>
												<input type="password" class="login-search-txt" />
											</td>
											<td>-</td>
											<td>
												<input type="password" class="login-search-txt" />
											</td>
										</tr>
										<tr><td class="login-tr" colspan="4"></td></tr>
										<tr>
											<td class="login-td1">이름</td>
											<td>
												<input type="text" class="login-search-txt"  />
											</td>
											<td></td>
										</tr>
										<tr><td class="login-tr" colspan="4"></td></tr>
										<tr>
											<td class="login-td1">아이디</td>
											<td>
												<input type="text" class="login-search-txt"  />
											</td>
											<td></td>
										</tr>
										<tr><td class="login-tr" colspan="4"></td></tr>
									</table>
								</div>
								<div class="login-line2">
									<table class="login-tb">
										<tr>
											<td>
												<input type="button" value="암호 검색" class="login-btn" />
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div><!-- 본문 영역 -->
</form>				
				