console.log($('#mutualfunds'));

$.get('/api/mutualfunds/search')

function search() { 
  $.get( "/api/mutualfunds/search")
  .done(function( data ) {
    console.log(data);
  });
}