jQuery(function($){
	var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
	var p_tag_mobile = $(".mobile-services-row .text-holder p");
	var a_tag_mobile = $(".mobile-services-row .text-holder a");
	var img_div_mobile = $(".mobile-services-row .image-holder");
    var img_effect_div_mobile = $(".mobile-services-row .image-holder-effect");
	
	var h2_tag_responsive_new = $(".responsive-web-development-rows .text-holder h2");
	var p_tag_responsive_new = $(".responsive-web-development-rows .text-holder p");
	var a_tag_responsive_new = $(".responsive-web-development-rows .text-holder a");
	var img_div_responsive_new = $(".responsive-web-development-rows .image-holder");
	var img_effect_div_mobile_new = $(".responsive-web-development-rows .image-holder-effect");
	
	var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
	var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
	var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
	var img_div_responsive = $(".responsive-web-development-row .image-holder");
//  var img_effect_div_responsive = $(".responsive-web-development-row .image-holder-effect");

	var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
	var p_tag_commerce = $(".e-commerce-row .text-holder p");
	var a_tag_commerce = $(".e-commerce-row .text-holder a");
	var img_div_commerce = $(".e-commerce-row .image-holder");
        var img_sky_commerce = $(".e-commerce-row .image-sky");
        var img_mountains_commerce = $(".e-commerce-row .image-mountains");
        var img_snow_commerce = $(".e-commerce-row .image-snow");
        var img_snowboard_commerce = $(".e-commerce-row .image-snowboard");
        var img_ecommerce_commerce = $(".e-commerce-row .image-ecommerce");
        
        var h2_tag_latest = $(".our-latest-projects-row .text-holder h2");
	var p_tag_latest = $(".our-latest-projects-row .text-holder p");
	var a_tag_latest = $(".our-latest-projects-row .text-holder a");
	var img_div_latest = $(".our-latest-projects-row .image-holder");
        var img_waiter_latest = $(".our-latest-projects-row .image-waiter");
        var img_tablet_latest = $(".our-latest-projects-row .image-tablet");
	
        
	//var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left; (Lỗi khi click vào link menu top.)
//        var img_effect_div_mobile_orig = $(".mobile-services-row .image-holder-effect").position().left;
	var img_div_responsive_orig_new = img_div_responsive_new.position();
	var img_div_responsive_orig = img_div_responsive.position();
	var img_div_commerce_orig = img_div_commerce.position();
    var img_div_latest_orig = img_div_commerce.position();
    var browser = ($.browser.safari);
	
//	$(".mobile-services-row").hide();
	h2_tag_responsive_new.css('left', '300px');
	p_tag_responsive_new.css('left', '300px');
	a_tag_responsive_new.css('left', '300px');
	img_div_responsive_new.css('left','-1000px');
	
	h2_tag_responsive.css('bottom', '300px');
	p_tag_responsive.css('bottom', '200px');
	a_tag_responsive.css('bottom', '300px');
	img_div_responsive.css('top','200px');
        
        if(browser){
            h2_tag_commerce.css('left', '+=500px');
            p_tag_commerce.css('left','+=500px');
            a_tag_commerce.css('left','+=500px');
            img_div_commerce.css('left','+=500px');
            img_sky_commerce.css('top', '-114px');
            img_mountains_commerce.css('top', '1px');
            img_snow_commerce.css('top', '+525px');
            img_snowboard_commerce.css('top', '+240px');
            img_ecommerce_commerce.css('top', '0px');
            h2_tag_latest.css('left','+=500px');
            p_tag_latest.css('left','+=500px');
            a_tag_latest.css('left','+=500px');
            img_div_latest.css('bottom','-=225px');
            img_waiter_latest.css('top', '+540px');
            img_tablet_latest.css('top', '-460px');
        }else{
            h2_tag_commerce.css('left', '+=400px');
            p_tag_commerce.css('left','+=400px');
            a_tag_commerce.css('left','+=400pxp');
            img_div_commerce.css('left','+=400px');
            img_sky_commerce.css('top', '-114px');
            img_mountains_commerce.css('top', '1px');
            img_snow_commerce.css('top', '+525px');
            img_snowboard_commerce.css('top', '+240px');
            img_ecommerce_commerce.css('top', '0px');

            h2_tag_latest.css('left','+=500px');
            p_tag_latest.css('left','+=500px');
            a_tag_latest.css('left','+=500px');
            img_div_latest.css('bottom','-=100px');
            img_waiter_latest.css('top', '+540px');
            img_tablet_latest.css('top', '-460px');
        }
        //img_effect_div_mobile.css('left','0px');

	$(".responsive-web-development-rows").hide();
	$(".responsive-web-development-row").hide();
	$(".e-commerce-row").hide();
    $(".our-latest-projects-row").hide();
	$(".lease-a-team-row").hide();
        
	
//	$(".mobile-services-row").click(function(){
//		h2_tag_mobile.animate({
//			left: '-=2000px'
//		}, 1000, 'easeInBack', function(){
//		});
//		p_tag_mobile.animate({
//			left: '-=2000px'
//		}, 1500, 'easeInBack', function(){
//		});
//		a_tag_mobile.animate({
//			left: '-=3000px',
//		}, 1700, 'easeInBack', function(){
//		});
//		img_div_mobile.animate({
//			left: '+=2500px',
//		}, 2000, 'easeInBack', function(){
//			$(".mobile-services-row").hide();
//			$(".responsive-web-development-row").show();
//			h2_tag_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//			p_tag_responsive.animate({
//				left: '+=2000px',
//				easing: 'easeOutBounce'
//			});
//			a_tag_responsive.animate({
//				left: '+=3000px',
//				easing: 'easeOutBounce'
//			});
//			img_div_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//		});
//	});
//	
//	$(".responsive-web-development-row").click(function(){
//		$(".responsive-web-development-row").fadeOut('slow', function() {
//			$(".e-commerce-row").fadeIn()
//		});
//	});
//	
//	$(".e-commerce-row").click(function(){
//		h2_tag_commerce.animate({
//			left: '-=2000px'
//		}, 1000, 'linear', function(){
//		});
//		p_tag_commerce.animate({
//			left: '-=2000px'
//		}, 1500, 'linear', function(){
//		});
//		a_tag_commerce.animate({
//			left: '-=3000px',
//		}, 1700, 'linear', function(){
//		});
//		img_div_commerce.animate({
//			left: '+=2000px',
//		}, 2000, 'linear', function(){
//			$(".e-commerce-row").hide();
//			$(".lease-a-team-row").fadeIn();
//		});
//	});
//	
//	$(".lease-a-team-row").click(function(){
//		$(".lease-a-team-row").fadeOut('slow', function() {
//			$(".mobile-services-row").show();
//			h2_tag_mobile.animate({
//				left: '+=2000px'
//			});
//			p_tag_mobile.animate({
//				left: '+=2000px'
//			});
//			a_tag_mobile.animate({
//				left: '+=3000px'
//			});
//			img_div_mobile.animate({
//				left: '-=2500px'
//			});
//			h2_tag_commerce.css('left','+=2000px');
//			p_tag_commerce.css('left','+=2000px');
//			a_tag_commerce.css('left','+=3000px');
//			img_div_commerce.css('left', '-=2000px');
//			h2_tag_responsive.css('left', '2000px');
//			p_tag_responsive.css('left', '-2000px');
//			a_tag_responsive.css('left', '-3000px');
//			img_div_responsive.css('left','2000px');			
//		});
//	});
	
	function loop() {
		h2_tag_mobile.delay(5000).animate({
			left: '+=2000px'
		}, 900, 'easeInBack', function(){
		});
		p_tag_mobile.delay(5000).animate({
			left: '+=2000px'
		}, 1200, 'easeInBack', function(){
		});
		a_tag_mobile.delay(5000).animate({
			left: '+=3000px',
		}, 1500, 'easeInBack', function(){
		});
        img_effect_div_mobile.delay(5000).animate({
			top: '+=100px'
		}, 2000, 'easeInBack', function(){
		});
		img_div_mobile.delay(5000).animate({
			left: '+=2500px',
		}, 1800, 'easeInBack', function(){
                        
			$(".mobile-services-row").hide();
			$(".responsive-web-development-rows").show();
			h2_tag_responsive_new.delay(200).animate({
                left: '+=2500px'
			},1000,'easeInBack', function(){
			});
			p_tag_responsive_new.delay(200).animate({
				left: '+=2500px'
			},1500,'easeInBack', function(){
			});
			a_tag_responsive_new.delay(200).animate({
				left: '+=2500px'
			},1700,'easeInBack', function(){
			});
			img_div_responsive_new.delay(200).animate({
				left: '+=1000px'
			},2000,'easeInBack', function(){
			});
			img_effect_div_mobile_new.delay(200).animate({
				top: '-=190px'
			}, 2000, 'easeOutCirc', function(){
			});
                       
			$(".responsive-web-development-rows").delay(5000).fadeOut("slow", function() {
			
			
				$(".responsive-web-development-row").show();
			h2_tag_responsive.delay(200).animate({
                                bottom: '-=300px'
			},2000,'easeOutCirc', function(){
			});
			p_tag_responsive.delay(200).animate({
				bottom: '-=200px'
			},2000,'easeOutCirc', function(){
			});
			a_tag_responsive.delay(200).animate({
				bottom: '-=300px'
			},2000,'easeInOutExpo', function(){
			});
			img_div_responsive.delay(100).animate({
				top: '-=200px'
			},2000,'easeOutCirc', function(){
			});
                       
			$(".responsive-web-development-row").delay(5000).fadeOut("slow", function() {
                            
                        $(".e-commerce-row").fadeIn(800, function() {
                        
                        img_sky_commerce.animate({
                                top: '+=114px',
			},1600,'linear', function(){
			});
                        img_mountains_commerce.animate({
                                top: '+=45px',
			},2180,'linear', function(){
			});
                        img_snow_commerce.delay(1600).animate({
                                top: '-=525px',
			},350,'linear', function(){
			});
                         img_snowboard_commerce.delay(400).animate({
                                top: '-=239px',
//				easing: 'easeOutBounce'
			},1600,'linear', function(){
			});
                        img_ecommerce_commerce.delay(3400).animate({
                                top: '-=0px',
			},800,'linear', function(){
			});
                        
                        if(browser) {
                        h2_tag_commerce.delay(200).animate({
				left: '-=750px'
			}, 1000, 'linear', function(){
			});
			p_tag_commerce.delay(200).animate({
				left: '-=750px'
			}, 1500, 'linear', function(){
			});
			a_tag_commerce.delay(200).animate({
				left: '-=750px',
			}, 1700, 'linear', function(){
			});
			img_div_commerce.delay(200).animate({
				left: '-=1500px',
			}, 1200, 'linear', function(){
                    
                    
                    
                    
				$(".e-commerce-row").delay(4000).fadeOut("slow", function() {
                                $(".our-latest-projects-row").fadeIn();
                                img_waiter_latest.delay(900).animate({
                                        top: '-=540px',
        //				easing: 'easeOutBounce'
                                },500,'linear', function(){
                                });
                                img_tablet_latest.delay(1300).animate({
                                        top: '+=450px',
                                },750,'linear', function(){
                                });

                                h2_tag_latest.delay(200).animate({
                                        left: '-=750px'
                                }, 1000, 'linear', function(){
                                });
                                p_tag_latest.delay(200).animate({
                                        left: '-=750px'
                                }, 1500, 'linear', function(){
                                });
                                a_tag_latest.delay(200).animate({
                                        left: '-=750px',
                                }, 1700, 'linear', function(){
                                });
                                img_div_latest.delay(200).animate({
                                        bottom: '+=560px',
                                }, 600, 'linear', function(){
                                
                                
                                $(".our-latest-projects-row").delay(4000).fadeOut("slow", function() {
				$(".lease-a-team-row").fadeIn();
                                
                                
				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
                                    $(".mobile-services-row").show();
                                    h2_tag_mobile.animate({
                                            left: '-=2000px'
                                    });
                                    p_tag_mobile.animate({
                                            left: '-=2000px'
                                    });
                                    a_tag_mobile.animate({
                                            left: '-=3000px'
                                    });
                                    img_effect_div_mobile.animate({
                                            top: '-=100px'          
                                    });
                                    img_div_mobile.animate({
                                            left: '-=2500px'
                                    });
                                    h2_tag_latest.css('left','+=750px');
                                    p_tag_latest.css('left','+=750px');
                                    a_tag_latest.css('left','+=750px');
                                    img_div_latest.css('bottom', '-=560px');
                                    img_waiter_latest.css('top','+=540px');
                                    img_tablet_latest.css('top', '-=450px');
                                    
                                    h2_tag_commerce.css('left','+=750px');
                                    p_tag_commerce.css('left','+=750px');
                                    a_tag_commerce.css('left','+=750px');
                                    img_div_commerce.css('left', '+=1500px');
                                    img_mountains_commerce.css('top', '-=45px');
                                    img_sky_commerce.css('top', '-=114px');
                                    img_snowboard_commerce.css('top', '+=239px');
                                    img_snow_commerce.css('top', '+=525px');
                                    img_ecommerce_commerce.css('top', '+=0px');
                                    
                                    h2_tag_responsive.css('bottom', '+=300px');
                                    p_tag_responsive.css('bottom', '+=200px');
                                    a_tag_responsive.css('bottom', '+=300px');
                                    img_div_responsive.css('top','+=200px');
									
									h2_tag_responsive_new.css('left', '-=2500px');
                                    p_tag_responsive_new.css('left', '-=2500px');
                                    a_tag_responsive_new.css('left', '-=2500px');
                                    img_div_responsive_new.css('left','-=1000px');
									img_effect_div_mobile_new.css('top','+=190px');
									
                                    loop();
                            });
                            });
			});
                        });
                        }); }else {
                        h2_tag_commerce.delay(200).animate({
				left: '-=1250px'
			}, 1000, 'linear', function(){
			});
			p_tag_commerce.delay(200).animate({
				left: '-=1250px'
			}, 1500, 'linear', function(){
			});
			a_tag_commerce.delay(200).animate({
				left: '-=1250px',
			}, 1700, 'linear', function(){
			});
			img_div_commerce.delay(200).animate({
				left: '-=1500px',
			}, 1200, 'linear', function(){
                    
                    
                    
                    
				$(".e-commerce-row").delay(4000).fadeOut("slow", function() {
                                $(".our-latest-projects-row").fadeIn();
                                img_waiter_latest.delay(900).animate({
                                        top: '-=540px',
        //				easing: 'easeOutBounce'
                                },500,'linear', function(){
                                });
                                img_tablet_latest.delay(1300).animate({
                                        top: '+=450px',
                                },750,'linear', function(){
                                });
                                h2_tag_latest.delay(200).animate({
                                        left: '-=1250px'
                                }, 1000, 'linear', function(){
                                });
                                p_tag_latest.delay(200).animate({
                                        left: '-=1250px'
                                }, 1500, 'linear', function(){
                                });
                                a_tag_latest.delay(200).animate({
                                        left: '-=1250px',
                                }, 1700, 'linear', function(){
                                });
                                img_div_latest.delay(200).animate({
                                        bottom: '+=438px',
                                }, 600, 'linear', function(){
                                
                                
                                $(".our-latest-projects-row").delay(4000).fadeOut("slow", function() {
				$(".lease-a-team-row").fadeIn();
                                
                                
				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
                                    $(".mobile-services-row").show();
                                    h2_tag_mobile.animate({
                                            left: '-=2000px'
                                    });
                                    p_tag_mobile.animate({
                                            left: '-=2000px'
                                    });
                                    a_tag_mobile.animate({
                                            left: '-=3000px'
                                    });
                                    img_effect_div_mobile.animate({
                                            top: '-=100px'          
                                    });
                                    img_div_mobile.animate({
                                            left: '-=2500px'
                                    });
                                    h2_tag_latest.css('left','+=1250px');
                                    p_tag_latest.css('left','+=1250px');
                                    a_tag_latest.css('left','+=1250px');
                                    img_div_latest.css('bottom', '-=438px');
                                    img_waiter_latest.css('top','+=540px');
                                    img_tablet_latest.css('top', '-=450px');
                                    
                                    h2_tag_commerce.css('left','+=1250px');
                                    p_tag_commerce.css('left','+=1250px');
                                    a_tag_commerce.css('left','+=1250px');
                                    img_div_commerce.css('left', '+=1500px');
                                    img_sky_commerce.css('top', '-=114px');
                                    img_mountains_commerce.css('top', '-=45px');
                                    img_snowboard_commerce.css('top', '+=239px');
                                    img_snow_commerce.css('top', '+=525px');
                                    img_ecommerce_commerce.css('top', '+=0px');
                                    
                                    h2_tag_responsive.css('bottom', '+=300px');
                                    p_tag_responsive.css('bottom', '+=200px');
                                    a_tag_responsive.css('bottom', '+=300px');
                                    img_div_responsive.css('top','+=200px');
									
									h2_tag_responsive_new.css('left', '-=2500px');
                                    p_tag_responsive_new.css('left', '-=2500px');
                                    a_tag_responsive_new.css('left', '-=2500px');
                                    img_div_responsive_new.css('left','-=1000px');
									img_effect_div_mobile_new.css('top','+=190px');
                                    loop();
                            });
                            });
			});
                        });
                        }); 
                        
                        
                        }
			});
                        });
						});
		});

	}

	loop();
});












