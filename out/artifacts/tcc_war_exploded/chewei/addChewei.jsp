<%@include file="/common/sub_header.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

</head>

<body>
	<jsp:include page="/top.jsp"></jsp:include>
	<div class="container clearfix">
		<jsp:include page="/left.jsp"></jsp:include>
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i><span>新增车位</span>
				</div>
			</div>
			<div class="result-wrap">
				<div class="result-content">
					<form method="post" id="myform" name="myform">
						<table class="insert-tab" width="100%">
							<tbody>

								<tr>
									<th><i class="require-red">*</i>车位号：</th>
									<td><input class="common-text required" id="hao"
										name="hao" size="50" value="" type="text"></td>
								</tr>

								<tr>
									<th><i class="require-red"></i>区域：</th>
									<td><select id="qu" name="qu">
											<option value="A区">A区</option>
											<option value="B区">B区</option>
											<option value="C区">C区</option>
									</select></td>
								</tr>

								<tr>
									<th><i class="require-red"></i>备注：</th>
									<td><input class="common-text required" id="info"
										name="info" size="50" value="" type="text"></td>
								</tr>


								<tr>
									<th></th>
									<td><input class="btn btn-primary btn6 mr10"
										onclick="save();" value="提交" type="button"> <input
										class="btn btn6" onclick="history.go(-1)" value="返回"
										type="button"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

		</div>
		<!--/main-->
	</div>
</body>
</html>
<script>

function save() {
	if ($("#hao").val() == "") {
		$.messager.alert('警告', '车位号不能为空！', 'warning');
		return;
	}
	if ($("#pwd").val() == "") {
		$.messager.alert('警告', '密码不能为空！', 'warning');
		return;
	}
	document.forms[0].action = "<%=path%>
	/AddCheweiAction";
		document.forms[0].submit();

	}
</script>
