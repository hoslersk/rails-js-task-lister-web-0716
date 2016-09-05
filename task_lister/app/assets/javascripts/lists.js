$(addFormEventHandler);
function addFormEventHandler(){
  debugger;
  $('form.list_index').on('ajax:complete', function(e, request, status){
    debugger;
    var response = request.responseJSON;
    $('ul#all_lists').append("<li><a href='/tweets/" + response.id + "'>" + response.content + "</li>");
$('#tweet_content').val("");
});
}
