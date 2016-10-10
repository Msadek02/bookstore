$(document).ready(function() {
  
  $('div.SidebarSection-option input').click(function() {
  	var name = $(this).closest('.SidebarSection-option').find('.name').text();

    console.log(name);

    var newLocation = window.location.origin + '?category=' + name;
    window.location.href = newLocation;
  });
});