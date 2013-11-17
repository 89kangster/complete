<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">
function popend(){
	alert("글이 삭제되었습니다.");
	opener.location.href="http://14.63.225.213/testing/bbs/list.inc";
	self.close();
	
}
</script>

</head>
<body onload="popend()">

</body>
</html>