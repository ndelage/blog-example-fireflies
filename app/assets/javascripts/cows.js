$(document).ready(function() {
  $(".cows a.cow").on('click', function(e) {
    e.preventDefault();
    console.log($(this).text());
  });

});
