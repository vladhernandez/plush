var Plush = Class.create();

Plush.prototype = {
	initialize: function() {
		this.nav_root = $('nav-top-list');
		this.vertical_accordion=null;
		this.init_nav();
	},
	init_nav: function(){
		var t = this;
		$$(".top-nav-item ul").each(function(node){Element.hide(node);});
		$$('.top-nav-item').each(function(node){
			var ul = $A(node.getElementsByTagName("ul")).first();
			if(ul!=null){

				node.onmouseover = function(){
                	Element.show(ul);
                }
				node.onmouseout = function(){
 					Element.hide(ul);
				}
			//	alert(ul.down().className);
			//	t.vertical_accordion = new accordion(ul,{onEvent : 'click'});
				//t.setupAccordions(ul);	
			}
			});
		/*var verticalAccordions = $$('.accordion_toggle');
			verticalAccordions.each(function(accordion) {
		    $(accordion.next(0)).setStyle({
		        height: '0px'
		    });
		});*/
		
		t.vertical_accordion = new accordion('nav-top-products');
	},
	setupAccordions : function(elm){
	 	this.vertical_accordion = new accordion(elm.up,{
			onEvent : 'click'
		});
	//	window.console.log('setup done');
	}
   

}

Event.observe(window, 'load', function(){
	var plush = new Plush();
});