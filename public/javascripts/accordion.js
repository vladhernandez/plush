Event.observe(window, 'load', function(){
	//$$(".accordion_content").each(function(element){element.show()});
	//$$(".accordion_content").each(function(element){element.addClassName("overflow")});
	//$$(".horizontal_container").each(function(element){element.addClassName("overflow")});
	//$$(".horizontal_accordion_content").each(function(element){element.addClassName("overflow")});
	//$$(".horizontal_accordion_content .h150").each(function(element){element.addClassName("overflow")});
	//$$(".vertical_nested_container").each(function(element){element.addClassName("overflow")});
	//$$(".vertical_accordion_content").each(function(element){element.addClassName("overflow")});
	//$$(".horizontal_accordion_content").each(function(element){element.addClassName("clearRight")});
	//$$(".horizontal_accordion_toggle").each(function(element){element.addClassName("toggleHeight")});
//	$$(".accordion_content .h250").each(function(element){element.addClassName("h250Height")});
	
//	loadAccordions();
	
});

function loadAccordions() {
	/*var topAccordion = new accordion('horizontal_container', {
		classNames : {
			toggle : 'horizontal_accordion_toggle',
			toggleActive : 'horizontal_accordion_toggle_active',
			content : 'horizontal_accordion_content'
		},
		defaultSize : {
			width : 325
		},
		direction : 'horizontal'		
	});
	
	var bottomAccordion = new accordion('vertical_container');
	
	var nestedVerticalAccordion = new accordion('vertical_nested_container', {
	  classNames : {
			toggle : 'vertical_accordion_toggle',
			toggleActive : 'vertical_accordion_toggle_active',
			content : 'vertical_accordion_content'
		}
	});
	
	// Open first one
	bottomAccordion.activate($$('#vertical_container .accordion_toggle')[0]);
	
	// Open second one
	topAccordion.activate($$('#horizontal_container .horizontal_accordion_toggle')[0]);
	*/
}	

// accordion.js v2.0
//
// Copyright (c) 2007 stickmanlabs
// Author: Kevin P Miller | http://www.stickmanlabs.com
// 
// Accordion is freely distributable under the terms of an MIT-style license.
//
// I don't care what you think about the file size...
//   Be a pro: 
//	    http://www.thinkvitamin.com/features/webapps/serving-javascript-fast
//      http://rakaz.nl/item/make_your_pages_load_faster_by_combining_and_compressing_javascript_and_css_files
//

/*-----------------------------------------------------------------------------------------------*/