//
//
//
////jQuery(function($){
//	var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
//	var p_tag_mobile = $(".mobile-services-row .text-holder p");
//	var a_tag_mobile = $(".mobile-services-row .text-holder a");
//	var img_div_mobile = $(".mobile-services-row .image-holder");
//	var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
//	var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
//	var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
//	var img_div_responsive = $(".responsive-web-development-row .image-holder");
//	var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
//	var p_tag_commerce = $(".e-commerce-row .text-holder p");
//	var a_tag_commerce = $(".e-commerce-row .text-holder a");
//	var img_div_commerce = $(".e-commerce-row .image-holder");
//	
//	var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
//	var img_div_responsive_orig = img_div_responsive.position();
//	var img_div_commerce_orig = img_div_commerce.position();
//	
////	$(".mobile-services-row").hide();
//	h2_tag_responsive.css('left', '2000px');
//	p_tag_responsive.css('left', '-2000px');
//	a_tag_responsive.css('left', '-3000px');
//	img_div_responsive.css('left','2000px');
//	
//	$(".responsive-web-development-row").hide();
//	$(".e-commerce-row").hide();
//	$(".lease-a-team-row").hide();
//	
////	$(".mobile-services-row").click(function(){
////		h2_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////		});
////	});
////	
////	$(".responsive-web-development-row").click(function(){
////		$(".responsive-web-development-row").fadeOut('slow', function() {
////			$(".e-commerce-row").fadeIn()
////		});
////	});
////	
////	$(".e-commerce-row").click(function(){
////		h2_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1000, 'linear', function(){
////		});
////		p_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1500, 'linear', function(){
////		});
////		a_tag_commerce.animate({
////			left: '-=3000px',
////		}, 1700, 'linear', function(){
////		});
////		img_div_commerce.animate({
////			left: '+=2000px',
////		}, 2000, 'linear', function(){
////			$(".e-commerce-row").hide();
////			$(".lease-a-team-row").fadeIn();
////		});
////	});
////	
////	$(".lease-a-team-row").click(function(){
////		$(".lease-a-team-row").fadeOut('slow', function() {
////			$(".mobile-services-row").show();
////			h2_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			p_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			a_tag_mobile.animate({
////				left: '+=3000px'
////			});
////			img_div_mobile.animate({
////				left: '-=2500px'
////			});
////			h2_tag_commerce.css('left','+=2000px');
////			p_tag_commerce.css('left','+=2000px');
////			a_tag_commerce.css('left','+=3000px');
////			img_div_commerce.css('left', '-=2000px');
////			h2_tag_responsive.css('left', '2000px');
////			p_tag_responsive.css('left', '-2000px');
////			a_tag_responsive.css('left', '-3000px');
////			img_div_responsive.css('left','2000px');			
////		});
////	});
//	
//	function loop() {
//            	$(".next-rale1").click(function(){
//                $(".next-rale2").css("display","block");
//		h2_tag_mobile.animate({
//			left: '-=2000px'
//		}, 1000, 'easeInBack', function(){
//		});
//		p_tag_mobile.animate({
//			left: '-=2000px'
//		}, 1500, 'easeInBack', function(){
//		});
//		a_tag_mobile.animate({
//			left: '-=3000px',
//		}, 1700, 'easeInBack', function(){
//		});
//		img_div_mobile.animate({
//			left: '+=2500px',
//		}, 2000, 'easeInBack', function(){
//			$(".mobile-services-row").hide();
//			$(".responsive-web-development-row").show();
//			h2_tag_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//			p_tag_responsive.animate({
//				left: '+=2000px',
//				easing: 'easeOutBounce'
//			});
//			a_tag_responsive.animate({
//				left: '+=3000px',
//				easing: 'easeOutBounce'
//			});
//			img_div_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//		});
//	});
//	
//	$(".next-rale2").click(function(){
//                $(".next-rale2").css("display","none");
//                $(".next-rale3").css("display","block");
//		$(".responsive-web-development-row").fadeOut('slow', function() {
//			$(".e-commerce-row").fadeIn()
//		});
//	});
//	
//	$(".next-rale3").click(function(){
//                $(".next-rale3").css("display","none");
//                $(".next-rale4").css("display","block");
//		h2_tag_commerce.animate({
//			left: '-=2000px'
//		}, 1000, 'linear', function(){
//		});
//		p_tag_commerce.animate({
//			left: '-=2000px'
//		}, 1500, 'linear', function(){
//		});
//		a_tag_commerce.animate({
//			left: '-=3000px',
//		}, 1700, 'linear', function(){
//		});
//		img_div_commerce.animate({
//			left: '+=2000px',
//		}, 2000, 'linear', function(){
//			$(".e-commerce-row").hide();
//			$(".lease-a-team-row").fadeIn();
//		});
//	});
//	
//	$(".next-rale4").click(function(){
//                $(".next-rale4").css("display","none");
//                $(".next-rale1").css("display","block");
//		$(".lease-a-team-row").fadeOut('slow', function() {
//			$(".mobile-services-row").show();
//			h2_tag_mobile.animate({
//				left: '+=2000px'
//			});
//			p_tag_mobile.animate({
//				left: '+=2000px'
//			});
//			a_tag_mobile.animate({
//				left: '+=3000px'
//			});
//			img_div_mobile.animate({
//				left: '-=2500px'
//			});
//			h2_tag_commerce.css('left','+=2000px');
//			p_tag_commerce.css('left','+=2000px');
//			a_tag_commerce.css('left','+=3000px');
//			img_div_commerce.css('left', '-=2000px');
//			h2_tag_responsive.css('left', '2000px');
//			p_tag_responsive.css('left', '-2000px');
//			a_tag_responsive.css('left', '-3000px');
//			img_div_responsive.css('left','2000px');			
//		});
//	});
//        
//        
//        
//        
////        $(".prev-rale1").click(function(){
////                $(".prev-rale2").css("display","block");
////		h2_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////		});
////	});
////	
////	$(".prev-rale2").click(function(){
////                $(".prev-rale2").css("display","none");
////                $(".prev-rale3").css("display","block");
////		$(".responsive-web-development-row").fadeOut('slow', function() {
////			$(".e-commerce-row").fadeIn()
////		});
////	});
////	
////	$(".prev-rale3").click(function(){
////                $(".prev-rale3").css("display","none");
////                $(".prev-rale4").css("display","block");
////		h2_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1000, 'linear', function(){
////		});
////		p_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1500, 'linear', function(){
////		});
////		a_tag_commerce.animate({
////			left: '-=3000px',
////		}, 1700, 'linear', function(){
////		});
////		img_div_commerce.animate({
////			left: '+=2000px',
////		}, 2000, 'linear', function(){
////			$(".e-commerce-row").hide();
////			$(".lease-a-team-row").fadeIn();
////		});
////	});
////	
////	$(".prev-rale4").click(function(){
////                $(".prev-rale4").css("display","none");
////                $(".prev-rale1").css("display","block");
////		$(".lease-a-team-row").fadeOut('slow', function() {
////			$(".mobile-services-row").show();
////			h2_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			p_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			a_tag_mobile.animate({
////				left: '+=3000px'
////			});
////			img_div_mobile.animate({
////				left: '-=2500px'
////			});
////			h2_tag_commerce.css('left','+=2000px');
////			p_tag_commerce.css('left','+=2000px');
////			a_tag_commerce.css('left','+=3000px');
////			img_div_commerce.css('left', '-=2000px');
////			h2_tag_responsive.css('left', '2000px');
////			p_tag_responsive.css('left', '-2000px');
////			a_tag_responsive.css('left', '-3000px');
////			img_div_responsive.css('left','2000px');			
////		});
////	});
//            
//            
////		h2_tag_mobile.delay(5000).animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.delay(5000).animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.delay(5000).animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.delay(5000).animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			
////			$(".responsive-web-development-row").delay(5000).fadeOut('slow', function() {
////				$(".e-commerce-row").fadeIn();
////				h2_tag_commerce.delay(5000).animate({
////				left: '-=2000px'
////			}, 1000, 'linear', function(){
////			});
////			p_tag_commerce.delay(5000).animate({
////				left: '-=2000px'
////			}, 1500, 'linear', function(){
////			});
////			a_tag_commerce.delay(5000).animate({
////				left: '-=3000px',
////			}, 1700, 'linear', function(){
////			});
////			img_div_commerce.delay(5000).animate({
////				left: '+=2000px',
////			}, 2000, 'linear', function(){
////				$(".e-commerce-row").hide();
////				$(".lease-a-team-row").fadeIn();
////				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
////				$(".mobile-services-row").show();
////				h2_tag_mobile.animate({
////					left: '+=2000px'
////				});
////				p_tag_mobile.animate({
////					left: '+=2000px'
////				});
////				a_tag_mobile.animate({
////					left: '+=3000px'
////				});
////				img_div_mobile.animate({
////					left: '-=2500px'
////				});
////				h2_tag_commerce.css('left','+=2000px');
////				p_tag_commerce.css('left','+=2000px');
////				a_tag_commerce.css('left','+=3000px');
////				img_div_commerce.css('left', '-=2000px');
////				h2_tag_responsive.css('left', '2000px');
////				p_tag_responsive.css('left', '-2000px');
////				a_tag_responsive.css('left', '-3000px');
////				img_div_responsive.css('left','2000px');
////				loop();
////			});
////			});
////			});
////		});
//
//	}
//
//	loop();
//});
//////jQuery(function($){
//////        var tests = $(".mobile-services-row .tests");
////	var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
////	var p_tag_mobile = $(".mobile-services-row .text-holder p");
////	var a_tag_mobile = $(".mobile-services-row .text-holder a");
////	var img_div_mobile = $(".mobile-services-row .image-holder");
////	var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
////	var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
////	var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
////	var img_div_responsive = $(".responsive-web-development-row .image-holder");
////	var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
////	var p_tag_commerce = $(".e-commerce-row .text-holder p");
////	var a_tag_commerce = $(".e-commerce-row .text-holder a");
////	var img_div_commerce = $(".e-commerce-row .image-holder");
////	
////	var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
////	var img_div_responsive_orig = img_div_responsive.position();
////	var img_div_commerce_orig = img_div_commerce.position();
////	
//////	$(".mobile-services-row").hide();
////	h2_tag_responsive.css('left', '2000px');
////	p_tag_responsive.css('left', '-2000px');
////	a_tag_responsive.css('left', '-3000px');
////	img_div_responsive.css('left','2000px');
//////        tests.css('left','2000px');
////	
////	$(".responsive-web-development-row").hide();
////	$(".e-commerce-row").hide();
////	$(".lease-a-team-row").hide();
////	
//////	$(".mobile-services-row").click(function(){
//////		h2_tag_mobile.animate({
//////			left: '-=2000px'
//////		}, 1000, 'easeInBack', function(){
//////		});
//////		p_tag_mobile.animate({
//////			left: '-=2000px'
//////		}, 1500, 'easeInBack', function(){
//////		});
//////		a_tag_mobile.animate({
//////			left: '-=3000px',
//////		}, 1700, 'easeInBack', function(){
//////		});
//////		img_div_mobile.animate({
//////			left: '+=2500px',
//////		}, 2000, 'easeInBack', function(){
//////			$(".mobile-services-row").hide();
//////			$(".responsive-web-development-row").show();
//////			h2_tag_responsive.animate({
//////				left: '-=2000px',
//////				easing: 'easeOutBounce'
//////			});
//////			p_tag_responsive.animate({
//////				left: '+=2000px',
//////				easing: 'easeOutBounce'
//////			});
//////			a_tag_responsive.animate({
//////				left: '+=3000px',
//////				easing: 'easeOutBounce'
//////			});
//////			img_div_responsive.animate({
//////				left: '-=2000px',
//////				easing: 'easeOutBounce'
//////			});
//////		});
//////	});
//////	
//////	$(".responsive-web-development-row").click(function(){
//////		$(".responsive-web-development-row").fadeOut('slow', function() {
//////			$(".e-commerce-row").fadeIn()
//////		});
//////	});
//////	
//////	$(".e-commerce-row").click(function(){
//////		h2_tag_commerce.animate({
//////			left: '-=2000px'
//////		}, 1000, 'linear', function(){
//////		});
//////		p_tag_commerce.animate({
//////			left: '-=2000px'
//////		}, 1500, 'linear', function(){
//////		});
//////		a_tag_commerce.animate({
//////			left: '-=3000px',
//////		}, 1700, 'linear', function(){
//////		});
//////		img_div_commerce.animate({
//////			left: '+=2000px',
//////		}, 2000, 'linear', function(){
//////			$(".e-commerce-row").hide();
//////			$(".lease-a-team-row").fadeIn();
//////		});
//////	});
//////	
//////	$(".lease-a-team-row").click(function(){
//////		$(".lease-a-team-row").fadeOut('slow', function() {
//////			$(".mobile-services-row").show();
//////			h2_tag_mobile.animate({
//////				left: '+=2000px'
//////			});
//////			p_tag_mobile.animate({
//////				left: '+=2000px'
//////			});
//////			a_tag_mobile.animate({
//////				left: '+=3000px'
//////			});
//////			img_div_mobile.animate({
//////				left: '-=2500px'
//////			});
//////			h2_tag_commerce.css('left','+=2000px');
//////			p_tag_commerce.css('left','+=2000px');
//////			a_tag_commerce.css('left','+=3000px');
//////			img_div_commerce.css('left', '-=2000px');
//////			h2_tag_responsive.css('left', '2000px');
//////			p_tag_responsive.css('left', '-2000px');
//////			a_tag_responsive.css('left', '-3000px');
//////			img_div_responsive.css('left','2000px');			
//////		});
//////	});
////	
////	function loop() {
////
////                tests.delay(5000, function () {
////                    left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		h2_tag_mobile.delay(5000).animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.delay(5000).animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.delay(5000).animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.delay(5000).animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////                         
////            
////                        $(".tests").show();
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////                         $(".tests").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			
////			$(".responsive-web-development-row").delay(5000).fadeOut('slow', function() {
////				$(".e-commerce-row").fadeIn();
////				h2_tag_commerce.delay(5000).animate({
////				left: '-=2000px'
////			}, 1000, 'linear', function(){
////			});
////			p_tag_commerce.delay(5000).animate({
////				left: '-=2000px'
////			}, 1500, 'linear', function(){
////			});
////			a_tag_commerce.delay(5000).animate({
////				left: '-=3000px',
////			}, 1700, 'linear', function(){
////			});
////			img_div_commerce.delay(5000).animate({
////				left: '+=2000px',
////			}, 2000, 'linear', function(){
////				$(".e-commerce-row").hide();
////				$(".lease-a-team-row").fadeIn();
////				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
////				$(".mobile-services-row").show();
////				h2_tag_mobile.animate({
////					left: '+=2000px'
////				});
////				p_tag_mobile.animate({
////					left: '+=2000px'
////				});
////				a_tag_mobile.animate({
////					left: '+=3000px'
////				});
////				img_div_mobile.animate({
////					left: '-=2500px'
////				});
////				h2_tag_commerce.css('left','+=2000px');
////				p_tag_commerce.css('left','+=2000px');
////				a_tag_commerce.css('left','+=3000px');
////				img_div_commerce.css('left', '-=2000px');
////				h2_tag_responsive.css('left', '2000px');
////				p_tag_responsive.css('left', '-2000px');
////				a_tag_responsive.css('left', '-3000px');
////				img_div_responsive.css('left','2000px');
////				loop();
////			});
////			});
////			});
////		});
////
////	}
////
////	loop();
////});
////
////
/*jQuery(function($){
	var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
	var p_tag_mobile = $(".mobile-services-row .text-holder p");
	var a_tag_mobile = $(".mobile-services-row .text-holder a");
	var img_div_mobile = $(".mobile-services-row .image-holder");
	var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
	var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
	var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
	var img_div_responsive = $(".responsive-web-development-row .image-holder");
	var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
	var p_tag_commerce = $(".e-commerce-row .text-holder p");
	var a_tag_commerce = $(".e-commerce-row .text-holder a");
	var img_div_commerce = $(".e-commerce-row .image-holder");
	
	var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
	var img_div_responsive_orig = img_div_responsive.position();
	var img_div_commerce_orig = img_div_commerce.position();
	
//	$(".mobile-services-row").hide();
	h2_tag_responsive.css('left', '2000px');
	p_tag_responsive.css('left', '-2000px');
	a_tag_responsive.css('left', '-3000px');
	img_div_responsive.css('left','2000px');
	
	$(".responsive-web-development-row").hide();
	$(".e-commerce-row").hide();
	$(".lease-a-team-row").hide();
	
//	$(".mobile-services-row").click(function(){
//		h2_tag_mobile.animate({
//			left: '-=2000px'
//		}, 1000, 'easeInBack', function(){
//		});
//		p_tag_mobile.animate({
//			left: '-=2000px'
//		}, 1500, 'easeInBack', function(){
//		});
//		a_tag_mobile.animate({
//			left: '-=3000px',
//		}, 1700, 'easeInBack', function(){
//		});
//		img_div_mobile.animate({
//			left: '+=2500px',
//		}, 2000, 'easeInBack', function(){
//			$(".mobile-services-row").hide();
//			$(".responsive-web-development-row").show();
//			h2_tag_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//			p_tag_responsive.animate({
//				left: '+=2000px',
//				easing: 'easeOutBounce'
//			});
//			a_tag_responsive.animate({
//				left: '+=3000px',
//				easing: 'easeOutBounce'
//			});
//			img_div_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//		});
//	});
//	
//	$(".responsive-web-development-row").click(function(){
//		$(".responsive-web-development-row").fadeOut('slow', function() {
//			$(".e-commerce-row").fadeIn()
//		});
//	});
//	
//	$(".e-commerce-row").click(function(){
//		h2_tag_commerce.animate({
//			left: '-=2000px'
//		}, 1000, 'linear', function(){
//		});
//		p_tag_commerce.animate({
//			left: '-=2000px'
//		}, 1500, 'linear', function(){
//		});
//		a_tag_commerce.animate({
//			left: '-=3000px',
//		}, 1700, 'linear', function(){
//		});
//		img_div_commerce.animate({
//			left: '+=2000px',
//		}, 2000, 'linear', function(){
//			$(".e-commerce-row").hide();
//			$(".lease-a-team-row").fadeIn();
//		});
//	});
//	
//	$(".lease-a-team-row").click(function(){
//		$(".lease-a-team-row").fadeOut('slow', function() {
//			$(".mobile-services-row").show();
//			h2_tag_mobile.animate({
//				left: '+=2000px'
//			});
//			p_tag_mobile.animate({
//				left: '+=2000px'
//			});
//			a_tag_mobile.animate({
//				left: '+=3000px'
//			});
//			img_div_mobile.animate({
//				left: '-=2500px'
//			});
//			h2_tag_commerce.css('left','+=2000px');
//			p_tag_commerce.css('left','+=2000px');
//			a_tag_commerce.css('left','+=3000px');
//			img_div_commerce.css('left', '-=2000px');
//			h2_tag_responsive.css('left', '2000px');
//			p_tag_responsive.css('left', '-2000px');
//			a_tag_responsive.css('left', '-3000px');
//			img_div_responsive.css('left','2000px');			
//		});
//	});
	
	function loop() {
		h2_tag_mobile.delay(5000).animate({
			left: '-=2000px'
		}, 1000, 'easeInBack', function(){
		});
		p_tag_mobile.delay(5000).animate({
			left: '-=2000px'
		}, 1500, 'easeInBack', function(){
		});
		a_tag_mobile.delay(5000).animate({
			left: '-=3000px',
		}, 1700, 'easeInBack', function(){
		});
		img_div_mobile.delay(5000).animate({
			left: '+=2500px',
		}, 2000, 'easeInBack', function(){
			$(".mobile-services-row").hide();
			$(".responsive-web-development-row").show();
			h2_tag_responsive.animate({
				left: '-=2000px',
				easing: 'easeOutBounce'
			});
			p_tag_responsive.animate({
				left: '+=2000px',
				easing: 'easeOutBounce'
			});
			a_tag_responsive.animate({
				left: '+=3000px',
				easing: 'easeOutBounce'
			});
			img_div_responsive.animate({
				left: '-=2000px',
				easing: 'easeOutBounce'
			});
			
			$(".responsive-web-development-row").delay(5000).fadeOut('slow', function() {
				$(".e-commerce-row").fadeIn();
				h2_tag_commerce.delay(5000).animate({
				left: '-=2000px'
			}, 1000, 'linear', function(){
			});
			p_tag_commerce.delay(5000).animate({
				left: '-=2000px'
			}, 1500, 'linear', function(){
			});
			a_tag_commerce.delay(5000).animate({
				left: '-=3000px',
			}, 1700, 'linear', function(){
			});
			img_div_commerce.delay(5000).animate({
				left: '+=2000px',
			}, 2000, 'linear', function(){
				$(".e-commerce-row").hide();
				$(".lease-a-team-row").fadeIn();
				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
				$(".mobile-services-row").show();
				h2_tag_mobile.animate({
					left: '+=2000px'
				});
				p_tag_mobile.animate({
					left: '+=2000px'
				});
				a_tag_mobile.animate({
					left: '+=3000px'
				});
				img_div_mobile.animate({
					left: '-=2500px'
				});
				h2_tag_commerce.css('left','+=2000px');
				p_tag_commerce.css('left','+=2000px');
				a_tag_commerce.css('left','+=3000px');
				img_div_commerce.css('left', '-=2000px');
				h2_tag_responsive.css('left', '2000px');
				p_tag_responsive.css('left', '-2000px');
				a_tag_responsive.css('left', '-3000px');
				img_div_responsive.css('left','2000px');
				loop();
			});
			});
			});
		});

	}

	loop();
});
*/




