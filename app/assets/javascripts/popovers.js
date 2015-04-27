// This script allows bootstrap popover functionality
$(function() {
	$('[data-toggle="popover-bottom"]').popover({trigger: 'click', 'placement': 'bottom', html: 'true'});
    $('[data-toggle="popover-top"]').popover({trigger: 'hover', 'placement': 'top'});
});