
$.fn.smoothTransit = ( options ) ->
	linkLocation

	# extend default options
	settings = $.extend(
		transitionClass: "transition"
		transitionIn: "fadeIn"
		transitionOut: "fadeOut"
		speedIn: "200"
		speedOut: "200"
		backgroundColor: "white"
  , options )

	redirectPage = ->	
  	window.location = linkLocation;

 	$(document).fadeIn(settings.speedIn)

  return this.each( ->
    $(this)
    .addClass(settings.transitionClass)
    .on('click', (e) ->
    	# if click different new tab
			if(e.which !== 2)
				e.preventDefault();
				linkLocation = this.href;
				$(document).fadeOut(settings.speedOut, this.redirectPage);
		)
  )

