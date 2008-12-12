var Plush = Class.create();

Plush.prototype = {
	
	init_nav: function(){
		// Not Working Yet
		// var verticalAccordion = new accordion('#nav-top', {onevent: 'hover'});
		
	},
	
	initialize: function() {
		this.init_nav();
	}
}


Event.observe(window, 'load', function(){

	var plush = new Plush();
	
});