//jQuery(function($){
//	var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
//	var p_tag_mobile = $(".mobile-services-row .text-holder p");
//	var a_tag_mobile = $(".mobile-services-row .text-holder a");
//	var img_div_mobile = $(".mobile-services-row .image-holder");
//	var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
//	var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
//	var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
//	var img_div_responsive = $(".responsive-web-development-row .image-holder");
//	var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
//	var p_tag_commerce = $(".e-commerce-row .text-holder p");
//	var a_tag_commerce = $(".e-commerce-row .text-holder a");
//	var img_div_commerce = $(".e-commerce-row .image-holder");
//	
//	var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
//	var img_div_responsive_orig = img_div_responsive.position();
//	var img_div_commerce_orig = img_div_commerce.position();
//	
////	$(".mobile-services-row").hide();
//	h2_tag_responsive.css('left', '2000px');
//	p_tag_responsive.css('left', '-2000px');
//	a_tag_responsive.css('left', '-3000px');
//	img_div_responsive.css('left','2000px');
//	
//	$(".responsive-web-development-row").hide();
//	$(".e-commerce-row").hide();
//	$(".lease-a-team-row").hide();
//	
////	$(".mobile-services-row").click(function(){
////		h2_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////		});
////	});
////	
////	$(".responsive-web-development-row").click(function(){
////		$(".responsive-web-development-row").fadeOut('slow', function() {
////			$(".e-commerce-row").fadeIn()
////		});
////	});
////	
////	$(".e-commerce-row").click(function(){
////		h2_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1000, 'linear', function(){
////		});
////		p_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1500, 'linear', function(){
////		});
////		a_tag_commerce.animate({
////			left: '-=3000px',
////		}, 1700, 'linear', function(){
////		});
////		img_div_commerce.animate({
////			left: '+=2000px',
////		}, 2000, 'linear', function(){
////			$(".e-commerce-row").hide();
////			$(".lease-a-team-row").fadeIn();
////		});
////	});
////	
////	$(".lease-a-team-row").click(function(){
////		$(".lease-a-team-row").fadeOut('slow', function() {
////			$(".mobile-services-row").show();
////			h2_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			p_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			a_tag_mobile.animate({
////				left: '+=3000px'
////			});
////			img_div_mobile.animate({
////				left: '-=2500px'
////			});
////			h2_tag_commerce.css('left','+=2000px');
////			p_tag_commerce.css('left','+=2000px');
////			a_tag_commerce.css('left','+=3000px');
////			img_div_commerce.css('left', '-=2000px');
////			h2_tag_responsive.css('left', '2000px');
////			p_tag_responsive.css('left', '-2000px');
////			a_tag_responsive.css('left', '-3000px');
////			img_div_responsive.css('left','2000px');			
////		});
////	});
//	
//	function loop() {
//		h2_tag_mobile.delay(5000).animate({
//			left: '-=2000px'
//		}, 1000, 'easeInBack', function(){
//		});
//		p_tag_mobile.delay(5000).animate({
//			left: '-=2000px'
//		}, 1500, 'easeInBack', function(){
//		});
//		a_tag_mobile.delay(5000).animate({
//			left: '-=3000px',
//		}, 1700, 'easeInBack', function(){
//		});
//		img_div_mobile.delay(5000).animate({
//			left: '+=2500px',
//		}, 2000, 'easeInBack', function(){
//			$(".mobile-services-row").hide();
//			$(".responsive-web-development-row").show();
//			h2_tag_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//			p_tag_responsive.animate({
//				left: '+=2000px',
//				easing: 'easeOutBounce'
//			});
//			a_tag_responsive.animate({
//				left: '+=3000px',
//				easing: 'easeOutBounce'
//			});
//			img_div_responsive.animate({
//				left: '-=2000px',
//				easing: 'easeOutBounce'
//			});
//			
//			$(".responsive-web-development-row").delay(5000).fadeOut('slow', function() {
//				$(".e-commerce-row").fadeIn();
//				h2_tag_commerce.delay(5000).animate({
//				left: '-=2000px'
//			}, 1000, 'linear', function(){
//			});
//			p_tag_commerce.delay(5000).animate({
//				left: '-=2000px'
//			}, 1500, 'linear', function(){
//			});
//			a_tag_commerce.delay(5000).animate({
//				left: '-=3000px',
//			}, 1700, 'linear', function(){
//			});
//			img_div_commerce.delay(5000).animate({
//				left: '+=2000px',
//			}, 2000, 'linear', function(){
//				$(".e-commerce-row").hide();
//				$(".lease-a-team-row").fadeIn();
//				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
//				$(".mobile-services-row").show();
//				h2_tag_mobile.animate({
//					left: '+=2000px'
//				});
//				p_tag_mobile.animate({
//					left: '+=2000px'
//				});
//				a_tag_mobile.animate({
//					left: '+=3000px'
//				});
//				img_div_mobile.animate({
//					left: '-=2500px'
//				});
//				h2_tag_commerce.css('left','+=2000px');
//				p_tag_commerce.css('left','+=2000px');
//				a_tag_commerce.css('left','+=3000px');
//				img_div_commerce.css('left', '-=2000px');
//				h2_tag_responsive.css('left', '2000px');
//				p_tag_responsive.css('left', '-2000px');
//				a_tag_responsive.css('left', '-3000px');
//				img_div_responsive.css('left','2000px');
//				loop();
//			});
//			});
//			});
//		});
//
//	}
//
//	loop();
//});


