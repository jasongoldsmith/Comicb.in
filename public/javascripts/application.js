// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
	$('.delete_comic_book').bind('ajax:success', function() {  
	    $(this).closest('tr').fadeOut();  
	});
	
	$('.delete_contributor').bind('ajax:success', function() {  
	    $(this).closest('tr').fadeOut();  
	});
});