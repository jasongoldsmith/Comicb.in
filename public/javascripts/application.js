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

// From Railscast #196 & 197


function remove_contribution(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}

// From https://github.com/timriley/complex-form-examples


$(function() {
  $('form a.add_child').click(function() {
    var assoc   = $(this).attr('data-association');
    var content = $('#' + assoc + '_fields_template').html();
    var regexp  = new RegExp('new_' + assoc, 'g');
    var new_id  = new Date().getTime();
        
    $(this).parent().before(content.replace(regexp, new_id));    
    return false;
  });
  
  $('form a.remove_child').live('click', function() {
    var hidden_field = $(this).prev().children('input[type=hidden]')[0];
    if(hidden_field) {
      hidden_field.value = 'true';

    }
    $(this).parents('.fields').hide();
    return false;
  });
});