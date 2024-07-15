<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://stu17.sist.co.kr/spring_mvc/common/favicon.ico"/>
<!--bootstrap 시작-->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<link rel="stylesheet" href="http://stu17.sist.co.kr/spring_mvc/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://stu17.sist.co.kr/spring_mvc/common/css/board.css" type="text/css" media="all" />

<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

<style type="text/css">
	
</style>
<!-- 개발버전, 도움되는 콘솔 경고포함 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
            useDataBind();
        });//click
	});//ready

    function useDataBind(){
        var model={msg: "오늘은 구름 낀 수요일"}
        new Vue({
           el:"#app",
           data: model     
        })
    }
</script>
</head>
<body>
<div id="app">
	<input type="button" value="클릭" id="btn" class="btn btn-sm btn-success"/><br>
    <div>
        HTML body에 직접 출력<br>
        오늘은 <strong>{{ msg }}</strong>
    </div>
    <div>
        <h2 v-text="msg"></h2>
    </div>
    <div>
        <input type="text" name="name" v-bind:value="msg"/>
        <input type="text" name="name" :value="msg"/>
    </div>
</div>
</body>
</html>