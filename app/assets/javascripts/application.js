// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require rails-ujs
//= require vendor/icheck-1.x/icheck
//= require vendor/select2-develop/dist/js/select2.js
//  require_tree

$(document).ready(function() {
	$('#add_task').on('click', function() {
		$('#new_task').css('visibility','visible');
	})

	$('#task_cancel').on('click', function() {
		$('#new_task').css('visibility','hidden');
	})

	$('input:checkbox').iCheck({
		checkboxClass: 'icheckbox_square-blue',
		checkedClass: 'checked',
	});

	$(':checkbox').on('ifChecked', function(event) {
		//$(':checked').parents('li').children('span').css('text-decoration', 'line-through');
		$(this).parents('#form_todo').submit();

	});

	$(':checkbox').on('ifUnchecked', function(event) {
		//$(':checkbox').parents('li').children('span').css('text-decoration', 'none');
		$(this).parents('#form_todo').submit();
	});

	$('div .checked').next('span').css('text-decoration', 'line-through');

	$('#task_project_id').select2({
		minimumResultsForSearch: -1,
		width: '360px',
	});

});

