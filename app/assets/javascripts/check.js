//function showdiv() {
  //document.getElementById("user_name").style.display ="block";
  //document.getElementById("show").style.display ="block";
  //document.getElementById("fsize").style.display ="block";
//}

function checkUserName() {
  $.ajax({
    //beforeSend: send_xhr(),
  type: 'get',
  url:  '/check_name/' + document.forms[3].user_name.value,
  //data: { name: document.forms[3].user_name.value},
  async: false,
  dataType: 'json',
  success: function(data){
    if(data.success === 'NG'){
      alert("the name already has been taken");
    }
    if(data.success === 'OK'){
    }
  }
  });
}
