var Plush = Class.create();

Plush.prototype = {
	initialize: function() {
		this.nav_root = $('nav-top-list');
		this.init_nav();
	},
	init_nav: function(){
		// Not Working Yet
		// var verticalAccordion = new accordion('#nav-top', {onevent: 'hover'});
		$$('.top-nav-item').each(this.setupMo.bind(this));		
	},
	setupMo : function(elm) {
	    Event.observe(elm,'mouseover',this.activate.bindAsEventListener(this),false);
	    Event.observe(elm,'mouseout',this.deactivate.bindAsEventListener(this),false);	
		Event.observe(elm,'click',this.rolldown.bindAsEventListener(this),false);
	  },
	 activate :  function(ev) {
	    var elm = Event.findElement(ev, "a");
		var ul=Event.element(ev).next(ul);
		if(ul){
			this.show(ul);
		}
	     Event.stop(ev);
        },
		deactivate :  function(ev) {
		    var elm = Event.findElement(ev, "a");
			var ul=Event.element(ev).next(ul);
			if(ul){
				this.hide(ul);
			}
		     Event.stop(ev);
	        },
      hide : function(elm) {
          $(elm).removeClassName('active');
         // $(this.tabID(elm)).removeClassName('active-tab-body');
	    },
       show : function(elm) {
	       $(elm).addClassName('active');
           //$(this.tabID(elm)).addClassName('active-tab-body');
	    },
	   rolldown : function(ev){
			var elm = Event.findElement(ev,'ul');
			return(false);
			
		}
		
	
		

	
	
}


Event.observe(window, 'load', function(){

	var plush = new Plush();
	
});