/*deki
 * jQuery(function($){
 var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
 var p_tag_mobile = $(".mobile-services-row .text-holder p");
 var a_tag_mobile = $(".mobile-services-row .text-holder a");
 var img_div_mobile = $(".mobile-services-row .image-holder");
 var img_effect_div_mobile = $(".mobile-services-row .image-holder-effect");
 var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
 var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
 var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
 var img_div_responsive = $(".responsive-web-development-row .image-holder");
 //        var img_effect_div_responsive = $(".responsive-web-development-row .image-holder-effect");
 
 var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
 var p_tag_commerce = $(".e-commerce-row .text-holder p");
 var a_tag_commerce = $(".e-commerce-row .text-holder a");
 var img_div_commerce = $(".e-commerce-row .image-holder");
 var img_sky_commerce = $(".e-commerce-row .image-sky");
 var img_snow_commerce = $(".e-commerce-row .image-snow");
 var img_snowboard_commerce = $(".e-commerce-row .image-snowboard");
 var img_ecommerce_commerce = $(".e-commerce-row .image-ecommerce");
 
 var h2_tag_latest = $(".our-latest-projects-row .text-holder h2");
 var p_tag_latest = $(".our-latest-projects-row .text-holder p");
 var a_tag_latest = $(".our-latest-projects-row .text-holder a");
 var img_div_latest = $(".our-latest-projects-row .image-holder");
 var img_waiter_latest = $(".our-latest-projects-row .image-waiter");
 var img_tablet_latest = $(".our-latest-projects-row .image-tablet");
 
 
 var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
 //        var img_effect_div_mobile_orig = $(".mobile-services-row .image-holder-effect").position().left;
 var img_div_responsive_orig = img_div_responsive.position();
 var img_div_commerce_orig = img_div_commerce.position();
 var img_div_latest_orig = img_div_commerce.position();
 
 //	$(".mobile-services-row").hide();
 h2_tag_responsive.css('bottom', '300px');
 p_tag_responsive.css('bottom', '200px');
 a_tag_responsive.css('bottom', '300px');
 img_div_responsive.css('top','200px');
 
 h2_tag_commerce.css('right', '-=2000px');
 p_tag_commerce.css('right','-=2000px');
 a_tag_commerce.css('right','-=3000px');
 img_sky_commerce.css('top', '-114px');
 img_snow_commerce.css('top', '+525px');
 img_snowboard_commerce.css('top', '+240px');
 img_ecommerce_commerce.css('top', '0px');
 
 h2_tag_latest.css('right','-=2000px');
 p_tag_latest.css('right','-=2000px');
 a_tag_latest.css('right','-=3000px');
 img_waiter_latest.css('top', '+540px');
 img_tablet_latest.css('top', '-460px');
 //img_effect_div_mobile.css('left','0px');
 
 $(".responsive-web-development-row").hide();
 $(".e-commerce-row").hide();
 $(".our-latest-projects-row").hide();
 $(".lease-a-team-row").hide();
 
 
 //	$(".mobile-services-row").click(function(){
 //		h2_tag_mobile.animate({
 //			left: '-=2000px'
 //		}, 1000, 'easeInBack', function(){
 //		});
 //		p_tag_mobile.animate({
 //			left: '-=2000px'
 //		}, 1500, 'easeInBack', function(){
 //		});
 //		a_tag_mobile.animate({
 //			left: '-=3000px',
 //		}, 1700, 'easeInBack', function(){
 //		});
 //		img_div_mobile.animate({
 //			left: '+=2500px',
 //		}, 2000, 'easeInBack', function(){
 //			$(".mobile-services-row").hide();
 //			$(".responsive-web-development-row").show();
 //			h2_tag_responsive.animate({
 //				left: '-=2000px',
 //				easing: 'easeOutBounce'
 //			});
 //			p_tag_responsive.animate({
 //				left: '+=2000px',
 //				easing: 'easeOutBounce'
 //			});
 //			a_tag_responsive.animate({
 //				left: '+=3000px',
 //				easing: 'easeOutBounce'
 //			});
 //			img_div_responsive.animate({
 //				left: '-=2000px',
 //				easing: 'easeOutBounce'
 //			});
 //		});
 //	});
 //	
 //	$(".responsive-web-development-row").click(function(){
 //		$(".responsive-web-development-row").fadeOut('slow', function() {
 //			$(".e-commerce-row").fadeIn()
 //		});
 //	});
 //	
 //	$(".e-commerce-row").click(function(){
 //		h2_tag_commerce.animate({
 //			left: '-=2000px'
 //		}, 1000, 'linear', function(){
 //		});
 //		p_tag_commerce.animate({
 //			left: '-=2000px'
 //		}, 1500, 'linear', function(){
 //		});
 //		a_tag_commerce.animate({
 //			left: '-=3000px',
 //		}, 1700, 'linear', function(){
 //		});
 //		img_div_commerce.animate({
 //			left: '+=2000px',
 //		}, 2000, 'linear', function(){
 //			$(".e-commerce-row").hide();
 //			$(".lease-a-team-row").fadeIn();
 //		});
 //	});
 //	
 //	$(".lease-a-team-row").click(function(){
 //		$(".lease-a-team-row").fadeOut('slow', function() {
 //			$(".mobile-services-row").show();
 //			h2_tag_mobile.animate({
 //				left: '+=2000px'
 //			});
 //			p_tag_mobile.animate({
 //				left: '+=2000px'
 //			});
 //			a_tag_mobile.animate({
 //				left: '+=3000px'
 //			});
 //			img_div_mobile.animate({
 //				left: '-=2500px'
 //			});
 //			h2_tag_commerce.css('left','+=2000px');
 //			p_tag_commerce.css('left','+=2000px');
 //			a_tag_commerce.css('left','+=3000px');
 //			img_div_commerce.css('left', '-=2000px');
 //			h2_tag_responsive.css('left', '2000px');
 //			p_tag_responsive.css('left', '-2000px');
 //			a_tag_responsive.css('left', '-3000px');
 //			img_div_responsive.css('left','2000px');			
 //		});
 //	});
 
 function loop() {
 
 h2_tag_mobile.delay(5000).animate({
 left: '+=2000px'
 }, 1000, 'easeInBack', function(){
 });
 p_tag_mobile.delay(5000).animate({
 left: '+=2000px'
 }, 1500, 'easeInBack', function(){
 });
 a_tag_mobile.delay(5000).animate({
 left: '+=3000px',
 }, 1700, 'easeInBack', function(){
 });
 img_effect_div_mobile.delay(5000).animate({
 top: '+=100px'
 }, 2000, 'easeInBack', function(){
 });
 img_div_mobile.delay(5000).animate({
 left: '+=2500px',
 }, 2000, 'easeInBack', function(){
 $(".mobile-services-row").hide();
 $(".responsive-web-development-row").show();
 h2_tag_responsive.delay(200).animate({
 bottom: '-=300px'
 },2000,'easeOutCirc', function(){
 });
 p_tag_responsive.delay(200).animate({
 bottom: '-=200px'
 },2000,'easeOutCirc', function(){
 });
 a_tag_responsive.delay(200).animate({
 bottom: '-=300px'
 },2000,'easeInOutExpo', function(){
 });
 img_div_responsive.delay(100).animate({
 top: '-=200px'
 },2000,'easeOutCirc', function(){
 });
 
 $(".responsive-web-development-row").delay(5000).fadeOut("slow", function() {
 
 $(".e-commerce-row").fadeIn(800, function() {
 
 img_sky_commerce.animate({
 top: '+=114px',
 },3500,'linear', function(){
 });
 img_snow_commerce.delay(1600).animate({
 top: '-=525px',
 },350,'linear', function(){
 });
 img_snowboard_commerce.delay(400).animate({
 top: '-=239px',
 //				easing: 'easeOutBounce'
 },1600,'linear', function(){
 });
 img_ecommerce_commerce.delay(3400).animate({
 top: '-=0px',
 },800,'linear', function(){
 });
 
 h2_tag_commerce.delay(200).animate({
 right: '+=2000px'
 }, 1000, 'linear', function(){
 });
 p_tag_commerce.delay(200).animate({
 right: '+=2000px'
 }, 1500, 'linear', function(){
 });
 a_tag_commerce.delay(200).animate({
 right: '+=3000px',
 }, 1700, 'linear', function(){
 });
 img_div_commerce.delay(4000).animate({
 right: '+=2000px',
 }, 2000, 'linear', function(){
 
 
 
 
 $(".e-commerce-row").hide();
 $(".our-latest-projects-row").fadeIn();
 img_waiter_latest.delay(900).animate({
 top: '-=540px',
 //				easing: 'easeOutBounce'
 },500,'linear', function(){
 });
 img_tablet_latest.delay(2400).animate({
 top: '+=450px',
 },150,'linear', function(){
 });
 
 h2_tag_latest.delay(200).animate({
 right: '+=2000px'
 }, 1000, 'linear', function(){
 });
 p_tag_latest.delay(200).animate({
 right: '+=2000px'
 }, 1500, 'linear', function(){
 });
 a_tag_latest.delay(200).animate({
 right: '+=3000px',
 }, 1700, 'linear', function(){
 });
 img_div_latest.delay(4000).animate({
 right: '+=2000px',
 }, 2000, 'linear', function(){
 
 
 $(".our-latest-projects-row").hide();
 $(".lease-a-team-row").fadeIn();
 
 
 $(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
 $(".mobile-services-row").show();
 h2_tag_mobile.animate({
 left: '-=2000px'
 });
 p_tag_mobile.animate({
 left: '-=2000px'
 });
 a_tag_mobile.animate({
 left: '-=3000px'
 });
 img_effect_div_mobile.animate({
 top: '-=100px'          
 });
 img_div_mobile.animate({
 left: '-=2500px'
 });
 h2_tag_latest.css('right','-=2000px');
 p_tag_latest.css('right','-=2000px');
 a_tag_latest.css('right','-=3000px');
 img_div_latest.css('left', '-=2000px');
 img_waiter_latest.css('top','+=540px');
 img_tablet_latest.css('top', '-=450px');
 
 h2_tag_commerce.css('right','-=2000px');
 p_tag_commerce.css('right','-=2000px');
 a_tag_commerce.css('right','-=3000px');
 img_div_commerce.css('right', '-=2000px');
 img_sky_commerce.css('top', '-=114px');
 img_snowboard_commerce.css('top', '+=239px');
 img_snow_commerce.css('top', '+=525px');
 img_ecommerce_commerce.css('top', '+=0px');
 
 h2_tag_responsive.css('bottom', '+=300px');
 p_tag_responsive.css('bottom', '+=200px');
 a_tag_responsive.css('bottom', '+=300px');
 img_div_responsive.css('top','+=200px');
 loop();
 });
 });
 });
 });
 });
 });
 
 }
 
 loop();
 });
 * 
 * */
 
 
 
 
 
 /*sa timerom*/
