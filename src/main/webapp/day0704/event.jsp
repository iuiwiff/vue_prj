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
<!--sist스타일시트 시작--> 
<link rel="stylesheet" href="http://stu17.sist.co.kr/spring_mvc/common/css/main.css" type="text/css" media="all" /> 
<link rel="stylesheet" href="http://stu17.sist.co.kr/spring_mvc/common/css/board.css" type="text/css" media="all" /> 
<!--sist스타일시트 끝-->

<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

<!-- 개발버전, 도움되는 콘솔 경고를 포함. -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<style type="text/css">


</style>
<script type="text/javascript">
	$(function() {
		
	});//ready
</script>
</head>
<body>
<div>
	<div id="app">
        <input type="button" value="클릭" class="btn btn-sm btn-success" v-on:click="handleClick" />
        <input type="button" value="더블클릭" class="btn btn-sm btn-success" 
        v-on:dblclick="handleDblClick" /><br>
        <input type="text" placeholder="엔터를 치면 동작" v-on:keydown.enter="handleEnter"/>
        <input type="text" placeholder="clip board 이벤트" v-on:copy="handleClip"/>
        <form v-on:submit.prevent="handleSubmit">
            <input type="text" v-model="formValue" />
            <button type="submit">전송</button>
        </form>

    </div>
</div>
<script type="text/javascript">
    new Vue({
        el:"#app",
        data:{ formValue: ''},
        methods:{
            handleClick() {
                alert("버튼이 클릭");
            },
            handleDblClick() {
                alert("더블클릭");
            },
            handleEnter() {
                alert("엔터침");
            },
            handleClip() {
                alert("복사됨");
            },
            handleSubmit() {
                alert("폼이 서브밋 이벤트를 발생시킴" + this.formValue);
            }
        }
    });
</script>
</body>
</html>