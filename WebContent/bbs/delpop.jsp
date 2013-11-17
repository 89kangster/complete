<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#guide{
	display: block;
	
	font-size: 12px;
	font-weight: bold;
	color: '#5d5d5d';
	
}
#delgo{
	visibility: hidden;
	
}
</style>
<script type="text/javascript">
function setpass(){
	
	var getpwd=window.opener.document.getElementById('passpwd').value;
	var getseq=	window.opener.document.getElementById('passseq').value;
	document.getElementById('passedpw').value=getpwd;
	document.getElementById('passedseq').value=getseq;
}

</script>
<script type="text/javascript">
function selec(){
	document.getElementById('guide').style.display='none';
	document.getElementById('delgo').style.visibility='visible';
}
function godel(){
	if( document.getElementById('chk').value!="" && document.getElementById('chk').value==document.getElementById('passedpw').value){
		document.fff.submit();
	
	}else if(document.getElementById('chk').value==""){
		alert("해당글의 비밀번호를 입력하세요");
		return;
	}else if(document.getElementById('chk').value!=document.getElementById('passedpw').value){
		alert("비밀번호가 다릅니다.");
		self.close();
		return;
	}
}
</script>
</head>
<body onload="setpass()">

<form action="del.inc" method="post" name="fff">
<img src="img/inpass.png" height="20px"/><input type="password" name="chk" id="chk" onfocus="selec()" name="inpass"/>
<img id="delgo" src="img/delbt.png"  height="20px" onclick="godel()" style="cursor: pointer;"/>
<input type="hidden" name="passedpw" id="passedpw" value=""/>
<input type="hidden" name="passedseq" id="passedseq" value=""/>
</form>
<div id="guide" align="left">해당글의 비밀번호를 입력하세요.</div>


</body>
</html>