if (typeof Effect == 'undefined') 
	throw("accordion.js requires including script.aculo.us' effects.js library!");
	
	var accordion = Class.create({
		showAccordion : null,
		currentAccordion : null,
		duration : null,
		effects : [],
		animating : false,
		initialize: function(container, options) {

			if (!$(container)) {
				throw(container+" doesn't exist!");
				return false;
			}		  
			this.options = Object.extend({
				resizeSpeed : .8,
				classNames : {
					toggle : 'accordion_toggle',
					toggleActive : 'accordion_toggle_active',
					content : 'accordion_content'
				},
				defaultSize : {
					height : null,
					width : null
				},
				direction : 'vertical',
				onEvent : 'click'
			}, options || {});
		
			this.duration = this.options.resizeSpeed;
//			window.console.log('marker');
//			window.console.log(container.nodeName);
				
			var accordions = $$('#'+container+' .'+this.options.classNames.toggle);

			accordions.each(function(accordion) {
			
				var changeSensitivity = function() {
					
					var activateOnHover = this.activate.bind(this, accordion);
					this.scheduleActivate(activateOnHover, 750); //set the sensitivity in miliseconds.
				};
				
				Event.observe(accordion, 'mouseover', changeSensitivity.bind(this),false);
				Event.observe(accordion, 'mouseout', this.clearActivate.bind(this));
				Event.observe(accordion, 'click', this.activate.bind(this, accordion));
	
				if (this.options.onEvent == 'click') {
					accordion.onclick = function() {
						return false;
					}
				}			
				if (this.options.direction == 'horizontal') {
					var options = {
						width: '0px'
					};
				} 
				else {
					var options = {
						height: '0px'
					};
				}
				Object.extend(options,{display: 'none'});			
				
				this.currentAccordion = $(accordion.next(0)).setStyle(options);			
			}.bind(this));
		},
			
		scheduleActivate : function(A, B) {
			this.triggerTimeout = setTimeout(A, B)
		},
		
		clearActivate:function(){
		  clearTimeout(this.triggerTimeout)
		},
	
		//  Activate an accordion
		activate : function(accordion) {
			if (this.animating) {
				return false;
			}
			
			this.effects = [];
		
			this.currentAccordion = $(accordion.next(0));
			this.currentAccordion.setStyle({
				display: 'block'
			});		
			
			this.currentAccordion.previous(0).addClassName(this.options.classNames.toggleActive);
	
			if (this.options.direction == 'horizontal') {
				this.scaling = {
					scaleX: true,
					scaleY: false
				};
			} else {
				this.scaling = {
					scaleX: false,
					scaleY: true
				};			
			}
				
			if (this.currentAccordion == this.showAccordion) {
			 // this.deactivate(); 
			} else {
			  this._handleAccordion();
			}
		},
		
		// Deactivate an active accordion
		deactivate : function() {
			var options = {
				duration: this.duration,
				scaleContent: false,
				transition: Effect.Transitions.sinoidal,
				queue: {
					position: 'end', 
					scope: 'accordionAnimation'
				},
				scaleMode: { 
					originalHeight: this.options.defaultSize.height ? this.options.defaultSize.height : this.currentAccordion.scrollHeight,
					originalWidth: this.options.defaultSize.width ? this.options.defaultSize.width : this.currentAccordion.scrollWidth
				},
				afterFinish: function() {
					this.showAccordion.setStyle({
						height: 'auto',
						display: 'none'
					});				
					this.showAccordion = null;
					this.animating = false;
				}.bind(this)
			};    
			Object.extend(options,this.scaling);
	
			this.showAccordion.previous(0).removeClassName(this.options.classNames.toggleActive);		 
			new Effect.Scale(this.showAccordion, 0, options);
		},
	
		// Handle the open/close actions of the accordion
		_handleAccordion : function() {
			var options = {
				sync: true,
				scaleFrom: 0,
				scaleContent: false,
				transition: Effect.Transitions.sinoidal,
				scaleMode: { 
					originalHeight: this.options.defaultSize.height ? this.options.defaultSize.height : this.currentAccordion.scrollHeight,
					originalWidth: this.options.defaultSize.width ? this.options.defaultSize.width : this.currentAccordion.scrollWidth
				}
			};
			Object.extend(options,this.scaling);
			
			this.effects.push(
				new Effect.Scale(this.currentAccordion, 100, options)
			);
	
			if (this.showAccordion) {
				this.showAccordion.previous(0).removeClassName(this.options.classNames.toggleActive);
				
				options = {
					sync: true,
					scaleContent: false,
					transition: Effect.Transitions.sinoidal
				};
				Object.extend(options,this.scaling);
				
				this.effects.push(
					new Effect.Scale(this.showAccordion, 0, options)
				);				
			}
			
			new Effect.Parallel(this.effects, {
				duration: this.duration, 
				queue: {
					position: 'end', 
					scope: 'accordionAnimation'
				},
				beforeStart: function() {
					this.animating = true;
				}.bind(this),
				afterFinish: function() {
					if (this.showAccordion) {
						this.showAccordion.setStyle({
							display: 'none'
						});				
					}
					$(this.currentAccordion).setStyle({
						height: 'auto'
					});
					this.showAccordion = this.currentAccordion;
					this.animating = false;
				}.bind(this)
			});
		}
	});
