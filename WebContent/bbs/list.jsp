


<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DesignBoard</title>
<script src="boardjs.js"></script>
<link rel="stylesheet" type="text/css" href="boardcss.css" />
<link href='http://fonts.googleapis.com/css?family=Happy+Monkey'
	rel='stylesheet' type='text/css'>

<style type="text/css">
@CHARSET "UTF-8";

html {
	padding: 0px;
	margin: 0px;
	font-weight: bold;
}

#writeid {
	padding-top: 0px;
}

.searchTF {
	font-weight: bold;
}

#text11 {
	border-left: 1px solid black;
}

#text12 {
	border-right: 1px solid black;
}

#text13 {
	border-top: 1px solid #BDBDBD;
	padding-top: 25px;
}

.text13 {
	border-top: 1px solid #BDBDBD;
	padding-top: 25px;
}

font#searchtab1,#searchtab2,#searchtab3,#searchtab4,#searchtab5 {
	font-weight: bold;
	color: #5D5D5D;
}

.searchtabcolor {
	color: red;
}

.write {
	text-decoration: none;
	font-weight: bold;
	font-style: inherit;
}

@font-face {
	font-family: 굴림;
	font-style: normal;
	font-weight: normal;
	src: url();
}

A:link {
	font-size: 9pt;
	font-family: 굴림;
	text-decoration: none;
	color: #666666
}

A:visited {
	font-size: 9pt;
	font-family: 굴림;
	text-decoration: none;
	color: #666666
}

A:active {
	font-size: 9pt;
	font-family: 굴림;
	text-decoration: none;
	color: #666666
}

A:hover {
	font-size: 9pt;
	font-family: 굴림;
	text-decoration: none;
	color: #666666
}

td,body {
	font-family: 굴림;
	font-size: 9pt;
	color: #666666
}

.text1 {
	font-size: 25px;
	font-family: 'Happy Monkey', cursive;
	color: #BDBDBD;
	border-top: 1px solid black;
	border-bottom: 1px solid black;
}
</style>



<script type="text/javascript">


function searchword(ff){
	
	
	
	var v1=document.getElementById('sname').value;
	
	var cpage=now;
	
	var word=document.getElementById('word').value;
	
	
	if(v1=="sname" || v1=="stitle"){


			document.forms[1].submit();
			return;
	}else
		alert("카테고리를 선택하세요");

	
}



function writing(){
	var v1=document.getElementById("setid").value;
	
	if(v1!=null||v1!=""){
		
		
	document.wform.submit();
	
	}else if(v1==null||v1==""){
		alert("로그인이 필요합니다.");
		return;
	}
	
	
}

function pagingzoom(){
	
	//아이디를 loginok.jsp에서 파라미터 값으로 전송해야함
	
	/*   성공했다.. */
	document.getElementById(document.getElementById('now').value).style.color='#ff0000';
	
	var id= document.getElementById('logid').value;
	if(id =="" ||id == 'null'){
		document.getElementById('logged').style.display='';
		
	}else if(id!="" || id!='null'){
		document.getElementById('logged').style.display='';
		document.getElementById('logged').innerHTML="<a href='http://14.63.225.213/testing/members/logout.jsp?logchk=on'>"+'LogOut'+"</a>";
	}
	
	
}

function viewport(seq){
	
	location.href="http://14.63.225.213/testing/bbs/view.inc?seq="+seq
			+"&nowPage="+document.getElementById("now").value;
}


	function set1() {

		var cs1 = document.getElementById("searchtab1");
		var cs2 = document.getElementById("searchtab2");
				cs1.style.color = "#ff0000";
			cs2.style.color = "#5D5D5D";
			
			document.getElementById('sname').value="sname";
			

	}

	function set2() {
		
		var cs1 = document.getElementById("searchtab1");
		var cs2 = document.getElementById("searchtab2");
		
		
			cs1.style.color = "#5D5D5D";
			cs2.style.color = "#ff0000";
			
			document.getElementById('sname').value="stitle";
			
		

	}
	function set3() {
		
		var cs1 = document.getElementById("searchtab1");
		var cs2 = document.getElementById("searchtab2");
		var cs3 = document.getElementById("searchtab3");
		
			cs1.style.color = "#5D5D5D";
			cs2.style.color = "#5D5D5D";
			cs3.style.color = "#ff0000";

		

	}
	function set4() {

		var cs = document.getElementById("searchtab4");

		if (cs.className == "1") {
			var cs = document.getElementById("searchtab4");
			cs.style.color = "#ff0000";
			cs.className = "2";
			return;
		} else if (cs.className = "2") {
			var cs = document.getElementById("searchtab4");
			cs.style.color = "#5D5D5D";
			cs.className = "1";
			return;
		}

	}
