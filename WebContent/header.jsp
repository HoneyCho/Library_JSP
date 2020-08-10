<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.best.library.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<header>
      <div class="container">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="Home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="BookList.jsp">Book List</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="StudentList.jsp">Student List</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="AddBook.jsp">Add Book</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AddStudent.jsp">Add Student</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AddRentBook.jsp">Rent Book</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="RentList.jsp">Rent Book List</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ReturnList.jsp">Return Book List</a>
           </li>
          
        </ul>
      </nav>
                                              
    </div>
    
</header>