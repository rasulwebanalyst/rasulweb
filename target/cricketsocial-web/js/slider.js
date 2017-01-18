//set flag to prevent reloading if hovering timeline element
var timelineElementHover = false;

// Start News Scroller
$(document).ready(function() {
	var amount = '';

	if(windowSize !== 'global') {
		initScrollNews();
	}
	$(window).on('windowsize.global.exit windowsize.desktop.enter windowsize.extended.enter', function() {
		initScrollNews();
	}).on('windowsize.global.enter', function() {
		destroyScrollNews();
	});

	initBackgroundVideo();

	$('.bxslider').bxSlider({
		onSlideNext : function(){
			measureApp('Home', 'Shop', 'Next');
		},
		onSlidePrev : function(){
			measureApp('Home', 'Shop', 'Previous');
		}
	});

	// setup handlers for mouse hovering timeline elements
    // - trigger ellipses replacement function on mouse hover
	$('#scrollingNews').on('mouseenter', 'li', function(e){
    	var target = $(e.target);
    	var par = target.parents('ul') || target;
    	var text = par.find('.ellipsis');
    	//console.log('mouseenter target::%o', target);
    	//console.log('mouseenter par:%o', par);
    	if (text.html()){
    		//console.log('mouseenter text:%o', text.html());
    		//text.ellipsis(); 
    		wimbledonCore.text.addEllipsis(text);
    	}
    	timelineElementHover = true;
  	}).on('mouseleave', 'li', function(e){
    	timelineElementHover = false;
  	});        
});

// intelligently load background video only if device is large enough to show video background
// otherwise don't load a video source at all
function initBackgroundVideo() {
	var vid = $('#background').find('video');
	if(vid.length > 0) {
		if(windowSize === 'global' || windowSize === 'tablet') {
			vid[0].pause();
		} else {
			vid[0].src = vid.data('src');
		}
		$(window).on('windowsize.tablet.enter windowsize.global.enter', function() {
			// stop background video
			// var vid = $('#background').find('video');
			console.log('pausing background video');
			vid[0].src = '';
		}).on('windowsize.desktop.enter windowsize.extended.enter', function() {
			// play background video
			// var vid = $('#background').find('video');
			console.log('resuming background video');
			if(vid[0].src !== vid.data('src')) {
				vid[0].src = vid.data('src');
			}
		});
	}
}

var scrollNewsActive = false;
var scrollNewsInterval;
function initScrollNews() {
	if(!scrollNewsActive) {
		var panel_min_height = 178; // minimum height needed to show a full panel, otherwise it gets cut off
		var panel_tweak_offset = 20;

		var max_scroll = 350;
		$('.hoverUp').on('click',function() {
			var container_h = $('#scrollingNews').outerHeight();
			var amount = container_h - 50;
			if(amount > max_scroll) { amount = max_scroll; }
			scrollNews('-=' + amount);
			measureApp('Home', 'Timeline', 'Scroll Up');
		});
		$('.hoverDown').on('click',function() {
			var container_h = $('#scrollingNews').outerHeight();
			var amount = container_h - 50;
			if(amount > max_scroll) { amount = max_scroll; }
			scrollNews('+=' + amount);
			measureApp('Home', 'Timeline', 'Scroll Down');
		});

		var startY, touchStartY;

		$('#scrollingNews')
		// allow mouse wheel to scroll
		.on('mousewheel', function(e) {
			// console.log(e.deltaX, e.deltaY, e.deltaFactor);

			var distance = e.deltaFactor * e.deltaY;
			this.scrollTop -= distance;
		})
		// allow touch drag to scroll
		.on('touchstart', function(e) {
			var touch = e.originalEvent.touches[0];
			startY = this.scrollTop;
			touchStartY = touch.pageY;
		})
		.on('touchmove', function(e) {
			// prevent body from moving as well
			e.preventDefault();
			// console.log(e.originalEvent.touches);
			var touchPos = e.originalEvent.touches[0];
			// console.log(touchStartY + ' ' + touchPos.pageY);

			this.scrollTop = (startY + touchStartY - touchPos.pageY);
		})
		// detect proper y offset for panel to fully fit
		.on('mouseenter', 'li',
			function(){
				var container_h = $('#scrollingNews').outerHeight();

				// only show panel if the entire height can fit
				if(container_h >= panel_min_height - panel_tweak_offset) {
					var li = $(this);
					var news = li.find('.timelineNews');

					// check if bottom of panel would disappear
					var bottom_offset = news.outerHeight() + news.offset().top;
					// console.log('outer height: ' + news.outerHeight() + ', offset: ' + news.offset().top + ' = ' + (news.outerHeight() + news.offset().top) + ', container_h+268: ' + (container_h+268));
					if(bottom_offset > container_h + 268) {
						var t = -1 * (bottom_offset - (container_h + 268));
						news.css('top', t);
						// news.css({top: 'auto', bottom: 0});
					} else {
						news.css({top: ''});
					}

					// check if left edge of panel would disappear
					if(news.offset().left < 0) {
						news.css('left',li.offset().left * -1);
					} else {
						news.css('left','');
					}
				}
			}
		)
		// reset y position for panel
		.on('mouseleave', 'li',
			function() {
				var news = $(this).find('.timelineNews');
				news.css({top:'',left:''});
			}
		);

		if(tabletSite) {
			$('#menuNav').find('.megaNav .navHoverGrad').on('click', '> a', function(e) {
				e.preventDefault();
			});
		}

		scrollNewsInterval = setInterval(function() {
			//console.log('scrollNewsInterval hover:%o', timelineElementHover);

			var scrollNews = $('#scrollingNews');
			if(scrollNews.get(0).scrollTop === 0 && !timelineElementHover) {
				scrollNews.find('.newsContainer').load('/en_GB/includes/gen/homepageScroll.ssi');
			}
			
		}, 10000);
		// console.log('initScrollNews');
	}

	// console.log('called init');
	scrollNewsActive = true;
}

function destroyScrollNews() {
	$('.hoverUp, .hoverDown').off('click');
	$('#scrollingNews').off('mouseenter mouseleave mousewheel touchstart touchmove');
	if(tabletSite) {
		$('#menuNav').find('.megaNav .navHoverGrad').off('click');
	}
	// console.log('destroyScrollNews');
	clearInterval(scrollNewsInterval);
	scrollNewsActive = false;
}

function scrollNews(amount) {
	$('#scrollingNews').animate({
		scrollTop: amount
	}, 'fast');
}
// End News Scroller