<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    				<!-- login, member_join, member_edit 공용사용 스타일 -->
					<!-- 본문 영역 -->
					<div id="body-main">
						<div class="body-list">
							<div>member_join   test</div>
							<div class="line-height"></div>
							<div class="join-line">
								<div class="member-confirm">
									<div class="confirm1">본인인증</div>
									<div class="confirm2">
										<input type="button" value="본인인증" class="join-btn" />
										<!-- <input type="button" value="휴대폰인증" class="join-btn" /> -->
										<!-- <input type="button" value="아이핀인증" class="login-btn" /> -->
										<!-- <input type="button" value="이메일인증" class="join-btn" /> -->
									</div>
									<div class="div-line"></div>
								</div>
								<div class="div-line"></div>
								<div class="member-data1">
									<div class="confirm1">필수정보</div>
									<div class="confirm2">
										<table class="join-tb1">
											<tr>
												<td class="join-td1">아이디</td>
												<td class="join-td2"><input type="text" class="join-txt" />
												</td>
												<td class="join-td3"><input type="button" value="아이디검색"
													class="join-btn" /></td>
												<td></td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
											<tr>
												<td class="join-td1">암호</td>
												<td class="join-td2"><input type="password" class="join-txt" />
												</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
											<tr>
												<td class="join-td1">암호확인</td>
												<td class="join-td2"><input type="password" class="join-txt" />
												</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
											<tr>
												<td class="join-td1">이름</td>
												<td class="join-td2"><input type="text" class="join-txt" />
												</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
											<tr>
												<td class="join-td1">생일</td>
												<td colspan="3">
													<table class="join-tb2">
														<tr>
															<td><input type="text" class="join-txt2" /></td>
															<td>년</td>
															<td><input type="text" class="join-txt2" /></td>
															<td>월</td>
															<td><input type="text" class="join-txt2" /></td>
															<td>일</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
											<tr>
												<td class="join-td1">성별</td>
												<td colspan="3">
													<table class="join-tb2">
														<tr>
															<td>남</td>
															<td><input type="radio" name="sex" class="join-box" /></td>
															<td>여</td>
															<td><input type="radio" name="sex" class="join-box" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
											<tr>
												<td class="join-td1">휴대전화</td>
												<td colspan="3">
													<table class="join-tb2">
														<tr>
															<td><input type="text" class="join-txt2" /></td>
															<td>-</td>
															<td><input type="text" class="join-txt2" /></td>
															<td>-</td>
															<td><input type="text" class="join-txt2" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class="join-tr" colspan="4"></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="div-line"></div>
								<div class="member-data2">
									<div class="confirm1">부가정보</div>
									<div class="confirm2">
										<table class="join-tb1">
											<tr>
												<td class="join-td1">닉네임</td>
												<td class="join-td2">
													<input type="text" class="join-txt"  />
												</td>
												<td class="join-td1"></td>
												<td class="join-td1"></td>
											</tr>
											<tr><td class="join-tr" colspan="4"></td></tr>
											
											<tr>
												<td class="join-td1">주소</td>
												<td colspan="3">
													<table class="join-tb2" >
														<tr>
															<td><input type="text" class="join-txt" /></td>
															<td><input type="button" class="join-btn" value="주소검색" /></td>
														</tr>
														<tr>
															<td colspan="2"><input type="text" class="join-txt3" /></td>
														</tr>
														<tr>
															<td colspan="2"><input type="text" class="join-txt3" /></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr><td class="join-tr" colspan="4"></td></tr>
											<tr>
												<td class="join-td1">유선전화</td>
												<td colspan="3">
													<table class="join-tb2">
														<tr>
															<td><input type="text" class="join-txt2" /></td>
															<td>-</td>
															<td><input type="text" class="join-txt2" /></td>
															<td>-</td>
															<td><input type="text" class="join-txt2" /></td>
														</tr>
													</table>
												</td>
												<td></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="div-line"></div>
								<div class="member-agree">
									<div class="confirm1">약관동의</div>
									<div class="confirm2">
										<div class="join-agree">
											<div class="join-agree-txt">
												<div>
													<span><input type="checkbox" /></span>
													<span class="join-agree-descript">[전체동의] 조로북 이용약관, 커뮤니티 이용약관, 개인정보 수집 및 이용, 개인정보 취급 위탁,
      													개인정보 제3자 제공에 모두 동의합니다. 
      												</span>
												</div>
											</div>
											<div class="join-agree-txt">
												<div>
													<span><input type="checkbox" /></span>
													<span class="join-agree-descripts">조로북 이용약관에 동의합니다.</span>
												</div>
												<div class="join-agree-txtarea">
												<%pageContext.include("/member/agree/agree_1.html");%>
												</div>
											</div>
											<div class="join-agree-txt">
												<div>
													<span><input type="checkbox" /></span>
													<span class="join-agree-descripts">조로북 커뮤니티 이용약관에 동의합니다.(필수)</span>
												</div>
												<div class="join-agree-txtarea">
												<%pageContext.include("/member/agree/agree_2.html");%>
												</div>
											</div>
											<div class="join-agree-txt">
												<div>
													<span><input type="checkbox" /></span>
													<span class="join-agree-descripts">개인정보 수집 및 이용에 동의합니다.(필수)</span>
												</div>
												<div>
													<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
													<span><input type="button" class="join-agree-btn" value="1" /></span>
													<span><input type="button" class="join-agree-btn" value="2" /></span>
													<span><input type="button" class="join-agree-btn" value="3" /></span>
												</div>
												<div class="join-agree-txtarea">
												<%pageContext.include("/member/agree/agree_3_1.html");%>
												</div>
											</div>
											<div class="join-agree-txt">
												<div>
													<span><input type="checkbox" /></span>
													<span class="join-agree-descripts">개인정보 취급 위탁에 동의합니다.(필수)</span>
												</div>
												<div class="join-agree-txtarea">
												<%pageContext.include("/member/agree/agree_4.html");%>
												</div>
											</div>
											<div class="join-agree-txt">
												<div>
													<span><input type="checkbox" /></span>
													<span class="join-agree-descripts">개인정보 제3자 제공에 동의합니다.(필수)</span>
												</div>
												<div class="join-agree-txtarea">
												<%pageContext.include("/member/agree/agree_5.html");%>
												</div>
											</div>
											<div class="join-agree">
												<table class="join-tb1">
													<tr>
														<td class="join-td1" colspan="4">
															<input type="button" value="회원가입" class="join-btn" />
														</td>
													</tr>
												</table>
											</div>
									</div>
								</div>
								</div>
								<!-- <div class="div-line"></div> -->
							</div><!-- join-line -->
					</div><!-- body-list -->
				</div><!-- body-main -->
				<!-- 본문 영역 -->
				
				