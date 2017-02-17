<%@page import="java.util.List"%>
<div class="profileBanner">
    	    	
<!--     	<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel"> -->
    	<div id="" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner" role="listbox">
          <div class="item active">
          <img src="${banner.bannerImageUrl}?" class="innerBanner" alt="" onerror="userErrorDefaultBanner(this)">
          <div class="cover carousel-caption pull-right">
          <button type="button">OK</button>
          <button type="button">CANCEL</button>
          </div>
          
          
          
          
           <%--  <div class="item active">
              <img src="${pageContext.request.contextPath}/images/innerBanner.png" class="innerBanner" alt="">
            </div>
        
            <div class="item">
              <img src="${pageContext.request.contextPath}/images/innerBanner2.png" class="innerBanner" alt="">
            </div>
            
             <div class="item">
              <img src="${pageContext.request.contextPath}/images/gal5.jpg" class="innerBanner" alt="">
            </div> --%>
<%--            <c:choose>
                  	<c:when test="${!empty UserBannerList}">
                  			<c:forEach items="${UserBannerList}" var="banner" varStatus="index">
            <c:choose>
                  	<c:when test="${index.count eq 1}">
                  			<div class="item active">
                  	</c:when>
                  	<c:otherwise>
                  			<div class="item">
                  	</c:otherwise>
                  </c:choose>
             
              <img src="${banner.bannerImageUrl}?" class="innerBanner" alt="" onerror="userErrorDefaultBanner(this)">
                      
            </c:forEach>
                  	</c:when>
                  	<c:otherwise>
                  			<img src="${pageContext.request.contextPath}/images/innerBanner.png" class="innerBanner">
                  	</c:otherwise>
                  </c:choose>
             --%>
            </div>               
           
          </div>
        </div>
    </div>