// 
// jQuery(function($) {
//    var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
//    var p_tag_mobile = $(".mobile-services-row .text-holder p");
//    var a_tag_mobile = $(".mobile-services-row .text-holder a");
//    var img_div_mobile = $(".mobile-services-row .image-holder");
//    var img_effect_div_mobile = $(".mobile-services-row .image-holder-effect");
//    var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
//    var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
//    var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
//    var img_div_responsive = $(".responsive-web-development-row .image-holder");
////        var img_effect_div_responsive = $(".responsive-web-development-row .image-holder-effect");
//
//    var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
//    var p_tag_commerce = $(".e-commerce-row .text-holder p");
//    var a_tag_commerce = $(".e-commerce-row .text-holder a");
//    var img_div_commerce = $(".e-commerce-row .image-holder");
//    var img_sky_commerce = $(".e-commerce-row .image-sky");
//    var img_snow_commerce = $(".e-commerce-row .image-snow");
//    var img_snowboard_commerce = $(".e-commerce-row .image-snowboard");
//    var img_ecommerce_commerce = $(".e-commerce-row .image-ecommerce");
//
//    var h2_tag_latest = $(".our-latest-projects-row .text-holder h2");
//    var p_tag_latest = $(".our-latest-projects-row .text-holder p");
//    var a_tag_latest = $(".our-latest-projects-row .text-holder a");
//    var img_div_latest = $(".our-latest-projects-row .image-holder");
//    var img_waiter_latest = $(".our-latest-projects-row .image-waiter");
//    var img_tablet_latest = $(".our-latest-projects-row .image-tablet");
//
//
//    var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
////        var img_effect_div_mobile_orig = $(".mobile-services-row .image-holder-effect").position().left;
//    var img_div_responsive_orig = img_div_responsive.position();
//    var img_div_commerce_orig = img_div_commerce.position();
//    var img_div_latest_orig = img_div_commerce.position();
//
////	$(".mobile-services-row").hide();
//    h2_tag_responsive.css('bottom', '300px');
//    p_tag_responsive.css('bottom', '200px');
//    a_tag_responsive.css('bottom', '300px');
//    img_div_responsive.css('top', '200px');
//
//    h2_tag_commerce.css('right', '-=2000px');
//    p_tag_commerce.css('right', '-=2000px');
//    a_tag_commerce.css('right', '-=3000px');
//    img_sky_commerce.css('top', '-114px');
//    img_snow_commerce.css('top', '+525px');
//    img_snowboard_commerce.css('top', '+240px');
//    img_ecommerce_commerce.css('top', '0px');
//
//    h2_tag_latest.css('right', '-=2000px');
//    p_tag_latest.css('right', '-=2000px');
//    a_tag_latest.css('right', '-=3000px');
//    img_waiter_latest.css('top', '+540px');
//    img_tablet_latest.css('top', '-460px');
//    //img_effect_div_mobile.css('left','0px');
//
//    $(".responsive-web-development-row").hide();
//    $(".e-commerce-row").hide();
//    $(".our-latest-projects-row").hide();
//    $(".lease-a-team-row").hide();
//
//
////	$(".mobile-services-row").click(function(){
////		h2_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////		});
////	});
////	
////	$(".responsive-web-development-row").click(function(){
////		$(".responsive-web-development-row").fadeOut('slow', function() {
////			$(".e-commerce-row").fadeIn()
////		});
////	});
////	
////	$(".e-commerce-row").click(function(){
////		h2_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1000, 'linear', function(){
////		});
////		p_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1500, 'linear', function(){
////		});
////		a_tag_commerce.animate({
////			left: '-=3000px',
////		}, 1700, 'linear', function(){
////		});
////		img_div_commerce.animate({
////			left: '+=2000px',
////		}, 2000, 'linear', function(){
////			$(".e-commerce-row").hide();
////			$(".lease-a-team-row").fadeIn();
////		});
////	});
////	
////	$(".lease-a-team-row").click(function(){
////		$(".lease-a-team-row").fadeOut('slow', function() {
////			$(".mobile-services-row").show();
////			h2_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			p_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			a_tag_mobile.animate({
////				left: '+=3000px'
////			});
////			img_div_mobile.animate({
////				left: '-=2500px'
////			});
////			h2_tag_commerce.css('left','+=2000px');
////			p_tag_commerce.css('left','+=2000px');
////			a_tag_commerce.css('left','+=3000px');
////			img_div_commerce.css('left', '-=2000px');
////			h2_tag_responsive.css('left', '2000px');
////			p_tag_responsive.css('left', '-2000px');
////			a_tag_responsive.css('left', '-3000px');
////			img_div_responsive.css('left','2000px');			
////		});
////	});
//
//    function loop() {
//        
//        var timeOut = window.setTimeout(function() {
//            h2_tag_mobile.animate({
//                left: '+=2000px'
//            }, 1000, 'easeInBack', function() {
//            });
//        }, 5000);
//        timeOut = window.setTimeout(function() {
//            p_tag_mobile.animate({
//                left: '+=2000px'
//            }, 1500, 'easeInBack', function() {
//            });
//        }, 5000);
//        timeOut = window.setTimeout(function() {
//            a_tag_mobile.animate({
//                left: '+=3000px',
//            }, 1700, 'easeInBack', function() {
//            });
//        }, 5000);
//        timeOut = window.setTimeout(function() {
//            img_effect_div_mobile.animate({
//                top: '+=100px'
//            }, 2000, 'easeInBack', function() {
//            });
//        }, 5000);
//        timeOut = window.setTimeout(function() {
//            img_div_mobile.animate({
//                left: '+=2500px',
//            }, 2000, 'easeInBack', function() {
//                $(".mobile-services-row").hide();
//                $(".responsive-web-development-row").show();
//                timeOut = window.setTimeout(function() {
//                    h2_tag_responsive.animate({
//                        bottom: '-=300px'
//                    }, 2000, 'easeOutCirc', function() {
//                    });
//                }, 200);
//                timeOut = window.setTimeout(function() {
//                    p_tag_responsive.animate({
//                        bottom: '-=200px'
//                    }, 2000, 'easeOutCirc', function() {
//                    });
//                }, 200);
//                timeOut = window.setTimeout(function() {
//                    a_tag_responsive.animate({
//                        bottom: '-=300px'
//                    }, 2000, 'easeInOutExpo', function() {
//                    });
//                }, 200);
//                timeOut = window.setTimeout(function() {
//                    img_div_responsive.animate({
//                        top: '-=200px'
//                    }, 2000, 'easeOutCirc', function() {
//                    });
//                }, 100);
//
//                timeOut = window.setTimeout(function() {
//                    $(".responsive-web-development-row").fadeOut("slow", function() {
//
//                        $(".e-commerce-row").fadeIn(800, function() {
//
//                            img_sky_commerce.animate({
//                                top: '+=114px',
//                            }, 3500, 'linear', function() {
//                            });
//                            timeOut = window.setTimeout(function() {
//                                img_snow_commerce.animate({
//                                    top: '-=525px',
//                                }, 350, 'linear', function() {
//                                });
//                            }, 1600);
//                            timeOut = window.setTimeout(function() {
//                                img_snowboard_commerce.animate({
//                                    top: '-=239px',
//                                    //				easing: 'easeOutBounce'
//                                }, 1600, 'linear', function() {
//                                });
//                            }, 400);
//                            timeOut = window.setTimeout(function() {
//                                img_ecommerce_commerce.animate({
//                                    top: '-=0px',
//                                }, 800, 'linear', function() {
//                                });
//                            }, 3400);
//
//                            timeOut = window.setTimeout(function() {
//                                h2_tag_commerce.animate({
//                                    right: '+=2000px'
//                                }, 1000, 'linear', function() {
//                                });
//                            }, 200);
//                            timeOut = window.setTimeout(function() {
//                                p_tag_commerce.animate({
//                                    right: '+=2000px'
//                                }, 1500, 'linear', function() {
//                                });
//                            }, 200);
//                            timeOut = window.setTimeout(function() {
//                                a_tag_commerce.animate({
//                                    right: '+=3000px',
//                                }, 1700, 'linear', function() {
//                                });
//                            }, 200);
//                            timeOut = window.setTimeout(function() {
//                                img_div_commerce.animate({
//                                    right: '+=2000px',
//                                }, 2000, 'linear', function() {
//
//
//
//
//                                    $(".e-commerce-row").hide();
//                                    $(".our-latest-projects-row").fadeIn();
//                                    timeOut = window.setTimeout(function() {
//                                        img_waiter_latest.animate({
//                                            top: '-=540px',
//                                            //				easing: 'easeOutBounce'
//                                        }, 500, 'linear', function() {
//                                        });
//                                    }, 900);
//                                    timeOut = window.setTimeout(function() {
//                                        img_tablet_latest.animate({
//                                            top: '+=450px',
//                                        }, 150, 'linear', function() {
//                                        });
//                                    }, 2400);
//                                    timeOut = window.setTimeout(function() {
//                                        h2_tag_latest.animate({
//                                            right: '+=2000px'
//                                        }, 1000, 'linear', function() {
//                                        });
//                                    }, 200);
//                                    timeOut = window.setTimeout(function() {
//                                        p_tag_latest.animate({
//                                            right: '+=2000px'
//                                        }, 1500, 'linear', function() {
//                                        });
//                                    }, 200);
//                                    timeOut = window.setTimeout(function() {
//                                        a_tag_latest.animate({
//                                            right: '+=3000px',
//                                        }, 1700, 'linear', function() {
//                                        });
//                                    }, 200);
//                                    timeOut = window.setTimeout(function() {
//                                    img_div_latest.animate({
//                                        right: '+=2000px',
//                                    }, 2000, 'linear', function() {
//
//
//                                        $(".our-latest-projects-row").hide();
//                                        $(".lease-a-team-row").fadeIn();
//
//                                        timeOut = window.setTimeout(function() {
//                                        $(".lease-a-team-row").fadeOut('slow', function() {
//                                            $(".mobile-services-row").show();
//                                            h2_tag_mobile.animate({
//                                                left: '-=2000px'
//                                            });
//                                            p_tag_mobile.animate({
//                                                left: '-=2000px'
//                                            });
//                                            a_tag_mobile.animate({
//                                                left: '-=3000px'
//                                            });
//                                            img_effect_div_mobile.animate({
//                                                top: '-=100px'
//                                            });
//                                            img_div_mobile.animate({
//                                                left: '-=2500px'
//                                            });
//                                            h2_tag_latest.css('right', '-=2000px');
//                                            p_tag_latest.css('right', '-=2000px');
//                                            a_tag_latest.css('right', '-=3000px');
//                                            img_div_latest.css('left', '-=2000px');
//                                            img_waiter_latest.css('top', '+=540px');
//                                            img_tablet_latest.css('top', '-=450px');
//
//                                            h2_tag_commerce.css('right', '-=2000px');
//                                            p_tag_commerce.css('right', '-=2000px');
//                                            a_tag_commerce.css('right', '-=3000px');
//                                            img_div_commerce.css('right', '-=2000px');
//                                            img_sky_commerce.css('top', '-=114px');
//                                            img_snowboard_commerce.css('top', '+=239px');
//                                            img_snow_commerce.css('top', '+=525px');
//                                            img_ecommerce_commerce.css('top', '+=0px');
//
//                                            h2_tag_responsive.css('bottom', '+=300px');
//                                            p_tag_responsive.css('bottom', '+=200px');
//                                            a_tag_responsive.css('bottom', '+=300px');
//                                            img_div_responsive.css('top', '+=200px');
//                                            loop();
//                                        });
//                                        }, 5000);
//                                    });
//                                  }, 4000);
//                                });
//                            }, 4000);
//                        });
//                    });
//                }, 5000);
//            });
//        }, 5000);
//
//    }
//
//    loop();
//});



