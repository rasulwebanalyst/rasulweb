<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

</body>

<!--Select Box-->
<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>
<!--File Upload-->
<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
		});
   </script>
	<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-plus-circle").removeClass("fa-plus-circle").addClass("fa-minus-circle");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			});
		});
   </script>

 <!--Gallery-->
   
   <script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
				$('.datepicker').datepicker();
				
			});
		</script>

<script type="text/javascript">
	  $(function() {
		$('#datetimepicker3').datetimepicker({
			autoclose: true,
			pickTime: false,
		  startDate: new Date()
		  
		 // endDate: new Date('2015-11-5')
		});
		/*  $('#datetimepicker3').on('changeDate', function(ev){
				$(this).datetimepicker('hide');
			}); */
	  });
	 
</script>    


<script type="text/javascript">
	  $(function() {
		$('#datetimepicker4').datetimepicker({
      pickDate: false,
      startDate: new Date()
      
    });
		 $('#datetimepicker4').on('changeDate', function(ev){
				$(this).datetimepicker('hide');
			});
	  });
	</script> 
	<script type="text/javascript">
	  $(function() {
		$('#testdatepicker').datetimepicker({
		pickTime: false,
      //	startDate: new Date('2014-10-15'),
      	endDate:new Date('2014-10-15'),
      	showDate : Date('2014-10-15')
    });
	  });
	</script> 
	
	

</html>