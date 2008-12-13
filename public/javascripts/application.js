var Plush = Class.create();

Plush.prototype = {
	initialize: function() {
		this.nav_root = $('nav-top-list');
		this.init_nav();
	},
	init_nav: function(){
		$$('.top-nav-item').each(this.setupMo.bind(this));
		  
		var verticalAccordions = $$('.accordion_toggle');
			verticalAccordions.each(function(accordion) {
		    $(accordion.next(0)).setStyle({
		        height: '0px'
		    });
		});
		
 				
	},
	setupMo : function(elm) {

		if(elm.down().next("ul")){
		   Event.observe(elm,'mouseover',this.activate.bindAsEventListener(this),false);
	   		this.setupAccordions(elm);
		}
	   // Event.observe(elm,'mouseout',this.deactivate.bindAsEventListener(this),false);	
		//Event.observe(elm,'click',this.rolldown.bindAsEventListener(this),false);
	  },
	setupAccordions : function(elm){
	 	var verticalAccordion = new accordion(elm.up);
		
	
		 /*var accordion_triggers=$$('.accordion_toggle');
		for (var i=0; i < accordion_triggers.length; i++) {
		//	alert(accordion_triggers[i]);
		 	var verticalAccordion = new accordion(accordion_triggers[i].up);
			//accordion_triggers[i]
		};
*/
		
		
	},
	 activate :  function(ev) {
        var elm = Event.findElement(ev, "a");
		var li=Event.element(ev);
		var ul=Event.element(ev).next(ul);

		if(ul){
			this.show(ul);
			Event.observe(ul,'mouseout',this.deactivate.bindAsEventListener(this),false);			
		}
	     Event.stop(ev);
        },
		deactivate :  function(ev) {
		    var elm = Event.element(ev);
			var ul=Event.element(ev).next(ul);
			if(ul){
				this.hide(elm);
				this.hide(ul);
			}
		     Event.stop(ev);
	        },
      hide : function(elm) {
          $(elm).removeClassName('active');
	    },
       show : function(elm) {
	       $(elm).addClassName('active');
	    },
	   rolldown : function(ev){
			var elm = Event.findElement(ev,'ul');
			return(false);
		}
}

Event.observe(window, 'load', function(){
	var plush = new Plush();
});