
//var fbURL='1552238875041700'; // Dev
//110086556012641

//var fbURL='1037086509684954'; // local
   var fbURL='480457342143824'; // Production
 //var fbURL='110086556012641'; // QA
  window.fbAsyncInit = function() {
    FB.init({
      appId      :fbURL ,
      xfbml      : true,
      version    : 'v2.5'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
function fbAccount()
{
	 FB.login(function(response) {
     	
     	//console.log('facebook');
     	console.log(response);
        if (response.status=='connected') 
        {
          
        	getFacebookUserInfo();
        //	getFacebookUserInfo2();
         } else 
         {
          console.log('User cancelled login or did not fully authorize.');
         }
      },{scope: 'email,public_profile,user_photos,user_videos'});
	
}

function getFacebookUserInfo() {
	
	 FB.api('/me?fields=email,name,first_name,last_name', function(response) {
		 console.log(response);
	      console.log('Successful login for: ' + response.name);
	      console.log(response.email);
	       console.log(response.first_name);
	       $('#loading').show();
	      if(response.name!=null)
	    	  {
	    	  
	    	    document.getElementById('fbfirstName').value=response.first_name;
	    	    document.getElementById('fbemailAddress').value=response.email;
	 	       document.getElementById('fbpassword').value=response.id;
	 	       document.getElementById('fblogintype').value='Facebook';
	 	      
	 	     document.getElementById('fblastName').value=response.last_name;
	 	       document.getElementById('fbloginTypeId').value='9e04341e-0252-4145-ae6c-d40c08db9027';
	 	      // document.myform.action ="update.html";
	 	      // document.getElementById("fbloginvalidation").submit();
	 	      console.log('first name--> '+response.first_name+'   last name---> '+response.last_name);
	 	       oAuthsubmit();   
	    	  }else{
	    		  alert('We are not able to get your profile from facebook, so please use cricketsocial to register');
	    		  return false;
	    	  }
	      
	       
	       
	    },{ scope: 'email,public_profile' });
	
}
function getFacebookUserInfo2() {
	
//	FB.api('/me?fields=email,name,first_name,last_name', function(response) {
	//FB.api('/me/friends', {fields: 'name,id,location,birthday'}, function(response) {
	//FB.api('/me?fields=friends', {fields: 'name,id,location,birthday'}, function(response) {
	var id=0;
	FB.api('/me?fields=email,name,first_name,last_name,picture', function(response) {
	console.log("JSOPN "+JSON.stringify(response));
		console.log(response);
		
		console.log('first name--> '+response.first_name+'   last name---> '+response.last_name);
		id=response.id;
	},{ scope: 'email,public_profile' });
	FB.api('/'+id+'?fields=friends', {fields: 'name,id,location,birthday'}, function(response) {
		console.log(response);
	});
}
function oAuthRegistration()
{
	projectURL=  document.getElementById('projectURL').value;
	 var email=$('#fbemailAddress').val();
     var password=$('#fbpassword').val();
     var firstName=$('#fbfirstName').val();
     var logintype=$('#fblogintype').val();
     var loginTypeId=$('#fbloginTypeId').val();
     var latLang=$('#latLang').val();
     var lastName=$('#fblastName').val();
      var Users={
    		  emailAddress:email,
    		  password:password,
    		  firstName : firstName,
    		  lastName : lastName,
    		  loginType : logintype,
    		  loginTypeId : loginTypeId,
    		  latLang : latLang
      };
	
      var logininfo=JSON.stringify(Users);
       $.ajax({
					type : "POST",
					url : projectURL+"/oAuthRegistration",
					dataType: "json",
		            contentType: "application/json; charset=utf-8",
		            data:logininfo,
		              async: false,
					success : function(res) {
						console.log(res);	
						if(res!=null)
							{
								if(res.userExist=='YES')
									{
										oAuthsubmit();
									}else{
									//	window.location.href="${pageContext.request.contextPath}/success.htm?suid="+res.userName+"&smg="+res.userExist;
										oAuthsubmit();
									}
							}else{
								//window.location.href="${pageContext.request.contextPath}/home.htm";
							}
						
						
					},
					
					error:function(response){
					//alert("Error message"+JSON.stringify(response));
					},
				
					
				}); 

}
function oAuthsubmit()
{
	  $('#loading').show();
	 var   projectURL=  document.getElementById('projectURL').value;
     // oAuthsubmit();
	 var email=$('#fbemailAddress').val();
     var password=$('#fbpassword').val();
     var firstName=$('#fbfirstName').val();
     var lastName=$('#fblastName').val();
     var logintype=$('#fblogintype').val();
     var loginTypeId=$('#fbloginTypeId').val();
     var latLang=$('#latLang').val();
      var Users={
    		  emailAddress:email,
    		  password:password,
    		  firstName : firstName,
    		  lastName : lastName,
    		  loginType : logintype,
    		  loginTypeId : loginTypeId,
    		  latLang : latLang
      };
      var logininfo=JSON.stringify(Users);
      $.ajax({
					type : "POST",
					url : projectURL+"/oAuthloginValidate",
					dataType: "json",
		            contentType: "application/json; charset=utf-8",
		            data:logininfo,			            
					success : function(res) {
						console.log(res);	
						if(res!=null){
								if(res.loginStatus=='User Not Exist'){
										oAuthRegistration();
									}else{
										 $('#loading').show();
										 console.log('not register');
										window.location.href=projectURL+"/";
									}
							}else{
								console.log('server error');
							}  $('#loading').hide();
					},
					
					error:function(response){
					},
				
					
				}); 
}


//*********************************************            *******************************************************************

/*function googleLogin()
{
	  var myParams = {
			  'clientid' : '199727375065-10dcv13ql2vkdijvfrl6q1ifnruld40n.apps.googleusercontent.com',
			  'cookiepolicy' : 'none',
			    'callback' : 'loginCallback',
			    'approvalprompt':'force',
			    'scope' : 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile https://www.google.com/m8/feeds/ https://www.googleapis.com/auth/contacts.readonly',
			  };
			  gapi.auth.signIn(myParams);
} // Dev Environment             (Not Working)

/*function googleLogin()
{
	  var myParams = {
			  'clientid' : '1077808914943-6qc5il3h9odjpnna5j1qsmh7i81pg4d6.apps.googleusercontent.com',
			  'cookiepolicy' : 'none',
			    'callback' : 'loginCallback',
			    'approvalprompt':'force',
			    'scope' : 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile https://www.google.com/m8/feeds/ https://www.googleapis.com/auth/contacts.readonly',
			  };
			  gapi.auth.signIn(myParams);
}*/  // QA Environment                (Working for both dev & qa)

function googleLogin()
{
	  var myParams = {
			  'clientid' : '575004365806-75h30uhausuu6pamhqaf304r312kk6q6.apps.googleusercontent.com',
			  'cookiepolicy' : 'none',
			    'callback' : 'loginCallback',
			    'approvalprompt':'force',
			    'scope' : 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile https://www.google.com/m8/feeds/ https://www.googleapis.com/auth/contacts.readonly',
			  };
			  gapi.auth.signIn(myParams);
}  // Production Environment
	 
function loginCallback(result)
{
	
    if(result['status']['signed_in'])
    {
        var request = gapi.client.plus.people.get(
        {
            'userId': 'me'
        });
        request.execute(function (resp)
        {
        	var i;
            var email = '';
            if(resp['emails'])
            {
                for(i = 0; i < resp['emails'].length; i++)
                {
                    if(resp['emails'][i]['type'] == 'account')
                    {
                        email = resp['emails'][i]['value'];
                        
                    }
                }
            }
           console.log(JSON.stringify(resp));
           // console.log(resp.id);
            
          
 	       
 	       if(resp.name['givenName']!=null)
 	    	   {
 	    	  document.getElementById('fbemailAddress').value=email;
 	 	       document.getElementById('fbpassword').value=resp.id;
 	 	       document.getElementById('fblogintype').value='Gmail';
 	 	       document.getElementById('fbfirstName').value=resp.name['givenName'];
 	 	     document.getElementById('fblastName').value=resp.name['familyName'];
 	 	      document.getElementById('fbloginTypeId').value='0577c3f5-d355-4355-8eb8-bff3af3237c6';
 	 	    
 	 	       oAuthsubmit();   
 	    	   }else{
 	    		  alert('We are not able to get your profile from Gmail, so please use cricketsocial to register');
 	    	   }
           
        });
 
    }
   
}

function onLoadCallback()
{
  // gapi.client.setApiKey("AIzaSyA0fVf7zr2HemJ5ItsizriAF2Vxvf9k-28");//FOR  QA AIzaSyBkJTuE1F2YOwLGOzHqNx5Q9beqbQdZW_8
	// gapi.client.setApiKey("AIzaSyA9laDOXif5a3Cd4Ha03JXC77vXnfFZu0g"); // For Dev  Qa
	gapi.client.setApiKey("AIzaSyBzCBzUjAh3MCIMyL74VKzDvRxR91XCZHQ"); // Production Environment 
  
	
    gapi.client.load('plus', 'v1',function(){});
}



(function() {
 var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
 po.src = 'https://apis.google.com/js/client.js?onload=onLoadCallback';
 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
})();


function getGmailContacts() {
    var config = {
    //  'client_id': '199727375065-10dcv13ql2vkdijvfrl6q1ifnruld40n.apps.googleusercontent.com', // Dev 
    	//	'client_id': '1077808914943-6qc5il3h9odjpnna5j1qsmh7i81pg4d6.apps.googleusercontent.com',  // QA
    		'client_id': '575004365806-sbdnc074cvqg3bqioomamtoirfnl2789.apps.googleusercontent.com',  // Prod
    		
      'scope': 'https://www.google.com/m8/feeds'
    };
    gapi.auth.authorize(config, function() {
      fetch(gapi.auth.getToken());  
     
    });
  }

  function fetch(token) {
    $.ajax({
	    url: "https://www.google.com/m8/feeds/contacts/default/full?access_token=" + token.access_token + "&alt=json",
	    dataType: "jsonp",
	    success:function(result) {
	    
	    var entries = result.feed.entry;
       	 var htmlContent="";
       	 var contactsCount=0;
       	 for (var i = 0; i < entries.length; i++) {
       		 var gmails=entries[i].gd$email;
               if(typeof gmails === "undefined"){
               }else{
                        var contactEntry = gmails[0];
                      htmlContent += "<p><input type='checkbox' name='email' id='' value='"+contactEntry.address+"'>"+contactEntry.address+"</p>";
                      contactsCount++;
               }
       	  } 
       	 
       	 $('#noOfContactsId').text(contactsCount);
       	 $('#gmailPopupDiv').show();
       	 $('#mailidsId').html(htmlContent).trigger('create');
       
	    }
	});
}	

  
   
  function checkAllGmailContascts(elem){
		 //alert(elem.checked);
		 if(elem.checked){
			 $('#mailidsId input').prop('checked',true);
		 }else{
			 $('#mailidsId input').prop('checked',false);
		 }
		
	 }
  function inviteYourBuddieByMailFromContacts(){
	  var contactsArray=new Array();
		 $('#mailidsId input:checked').each(function(){
			 contactsArray.push(this.value);
		 });
		 
		 inviteYourBuddieByMail(contactsArray);
		
  }
	 
	