</script>
</head>

<body onload="pagingzoom()">



	<table align="center">
		<tr>
			<td colspan=3 align="right">
				<div id="logged" class="fl_left"  style="display: none;"><a href="http://14.63.225.213/testing/members/login.jsp">Login</a>&nbsp;&nbsp;
  		<input type="hidden" value="<%=session.getAttribute("id")%>" name="logid" id="logid"/>
  
  
     
    <a href="joinus.jsp">Join us</a>
    </div>
			</td>
		</tr>

		<tr>
			<td valign=top align='center'>
				<!--홈피 왼쪽-->
			</td>
			<td valign=top align='center'>
				<!--게시판시작-->
				<table width="650" align="center" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td>
							<!-- 배너등의 메뉴가 들어갈수 있는 영역 -->

						</td>
					</tr>

					<tr>
						<!-- 게시판 시작 (행) -->
						<td>

							<table width="650" border="0" cellpadding="0" cellspacing="0"
								align="center" background="white">


								<tr>

									<td colspan='5'>

										<table width="100%" border="0" cellpadding="0" cellspacing="0"
											align="center">

											<tr>
												<td align="center" colspan="6" height="1" bgcolor=""></td>
											</tr>
											<tr class="write" bgcolor="" height="">
												<td width="5%" align="center" class="text1" id=text11><a><font
														size="2" color="#5D5D5D">NO</font></a></td>

												<td align="center" width='50%' class="text1"><font
													size="2" size="2" color="#5D5D5D">Title</font></td>
												<td width="10%" align="center" class="text1"><font
													size="2" color="#5D5D5D">Writer</font></td>

												<td width="15%" align="center" class="text1"><font
													size="2" color="#5D5D5D">Date</font></td>



												<td width="5%" align="center" class="text1"><font
													size="2" color="#5D5D5D">Hit</font></td>







											</tr>

											<tr>
												<!-- 히든 객체 -->

												<td align="center" colspan="6" height="1" bgcolor=""><input
													id="now" type="hidden" value="${now }" /></td>
											</tr>



											<c:if test="${vo!=null }">
											
												<c:forEach var="v" items="${vo}" varStatus="status">
												
												
												
												
												
												
												
														<c:if test="${v.bname=='bbs'}">
						
													<tr
														onMouseOver="this.style.backgroundColor='#D5D5D5'; replaceme.innerText='';"
														onMouseOut="this.style.backgroundColor=''; replaceme.innerText='';"
														bgcolor="white" height='23' bgcolor='white'
														title="글 내용을 확인합니다." style="cursor: pointer">
														<td align="center">
															<!-- 여기글번호 --> 
																
															
																${v.seq}
														</td>

														<td id="preview" onclick="viewport(${v.seq})">
															<!-- 여기 타이틀 --> 
															
															
															
															<a href="http://14.63.225.213/testing/bbs/view.inc?seq=${v.seq }&nowPage=${now}">
																${v.title}
																</a>
																
																
																
																
				

														</td>
														<td align="center">
															<!-- 글쓴이 --> ${v.writer}
														</td>

														<td align="center"><font style='font-size: 8pt;'>
																<!-- 여기 날짜 --> ${v.regdate}
														</font></td>


														<td align="center"><font style='font-size: 8pt;'>
																${v.hit} </font></td>



													</tr>
													</c:if>
													
												<!-- 답글내용을 가져온다 -->
												<c:forEach var="rv" items="${rv}" varStatus="status">
												<c:if test="${rv.seq==v.seq }">
													<tr
														onMouseOver="this.style.backgroundColor='#D5D5D5'; replaceme.innerText='';"
														onMouseOut="this.style.backgroundColor=''; replaceme.innerText='';"
														bgcolor="white" height='23' bgcolor='white'
														title="글 내용을 확인합니다." style="cursor: pointer">
														<td align="center">
															<!-- 여기글번호 --> 
																
															
