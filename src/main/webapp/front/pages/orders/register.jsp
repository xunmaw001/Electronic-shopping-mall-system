<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url(../../img/banner.jpg);"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> 订单注册 </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				
                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">商品表名：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="tablename" name="tablename" placeholder="请输入商品表名" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">商品id：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="goodid" name="goodid" placeholder="请输入商品id" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">商品名称：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="goodname" name="goodname" placeholder="请输入商品名称" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">购买数量：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="buynumber" name="buynumber" placeholder="请输入购买数量" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">价格/积分：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="price" name="price" placeholder="请输入价格/积分" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">折扣价格：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="discountprice" name="discountprice" placeholder="请输入折扣价格" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">总价格/总积分：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="total" name="total" placeholder="请输入总价格/总积分" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">折扣总价格：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="discounttotal" name="discounttotal" placeholder="请输入折扣总价格" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">地址：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="address" name="address" placeholder="请输入地址" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">电话：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="tel" name="tel" placeholder="请输入电话" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">收货人：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="consignee" name="consignee" placeholder="请输入收货人" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
								
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    					                    if(!data.orderid){
                        layer.msg('订单编号不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                                                                                                                            					                    if(!data.userid){
                        layer.msg('用户id不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                    if(!data.goodid){
                        layer.msg('商品id不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                                                                                                                            					                                                                                                                                            					                    if(!data.buynumber){
                        layer.msg('购买数量不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                            if(!isIntNumer(data.buynumber)){
                        layer.msg('购买数量应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                    if(!data.price){
                        layer.msg('价格/积分不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                if(!isNumber(data.price)){
                        layer.msg('价格/积分应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                        					                                                            if(!isNumber(data.discountprice)){
                        layer.msg('折扣价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                        					                    if(!data.total){
                        layer.msg('总价格/总积分不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                if(!isNumber(data.total)){
                        layer.msg('总价格/总积分应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                        					                                                            if(!isNumber(data.discounttotal)){
                        layer.msg('折扣总价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                        					                                        if(!isIntNumer(data.type)){
                        layer.msg('支付类型应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                                                http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
