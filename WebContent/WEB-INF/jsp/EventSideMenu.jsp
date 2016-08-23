<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!--Right Block-->
                     	<div class="col-md-3 pull-right noPadding pageRightBlock ">
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content rightEventsBlock">
                              <div class="sidebar-header">Events</div>
                              
                              <c:choose>
                              		<c:when test="${not empty UserUpComingEvent}">
                             				<%-- <c:forEach items="${UserUpComingEvent}" var="event">
                             						
                             						
                             						<div class="sidebar-list">
														<div class="teamLogos">	
					                                		<div class="dateBox">
					                                        <h2><fmt:formatDate pattern="d" value="${event.eventDate}" /></h2>
					                                        <fmt:formatDate pattern="E" value="${event.eventDate}" />
					                                        </div>
					                                	</div>
					                              		<strong>${event.eventDescription}</strong>
					                                    <br><fmt:formatDate pattern="d/M/YYYY k a" value="${event.eventDate}" /><br>
					                                    ${event.venue}.
					                                    <c:choose>
					                                    <c:when test="${event.createdAs eq 'Buddy'} ">
					                                    		<div class="evnBtns">
					                                         <a href="#" class="text-success">Accepted</a>
					                                         <a href="#" class="text-warning">Maybe</a>
					                                         <a href="#" class="text-danger">Rejected</a>
					                                    </div>
					                                    </c:when>
					                                    <c:otherwise>
					                                    
					                                    
					                                    </c:otherwise>
					                                    
					                                    </c:choose>
					                                    
                             			 			</div>
                             						
                             						
                             				</c:forEach> --%>
                             				<c:forEach items="${UserUpComingEvent}" var="event">
                             						
                             						
                             						<div class="sidebar-list">
														<div class="teamLogos">	
					                                		<div class="dateBox">
					                                        <h2><fmt:formatDate pattern="d" value="${event.eventDate}" /></h2>
					                                        <fmt:formatDate pattern="E" value="${event.eventDate}" />
					                                        </div>
					                                	</div>
					                              		<strong>${event.eventDescription}</strong>
					                                    <br><fmt:formatDate pattern="MM/dd/YYYY hh:mm a" value="${event.eventDate}" /><br>
					                                    ${event.venue}.
					                                    <c:choose>
					                                    <c:when test="${event.createdAs eq 'Buddy'} ">
					                                    		
					                                    </c:when>
					                                    <c:otherwise>
					                                    
					                                    
					                                    </c:otherwise>
					                                    
					                                    </c:choose>
					                                    
                             			 			</div>
                             						
                             						
                             				</c:forEach>
                              		</c:when>
                              		<c:otherwise>
                              			<div class="sidebar-list noContentDiv">
                             				No event 
                             		</div>
                              		</c:otherwise>
                              </c:choose>
                              
                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content rightEventsBlock">
                              <div class="sidebar-header">Completed Events</div>
                              
                              <c:choose>
                              		<c:when test="${not empty UserCompleteEvent}">
                             				<c:forEach items="${UserCompleteEvent}" var="event">
                             						                             						
                             						<div class="sidebar-list">
														<div class="teamLogos">	
					                                		<div class="dateBox grayBox">
					                                        <h2><fmt:formatDate pattern="d" value="${event.eventDate}" /></h2>
					                                        <fmt:formatDate pattern="E" value="${event.eventDate}" />
					                                        </div>
					                                	</div>
					                              		<strong>${event.eventDescription}</strong>
					                                    <br><fmt:formatDate pattern="MM/dd/YYYY hh:mm a" value="${event.eventDate}" /><br>
					                                    ${event.venue}				                                    
                                    
                             						 </div>
                             						
                             				</c:forEach>
                              		</c:when>
                              		<c:otherwise>
                              				<div class="sidebar-list noContentDiv">
                             				No event 
                             		</div>
                              		</c:otherwise>
                              </c:choose>
                              
                            </div>
                          </div>
                          
                          <%-- <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content rightEventsBlock">
                              <div class="sidebar-header">Cancelled Events</div>
                              
                              <c:choose>
                              		<c:when test="${not empty UserCancelEvent}">
                             				<c:forEach items="${UserCancelEvent}" var="event">
                             						                             						
                             						<div class="sidebar-list">
														<div class="teamLogos">	
					                                		<div class="dateBox grayBox">
					                                        <h2><fmt:formatDate pattern="d" value="${event.eventDate}" /></h2>
					                                        <fmt:formatDate pattern="E" value="${event.eventDate}" />
					                                        </div>
					                                	</div>
					                              		<strong>${event.eventDescription}</strong>
					                                    <br><fmt:formatDate pattern="MM/dd/YYYY hh:mm a" value="${event.eventDate}" /><br>
					                                    ${event.venue}				                                    
                                    
                             						 </div>
                             						
                             				</c:forEach>
                              		</c:when>
                              		<c:otherwise>
                              				<div class="sidebar-list noContentDiv">
                             				No event 
                             		</div>
                              		</c:otherwise>
                              </c:choose>
                              
                              
                              
                             
                            </div>
                          </div>
                           --%>
                          
                          
                          
                        </div>
                	
                
                     <!--/Right Block End-->


</body>
</html>