<%-- 																${rv[0].seq} --%>
														</td>

														<td id="preview"   align="center" >
															<!-- 여기 타이틀 --> 
															
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="http://14.63.225.213/testing/bbs/view.inc?seq=${rv.seq }&nowPage=${now}&re=ok">
																<span style="color: #ff0000">${rv.title}</span>
																</a>
														

														</td>
														<td align="center">
															<!-- 글쓴이 --> ${rv.writer}
														</td>

														<td align="center"><font style='font-size: 8pt;'>
																<!-- 여기 날짜 -->
														</font></td>


														<td align="center"><font style='font-size: 8pt;'>
																</font></td>



													</tr>
												
												</c:if>
													
													</c:forEach>
												<!-- 답글 끝 -->
													
													

												</c:forEach>
													
												
											</c:if>

											<c:if test="${vo==null }">
												<tr>
													<!-- 조건문으로 표시 -->
													<td colspan="5" align="center">작성된 글이 없습니다.</td>
												</tr>

											</c:if>


										</table> <!-- 게시물 전체 출력후 공백값이 입력되어 선을 구분짓는다. ctrl+f 로 코드정렬후 반드시 공백값 다시 넣어줄것. -->
									</td>
								</tr>
								<tr>

									<td colspan="5" class="text13"><a href="http://14.63.225.213/testing/bbs/list.inc?nowPage=${now-1 }">◀</a>
										<c:forEach var="x" begin="${start }" end="${end }" step="1">
																						&nbsp;
											<a href="http://14.63.225.213/testing/bbs/list.inc?nowPage=${x}"><span
												id="${x}">${x}</span></a>&nbsp;
										</c:forEach><a href="http://14.63.225.213/testing/bbs/list.inc?nowPage=${now+1 }">▶</a>&nbsp;</td>



								</tr>
								<tr>

									<td align="right" class="write" id="writeid" height="20">
									
									
										<form name="wform" action="write.inc" method="post">
										
											<input type="hidden" name="setid" id="setid" value="<%=session.getAttribute("id")%>"/>
											<a href="javascript:writing()">글쓰기</a>
										</form>
										
										
									</td>


								</tr>

								<tr height='23'>
									<td align="center" colspan=5>
									
										<form action="getsearch.inc" name="getfo" method="post">
										<table border="0" cellspacing="0" cellpadding="0"
											bordercolor="#000000" height=21>

											<tr>
											
												<td>
												<a href="javascript:set1()"><font
														id="searchtab1">이름</font></a> &nbsp;<a
													href="javascript:set2()"> <font id="searchtab2">제목</font></a>
													&nbsp;
													&nbsp; &nbsp;
													<input type="hidden" name="sname" id="sname" value="">
													<input type="hidden" name="nowPage" id="nowPage" value="${now}">
													</td>
												<td><input type="text" id="word" class="searchTF"
													title="검색할 내용을 입력하세요" name="word" size="15"
													style="FONT-SIZE: 10pt; color: #666666; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid; BORDER-TOP: 1px solid; HEIGHT: px; BORDER-RIGHT: 1px solid;"></td>
												<td onclick="searchword(this.form)" style="cursor: pointer;">&nbsp;&nbsp;&nbsp;<font id="searchtab5"
													color="#5D5D5D" >검색</font></td>
																
												<td>  </td>

												<!-- 글쓰기 버튼 -->

											</tr>

										</table>
										</form>
									</td>
								</tr>

							</table>
						</td>
					</tr>
					<tr>

						<td>

							<table width="650" align="center">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!--게시판끝--> <!---->
		<tr>
			<td colspan=3 align='center' height="80">
				<!--홈피하단--> <font size="1em">copyright ⓒ 2013 by KDW All
					Pictures cannot be copied without permission.</font>
			</td>
		</tr>

		<!---->
	</table>

</body>
</html>



