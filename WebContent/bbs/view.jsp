<%@page import="javax.swing.JOptionPane"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--!int startpage;--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view</title>
<link href='http://fonts.googleapis.com/css?family=Happy+Monkey'
	rel='stylesheet' type='text/css'>


<style type="text/css">
.myid {
	text-align: left;
}

#dialog {
	font-size-adjust: none;
	font-weight: bold;
	font-size: 8pt;
	color: #5D5D5D;
}

.searchTF {
	font-weight: bold;
}

#text13 {
	border-top: 1px solid #BDBDBD;
}

font#searchtab1,#searchtab2,#searchtab3,#searchtab4,#searchtab5 {
	font-weight: bold;
	color: #5D5D5D;
}

.searchtabcolor {
	color: red;
}

.write,.text1 {
	text-decoration: none;
	font-weight: bold;
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

.option {
	font-family: 굴림;
	font-size: 9pt;
	color: #666666
}

.pad {
	padding-left: 100px;
}
</style>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
	function download(fname) {

		location.href = "../FileDownload?dir=uploadFilename&filename=" + fname;
		//위의 FileDownload는 서블릿이다.
	}
</script>
<script type="text/javascript">

function rep(){
	
	document.fofo.submit();
	
}


function del(){
	window.open("delpop.jsp", "n",
	"resizable=no, width=290, height=80, left=0,top=0  ");
	
	
	
	
}

</script>

</head>

<body>




	<table align="center">
		<tr>
			<td colspan=3 align='center'>
				<!--홈피상단에 위치-->
			</td>
		</tr>
		<!---->
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
							<form action="changereply.inc" method="post" name="fofo">
												<input type="hidden" value="${vo.title }" name="reptitle" id="reptitle">
												<input type="hidden" value="${vo.seq }" name="repno" id="repno"> 
							 
								<table width="650" border="0" cellpadding="0" cellspacing="0"
									align="center" background="white">






									<!-- 작성자 이름 가져오는 칸 -->
									<tr align="center" class="write" bgcolor="" height=""
										style="border: 1px solid white;">
										<td height="10px;" width="50px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #EAEAEA"><a><font
												size="2" color="#5D5D5D">작성자</font></a></td>
										<td height="10px;" width="150px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #F6F6F6">${vo.writer }
											<input type="hidden" id="passseq" value="${vo.seq }">
											</td>
									</tr>

									<!-- 테스트코딩-제목칸 -->
									<tr class="write" bgcolor="" height=""
										style="border: 1px solid white;">
										<td height="10px;" width="50px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #EAEAEA"><a><font
												size="2" color="#5D5D5D">제목</font></a></td>
										<td height="50px;" width="230px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #F6F6F6">${vo.title }</td>

									</tr>

									<!-- text area 영역   내용칸 -->
									<tr class="write" bgcolor="" height=""
										style="border: 1px solid white;">
										<td height="50px;" width="50px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #EAEAEA"><a><font
												size="2" color="#5D5D5D">내용</font></a></td>
										<td height="190px;" width="230px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #F6F6F6">${vo.content }</td>

									</tr>

									<!-- 첨부파일 -->
									<c:if test="${filecheck=='ok' }">
									<tr class="write" bgcolor="" height="">
										<td height="50px;" width="50px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #EAEAEA"><a><font
												size="2" color="#5D5D5D">첨부</font></a></td>
										<td height="10px;" width="250px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #F6F6F6">
											<c:if test="${vo.uploadFilenameFileName!=null || vo.uploadFilenameFileName!=''}">
<%-- 												<a href="javascript:download('${vo.uploadFilenameFileName}')">${vo.uploadFilenameFileName}</a> --%>
												<a href="http://14.63.225.213/testing/uploadFilename/${vo.uploadFilenameFileName}">${vo.uploadFilenameFileName}</a>
											</c:if> <c:if test="${vo.uploadFilenameFileName==null}">
											첨부된 파일이 없습니다.
										</c:if> <!-- 해당글의 파일을 가져온다 -->
										</td>


										</tr>
										
										<c:if test="${filecheck=='no' }}">
										
											
											
										
										</c:if>
										
										
							</c:if>
										<!-- 접속 아이피 받아오기 -->
									<tr align="center" class="write" bgcolor="" height=""
										style="border: 1px solid white;">
										<td height="50px;" width="50px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #EAEAEA"><a><font
												size="2" color="#5D5D5D">IP</font></a></td>
										<td height="10px;" width="250px" align="left" class="text1"
											id=text11
											style="border: 1px solid white; background-color: #F6F6F6">

											<c:if test="${vo.ip!=null}">
											${vo.ip }
										</c:if> <c:if test="${vo.ip==null}">
											ip가 등록되지 않았습니다.
										</c:if>

										</td>
									</tr>

												


									<tr>
										<td align="center" colspan="6" height="1" bgcolor="">
										<input type="hidden" id="passpwd" name="passpwd" value="${vo.pwd }"/>
										</td>


									</tr>





									<tr>
										<td colspan="5"></td>
									</tr>










									<!-- 게시물 전체 출력후 공백값이 입력되어 선을 구분짓는다. ctrl+f 로 코드정렬후 반드시 공백값 다시 넣어줄것. -->

									<tr>


										<td align="right" class="write" width="400px" height="55"
											colspan="6"><a
											href="http://14.63.225.213/testing/bbs/modify.inc?seq=${vo.seq }">수정
										</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:del()">삭제</a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											href="http://14.63.225.213/testing/bbs/list.inc?nowPage=${now }">목록</a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											
											<a href="javascript:rep()">답변</a>
										</td>

									</tr>

									<tr height="23">
										<td height=30 colspan=2 align=left>&nbsp;&nbsp;</td>

									</tr>
									<tr>

										<td colspan="5">
										
											
											</td>

									</tr>



								</table>
							</form>
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
				</table> <!--게시판끝-->

			</td>
			<td valign=top align='center' width="50px"></td>
		</tr>
		<!---->
		<tr>
			<td colspan=4 align='center' height="0">
				<!--홈피하단--> <font size="1em">copyright ⓒ 2013 by KDW All
					Pictures cannot be copied without permission.</font>
			</td>
		</tr>

		<!---->
	</table>

</body>
</html>


