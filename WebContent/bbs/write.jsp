<%@page import="javax.swing.JOptionPane"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write</title>
<link href='http://fonts.googleapis.com/css?family=Happy+Monkey'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="./js/HuskyEZCreator.js" charset="utf-8"></script>

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
<script language='JavaScript' src='../lib/common1Skin.js'></script>
<script type="text/javascript">

function validating(){
	if(document.getElementById('ss').value=="null"){
		alert("로그인이 필요한 페이지 입니다.");
		location.href="http://14.63.225.213/testing/members/login.jsp";
	}
}

function cancelwrite(){
	if(document.getElementById('text11').value!=""||document.getElementById('content').value!=""){
		var v= confirm("현재 작성중인 내용이 있습니다. 취소하시겠습니까?");
		if(v){
			location.href="http://14.63.225.213/testing/bbs/list.inc";
		}else
			return;
	}else
		location.href="http://14.63.225.213/testing/bbs/list.inc";
	
}
</script>




</head>

<body onload="">




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
						<!-- 히든값 지정 -->
						
						
									<form name="fo" action="insert.inc" method="post" enctype="multipart/form-data" >
									
									
							<table width="650" border="0" cellpadding="0" cellspacing="0"
								align="center" background="white">

					
					




								<!-- 작성자 이름 가져오는 칸 -->
								
								<tr align="center" class="write" bgcolor="" height="">
									<td height="10px;" width="50px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #EAEAEA"><a><font size="2" color="#5D5D5D">작성자</font></a></td>
									<td height="10px;" width="150px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #F6F6F6">
										<%=session.getAttribute("id")%>
										<input type="hidden" name="writer" id="ss" value="<%=session.getAttribute("id")%>">
										</td>
								</tr>

								<!-- 테스트코딩-제목칸 -->
								<tr class="write" bgcolor="" height="">
									<td height="10px;" width="50px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #EAEAEA"><a><font size="2" color="#5D5D5D">제목</font></a></td>
									<td height="50px;" width="30px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #F6F6F6"><input type="text" size="50" name="title"/></td>

								</tr>

								<!-- text area 영역   내용칸 -->
								<tr class="write" bgcolor="" height="">
									<td height="50px;" width="50px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #EAEAEA"><a><font size="2" color="#5D5D5D">내용</font></a></td>
									<td height="10px;" width="630px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #F6F6F6">
										
										<input type="hidden" id="content" name="content" />
										
										<!--네이버 웹에디터 영역시작 -->
										
	<textarea name="ir1" id="ir1" rows="10" cols="100" style="width:396px; height:200px; display:none;"></textarea>
	


<script type="text/javascript">
//  var sHTML=oEditors.getById["ir1"].getIR();; 
var oEditors = [];


// 추가 글꼴 목록
//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "ir1",
	sSkinURI: "SmartEditor2Skin.html",	
	htParams : {
		bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		bUseVerticalResizer : false,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
		fOnBeforeUnload : function(){
			//alert("완료!");
		}
	}, //boolean
	fOnAppLoad : function(){
		//예제 코드
		//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
	},
	fCreator: "createSEditor2"
});

function pasteHTML() {
	var sHTML = "사용하지 않는 메서드 ";
	oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["ir1"].getIR();
	document.getElementById("content").value=sHTML;
// 	alert(document.getElementById("content").value);
// 	alert(sHTML);



document.fo.submit();



}
	
function submitContents(elClickedObj) {
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
	
	try {
		elClickedObj.form.submit();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '궁서';
	var nFontSize = 24;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}


setTimeout("validating()", 500);
</script>
										
										
			<!-- 웹에디터 영역 종료 -->							
										
										<!-- 글쓰기 폼 이어서 시작 -->
										</td>

								</tr>

								<!-- 첨부파일 -->
								<tr class="write" bgcolor="" height="">
									<td height="50px;" width="50px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #EAEAEA"><a><font size="2" color="#5D5D5D">첨부</font></a></td>
									<td height="10px;" width="380px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #F6F6F6">
										
										<input type="file" name="uploadFilename" ><br/>
										<span style="font-size: 11px;">
										*업로드 제한(txt,hwp,doc 등 문서파일은 압축파일로 첨부)<br/>
										파일명이 한글인 경우 파일첨부가 되지않습니다.</span>
									</td>

									<!-- 비밀번호 -->
								<tr align="center" class="write" bgcolor="" height="">
									<td height="10px;" width="80px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #EAEAEA"><a><font size="2" color="#5D5D5D">비밀번호</font></a></td>
									<td height="10px;" width="20px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #F6F6F6"><input type="password" size="3" name="pwd"/></td>
								</tr>

								<!-- 접속 아이피 받아오기 -->

								<tr align="center" class="write" bgcolor="" height="">
									<td height="50px;" width="50px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #EAEAEA">
										<a><font size="2" color="#5D5D5D">IP</font></a></td>
									<td height="10px;" width="150px" align="left" class="text1"
										id="text11" style="border:1px solid white;background-color: #F6F6F6">
										<%=session.getAttribute("ip")%>
										<input type="hidden" name="ip" value="<%=session.getAttribute("ip")%>">
										</td>
								</tr>




								<tr>
									<td align="center" colspan="6" height="1" bgcolor=""></td>


								</tr>
								




								<tr>
									<td colspan="5"></td>
								</tr>









								<!-- 게시물 전체 출력후 공백값이 입력되어 선을 구분짓는다. ctrl+f 로 코드정렬후 반드시 공백값 다시 넣어줄것. -->

								<tr>


									<td align="center" class="write" width="400px" height="55"
										colspan="6"><a href="javascript:showHTML()" >작성</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="javascript:cancelwrite()">취소</a></td>
								
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



