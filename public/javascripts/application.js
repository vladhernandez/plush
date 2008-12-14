var Plush = Class.create();

Plush.prototype = {
	initialize: function() {
		this.nav_root = $('nav-top-list');
		this.init_nav();
	},
	init_nav: function(){
		var t = this;
		$$(".top-nav-item ul").each(function(node){Element.hide(node);});
		$$('.top-nav-item').each(function(node){
			var ul = $A(node.getElementsByTagName("ul")).first();
			if(ul!=null){
				t.setupAccordions(ul);
				node.onmouseover = function(){
                	Element.show(ul);
                }
				node.onmouseout = function(){
// 					Element.hide.delay(1,ul);
 					Element.hide(ul);
				}
			}
			});
		var verticalAccordions = $$('.accordion_toggle');
			verticalAccordions.each(function(accordion) {
		    $(accordion.next(0)).setStyle({
		        height: '0px'
		    });
		});
	},
	setupAccordions : function(elm){
	 	var verticalAccordion = new accordion(elm.up,{
			onEvent : 'click'
		});
	//	window.console.log('setup done');
	}
   

}

Event.observe(window, 'load', function(){
	var plush = new Plush();
});