<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��й�ȣ ã��</title>
<style>
#changePwd-table {
    width: 70%;
    border-spacing: 10px;
    border-collapse: separate;
    margin: auto;
    padding: auto;
}
 #changePwdbtn {
    background-color: #FFCD01;
    color: #fff;
    font-weight: 900;
}

#changePwdbtn:hover{
    background-color: #F39C12;
}

#changePwd-table ::placeholder {
  font-size: 13px;
}

#changePwdForm{
	min-height: 600px;
	height: auto;
}
</style>

</head>
<body>

<jsp:include page="top.jsp"/>
	<div class="changePwdForm" id="changePwdForm">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h3 align="center">
						��й�ȣ���� <br> <small class="text-muted">���ο� ��й�ȣ�� �������ּ���.</small>
					</h3>
					<form action="updatePw.action" method="POST" class="form-group" align="center">
					<input type="hidden" name="userEmail" value="${userEmail}">
						<table id="changePwd-table">
							<tr>
								<td colspan="2">
									<input type="password" class="form-control"	id="userPwd" name="userPw" placeholder="�� ��й�ȣ�� �Է����ּ���">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="password" class="form-control"	id="userPwdCk" placeholder="��й�ȣ�� �ٽ� �ѹ� �Է����ּ���" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div>
										<button type="submit" class="btn btn-warning btn-lg btn-block mb-2" id="changePwdbtn">��й�ȣ����</button>
									</div>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
	
	<script>
	var userPwd;
	var userPwdCk;
	
	var userEmail = "${userEmail}";
	$(document).ready(function(){
		console.log(userEmail);
	});

	$("#userPwd").blur(function() {
		userPwd = $("#userPwd").val().trim();
		var pwdRegex = /^[a-zA-Z0-9]{6,14}$/;
		if(!pwdRegex.test(userPwd)){
			alert("��й�ȣ�� ���ڿ� ���� ���� 6�̻� 14�ڸ� �̳��� �ۼ����ּ���.");
			$("#userPwd").val("").focus();
		}else{
			$("#userPwdCk").focus();
			$("#userPwdCk").blur(function() {
				userPwdCk = $("#userPwdCk").val().trim();
				if(userPwdCk != userPwd){
					alert("��й�ȣ�� �ٽ� �Է����ּ���.");

					return false;
				}
			});
		}
	});
	
	</script>
</body>
</html>