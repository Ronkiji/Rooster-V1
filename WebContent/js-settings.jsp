<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.rooster.type.*, javax.servlet.http.HttpSession"%>
function changeName() {
	
}

function changePfp(){
	
}

function logout(){
	<%
	session.invalidate();
	%>
	window.location.href = "/RoosterOnEclispe/landing.jsp";

}