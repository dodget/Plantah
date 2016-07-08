//all javascript behavior

$(document).ready(function(){

  //$('#index-ul li').each(function(){
    //console.log($(this).text());
  //});

  $('#indexSearch').click(function(){
    transformSearch1();
  });

  $('#searchBox').keyup(function(){

    var searchBox = $(this).val();

    $("#index-ul li").each(function(){
        console.log($(this).text());
          // If the list item does not contain the text phrase fade it out
        if ($(this).text().search(new RegExp(searchBox, "i")) < 0) {
            $(this).fadeOut();

          // Show the list item if the phrase matches
        }
        else {
            $(this).show();
        }
    });

  });






});





function transformSearch1(){
  $('#jumbotron-phrase').slideUp();
  setTimeout(function(){
    $('#search').slideDown();
  }, 1000)
}
