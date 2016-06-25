//all javascript behavior

$(document).ready(function(){



  $('#indexSearch').click(function(){
    transformSearch1();
  });


});


function transformSearch1(){
  $('#jumbotron-phrase').slideUp();
  setTimeout(function(){
    $('#search').slideDown();
  }, 850)
}
