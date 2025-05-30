<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>404 - 페이지를 찾을 수 없음</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light d-flex justify-content-center align-items-center vh-100">
<div class="text-center">
    <h1 class="display-1 text-warning">404</h1>
    <p class="fs-3">😕 페이지를 찾을 수 없습니다</p>
    <p class="lead">요청하신 페이지가 존재하지 않거나 이동되었습니다.</p>
    <a href="/" class="btn btn-primary mt-3">홈으로 돌아가기</a>
</div>
</body>
</html>