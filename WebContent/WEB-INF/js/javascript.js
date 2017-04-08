/**
 * Java Script file 
 */


// triming whitespace at the begining and end of user text in input fields
$('#loginPageSubmitBtn').click(function(){
  if(($.trim($('#loginPageUserNameTextField').val()) == '') || ($.trim($('#loginPagePasswordTextField').val()) == '')) {
      alert('Please enter both username and password');
  }
});

