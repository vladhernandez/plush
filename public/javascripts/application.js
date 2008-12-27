var Plush = Class.create();

Plush.prototype = {
	initialize: function() {
		this.nav_root = $('nav-top-list');
		this.vertical_accordion=null;
		this.init_nav();
	},
	init_nav: function(){
		var t = this;
		$$(".top-nav-item dl").each(function(node){Element.hide(node);});
		$$('.top-nav-item').each(function(node){
			var ul = $A(node.getElementsByTagName("dl")).first();
			if(ul!=null){

				node.onmouseover = function(){
                	Element.show(ul);
					this.addClassName("active");
                }
				node.onmouseout = function(){
 					Element.hide(ul);
					this.removeClassName("active");
				}
			}
			});
		if($('nav-top-products')){
			t.vertical_accordion = new accordion('nav-top-products');
		}
		
	},
	replaceFlash : function(ele,swfFile,w,h){
		var flashTargetEle = $ele;
			var so = new SWFObject(swf, "flashReplaced", w, h, "9", "#FFFFFF");
			so.addParam("wmode","transparent");
			so.write(ele);
	}

	
}

Event.observe(window, 'load', function(){
	var plush = new Plush();
});