
$("body").fadeIn(1000);
$("a[target!='_blank']").each(function(){
	if (!$(this).data('toggle') && !$(this).hasClass(".ui-tabs-anchor")) {
		$(this).addClass("transition");
	}
});