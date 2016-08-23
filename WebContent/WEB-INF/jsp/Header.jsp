<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header pull-left">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                   <img src="${pageContext.request.contextPath}/images/Logo.png">
                </a>
                 <!-- <a href="#"> <i class="fa fa-userIcon"><img src="images/usersIcon.png"></i>
                       	<span class="badge badge-danger">3</span>
                       </a> -->
                       
               <div class="topSearch">
                     <input type="text" class="form-control" placeholder="Search for buddies & boards">
                     <i class="fa fa-search"></i>
                </div>
                
                
            </div>
            
            
            <div class="collapse navbar-collapse pull-right" id="">
                <ul class="nav navbar-nav topNav">
                    <li>
                       <a href="#"> <i class="fa fa-userIcon"><img src="images/usersIcon.png"></i></a>
                    </li>
                    <li>
                       <a href="#"> <i class="fa fa-bell"></i></a>
                    </li>
                    <li>
                        <img src="images/profileIcon.png" class="nav-avatar dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">
                        <ul class="dropdown-menu logMenus" role="menu">
                         <!--  <li><a href="#">My Profile</a></li>
                          <li><a href="#">Change Password</a></li> -->
                          <li><a href="${pageContext.request.contextPath}/logout.htm">Logout</a></li>
                        </ul>
                    </li>

                </ul>
            </div>

			
			
        </div>
    </nav>
</body>
</html>