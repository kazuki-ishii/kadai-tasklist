<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
   <c:param name="content">
      <% request.setCharacterEncoding("UTF-8"); %>

      <h2>id : ${task.id}のメッセージ</h2>

      <p>タイトル:<c:out value="${ task.title}"></c:out></p>
      <p>日程:<c:out value="${task.content }"></c:out></p>
      <p>作成日時:<fmt:formatDate value="${task.created_at }" pattern="$yyyy-MM-dd HH:mm:ss"/></p>
      <p>更新日時:<fmt:formatDate value="${task.updated_at }" pattern="$yyyy-MM-dd HH:mm:ss"/></p>

      <p><a href="${pageContext.request.contextPath }/index">タスク一覧へ戻る</a></p>
      <p><a href="${pageContext.request.contextPath }/edit?id=${task.id}">タスクの変更</a></p>
   </c:param>
</c:import>