$(function(){
  requestUrl = "https://gist.github.com/jakehow/3d96b83c4a4a1e6313d4/raw/f2990b4cef86fe9454ba1a643ccee118ca0b5757/truncated_list"
  console.log("This is the data address: " + requestUrl)
              $.ajax({
                type: 'get',
                url: '/data_request',
                data: {url: requestUrl},
                dataType: 'text',
                success: function(data){
                  console.log("This is the result of the ajax api call: " + data);
                  $('.bankInfo').html(data);
                }
              })
})
