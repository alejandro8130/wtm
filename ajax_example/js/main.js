$(function (){

  var $country = $('#countries');

  function getCountry(country) {
    $country.append('<tr>' + '<td>' + country.name + '</td>'
                           + '<td>' + country.capital + '</td>' +
                           '<td>' + country.region + '</td>' + '</tr>' );
  }

  $.ajax({
    url: 'https://restcountries-v1.p.mashape.com/all',
    type: 'GET',
    dataType: 'json',
    headers: {'X-Mashape-Key': 'x9kOdhqDVumshmcnmnXjYY2UuKZHp1Ouyfpjsn4BpxlOpl21TX'}
  })
  .done(function(countries) {
    $.each(countries, function(i, val) {
      getCountry(val);
    });
  }).fail(function() {
    alert("Error loading countries");
  });
});