/*na click*/
//jQuery(function($){
//	var h2_tag_mobile = $(".mobile-services-row .text-holder h2");
//	var p_tag_mobile = $(".mobile-services-row .text-holder p");
//	var a_tag_mobile = $(".mobile-services-row .text-holder a");
//	var img_div_mobile = $(".mobile-services-row .image-holder");
//        var img_effect_div_mobile = $(".mobile-services-row .image-holder-effect");
//	var h2_tag_responsive = $(".responsive-web-development-row .text-holder h2");
//	var p_tag_responsive = $(".responsive-web-development-row .text-holder p");
//	var a_tag_responsive = $(".responsive-web-development-row .text-holder a");
//	var img_div_responsive = $(".responsive-web-development-row .image-holder");
////        var img_effect_div_responsive = $(".responsive-web-development-row .image-holder-effect");
//
//	var h2_tag_commerce = $(".e-commerce-row .text-holder h2");
//	var p_tag_commerce = $(".e-commerce-row .text-holder p");
//	var a_tag_commerce = $(".e-commerce-row .text-holder a");
//	var img_div_commerce = $(".e-commerce-row .image-holder");
//        var img_sky_commerce = $(".e-commerce-row .image-sky");
//        var img_snow_commerce = $(".e-commerce-row .image-snow");
//        var img_snowboard_commerce = $(".e-commerce-row .image-snowboard");
//        var img_ecommerce_commerce = $(".e-commerce-row .image-ecommerce");
//        
//        var h2_tag_latest = $(".our-latest-projects-row .text-holder h2");
//	var p_tag_latest = $(".our-latest-projects-row .text-holder p");
//	var a_tag_latest = $(".our-latest-projects-row .text-holder a");
//	var img_div_latest = $(".our-latest-projects-row .image-holder");
//        var img_waiter_latest = $(".our-latest-projects-row .image-waiter");
//        var img_tablet_latest = $(".our-latest-projects-row .image-tablet");
//	
//        
//	var img_div_mobile_orig = $(".mobile-services-row .image-holder").position().left;
////        var img_effect_div_mobile_orig = $(".mobile-services-row .image-holder-effect").position().left;
//	var img_div_responsive_orig = img_div_responsive.position();
//	var img_div_commerce_orig = img_div_commerce.position();
//        var img_div_latest_orig = img_div_commerce.position();
//	
////	$(".mobile-services-row").hide();
//	h2_tag_responsive.css('bottom', '300px');
//	p_tag_responsive.css('bottom', '200px');
//	a_tag_responsive.css('bottom', '300px');
//	img_div_responsive.css('top','200px');
//        
//        h2_tag_commerce.css('right', '-=2000px');
//        p_tag_commerce.css('right','-=2000px');
//        a_tag_commerce.css('right','-=3000px');
//        img_sky_commerce.css('top', '-114px');
//        img_snow_commerce.css('top', '+525px');
//        img_snowboard_commerce.css('top', '+240px');
//        img_ecommerce_commerce.css('top', '0px');
//        
//        h2_tag_latest.css('right','-=2000px');
//        p_tag_latest.css('right','-=2000px');
//        a_tag_latest.css('right','-=3000px');
//        img_waiter_latest.css('top', '+540px');
//        img_tablet_latest.css('top', '-460px');
//        //img_effect_div_mobile.css('left','0px');
//	
//	$(".responsive-web-development-row").hide();
//	$(".e-commerce-row").hide();
//        $(".our-latest-projects-row").hide();
//	$(".lease-a-team-row").hide();
//        
//	
////	$(".mobile-services-row").click(function(){
////		h2_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1000, 'easeInBack', function(){
////		});
////		p_tag_mobile.animate({
////			left: '-=2000px'
////		}, 1500, 'easeInBack', function(){
////		});
////		a_tag_mobile.animate({
////			left: '-=3000px',
////		}, 1700, 'easeInBack', function(){
////		});
////		img_div_mobile.animate({
////			left: '+=2500px',
////		}, 2000, 'easeInBack', function(){
////			$(".mobile-services-row").hide();
////			$(".responsive-web-development-row").show();
////			h2_tag_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////			p_tag_responsive.animate({
////				left: '+=2000px',
////				easing: 'easeOutBounce'
////			});
////			a_tag_responsive.animate({
////				left: '+=3000px',
////				easing: 'easeOutBounce'
////			});
////			img_div_responsive.animate({
////				left: '-=2000px',
////				easing: 'easeOutBounce'
////			});
////		});
////	});
////	
////	$(".responsive-web-development-row").click(function(){
////		$(".responsive-web-development-row").fadeOut('slow', function() {
////			$(".e-commerce-row").fadeIn()
////		});
////	});
////	
////	$(".e-commerce-row").click(function(){
////		h2_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1000, 'linear', function(){
////		});
////		p_tag_commerce.animate({
////			left: '-=2000px'
////		}, 1500, 'linear', function(){
////		});
////		a_tag_commerce.animate({
////			left: '-=3000px',
////		}, 1700, 'linear', function(){
////		});
////		img_div_commerce.animate({
////			left: '+=2000px',
////		}, 2000, 'linear', function(){
////			$(".e-commerce-row").hide();
////			$(".lease-a-team-row").fadeIn();
////		});
////	});
////	
////	$(".lease-a-team-row").click(function(){
////		$(".lease-a-team-row").fadeOut('slow', function() {
////			$(".mobile-services-row").show();
////			h2_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			p_tag_mobile.animate({
////				left: '+=2000px'
////			});
////			a_tag_mobile.animate({
////				left: '+=3000px'
////			});
////			img_div_mobile.animate({
////				left: '-=2500px'
////			});
////			h2_tag_commerce.css('left','+=2000px');
////			p_tag_commerce.css('left','+=2000px');
////			a_tag_commerce.css('left','+=3000px');
////			img_div_commerce.css('left', '-=2000px');
////			h2_tag_responsive.css('left', '2000px');
////			p_tag_responsive.css('left', '-2000px');
////			a_tag_responsive.css('left', '-3000px');
////			img_div_responsive.css('left','2000px');			
////		});
////	});
//	
//	function loop() {
//		h2_tag_mobile.delay(5000).animate({
//			left: '+=2000px'
//		}, 1000, 'easeInBack', function(){
//		});
//		p_tag_mobile.delay(5000).animate({
//			left: '+=2000px'
//		}, 1500, 'easeInBack', function(){
//		});
//		a_tag_mobile.delay(5000).animate({
//			left: '+=3000px',
//		}, 1700, 'easeInBack', function(){
//		});
//                img_effect_div_mobile.delay(5000).animate({
//			top: '+=100px'
//		}, 2000, 'easeInBack', function(){
//		});
//		img_div_mobile.delay(5000).animate({
//			left: '+=2500px',
//		}, 2000, 'easeInBack', function(){
//                        
//			$(".mobile-services-row").hide();
//			$(".responsive-web-development-row").show();
//			h2_tag_responsive.delay(200).animate({
//                                bottom: '-=300px'
//			},2000,'easeOutCirc', function(){
//			});
//			p_tag_responsive.delay(200).animate({
//				bottom: '-=200px'
//			},2000,'easeOutCirc', function(){
//			});
//			a_tag_responsive.delay(200).animate({
//				bottom: '-=300px'
//			},2000,'easeInOutExpo', function(){
//			});
//			img_div_responsive.delay(100).animate({
//				top: '-=200px'
//			},2000,'easeOutCirc', function(){
//			});
//                       
//			$(".responsive-web-development-row").delay(5000).fadeOut("slow", function() {
//                            
//                        $(".e-commerce-row").fadeIn(800, function() {
//                        
//                        img_sky_commerce.animate({
//                                top: '+=114px',
//			},3500,'linear', function(){
//			});
//                        img_snow_commerce.delay(1600).animate({
//                                top: '-=525px',
//			},350,'linear', function(){
//			});
//                         img_snowboard_commerce.delay(400).animate({
//                                top: '-=239px',
////				easing: 'easeOutBounce'
//			},1600,'linear', function(){
//			});
//                        img_ecommerce_commerce.delay(3400).animate({
//                                top: '-=0px',
//			},800,'linear', function(){
//			});
//
//                        h2_tag_commerce.delay(200).animate({
//				right: '+=2000px'
//			}, 1000, 'linear', function(){
//			});
//			p_tag_commerce.delay(200).animate({
//				right: '+=2000px'
//			}, 1500, 'linear', function(){
//			});
//			a_tag_commerce.delay(200).animate({
//				right: '+=3000px',
//			}, 1700, 'linear', function(){
//			});
//			img_div_commerce.delay(4000).animate({
//				right: '+=2000px',
//			}, 2000, 'linear', function(){
//                    
//                    
//                    
//                    
//				$(".e-commerce-row").hide();
//                                $(".our-latest-projects-row").fadeIn();
//                                img_waiter_latest.delay(900).animate({
//                                        top: '-=540px',
//        //				easing: 'easeOutBounce'
//                                },500,'linear', function(){
//                                });
//                                img_tablet_latest.delay(2400).animate({
//                                        top: '+=450px',
//                                },150,'linear', function(){
//                                });
//
//                                h2_tag_latest.delay(200).animate({
//                                        right: '+=2000px'
//                                }, 1000, 'linear', function(){
//                                });
//                                p_tag_latest.delay(200).animate({
//                                        right: '+=2000px'
//                                }, 1500, 'linear', function(){
//                                });
//                                a_tag_latest.delay(200).animate({
//                                        right: '+=3000px',
//                                }, 1700, 'linear', function(){
//                                });
//                                img_div_latest.delay(4000).animate({
//                                        right: '+=2000px',
//                                }, 2000, 'linear', function(){
//                                
//                                
//                                $(".our-latest-projects-row").hide();
//				$(".lease-a-team-row").fadeIn();
//                                
//                                
//				$(".lease-a-team-row").delay(5000).fadeOut('slow', function() {
//                                    $(".mobile-services-row").show();
//                                    h2_tag_mobile.animate({
//                                            left: '-=2000px'
//                                    });
//                                    p_tag_mobile.animate({
//                                            left: '-=2000px'
//                                    });
//                                    a_tag_mobile.animate({
//                                            left: '-=3000px'
//                                    });
//                                    img_effect_div_mobile.animate({
//                                            top: '-=100px'          
//                                    });
//                                    img_div_mobile.animate({
//                                            left: '-=2500px'
//                                    });
//                                    h2_tag_latest.css('right','-=2000px');
//                                    p_tag_latest.css('right','-=2000px');
//                                    a_tag_latest.css('right','-=3000px');
//                                    img_div_latest.css('right', '-=2000px');
//                                    img_waiter_latest.css('top','+=540px');
//                                    img_tablet_latest.css('top', '-=450px');
//                                    
//                                    h2_tag_commerce.css('right','-=2000px');
//                                    p_tag_commerce.css('right','-=2000px');
//                                    a_tag_commerce.css('right','-=3000px');
//                                    img_div_commerce.css('right', '-=2000px');
//                                    img_sky_commerce.css('top', '-=114px');
//                                    img_snowboard_commerce.css('top', '+=239px');
//                                    img_snow_commerce.css('top', '+=525px');
//                                    img_ecommerce_commerce.css('top', '+=0px');
//                                    
//                                    h2_tag_responsive.css('bottom', '+=300px');
//                                    p_tag_responsive.css('bottom', '+=200px');
//                                    a_tag_responsive.css('bottom', '+=300px');
//                                    img_div_responsive.css('top','+=200px');
//                                    loop();
//                            });
//			});
//                        });
//			});
//                        });
//		});
//
//	}
//
//	loop();
//});
           