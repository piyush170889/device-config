$(document)
		.ready(
				function() {
					var swidth = (screen.width) / 1920;
					var sheight = (screen.height) / 1080;

					// here we are dividing minimum factor with actual width so
					// we will get exact multiplier
					
					fwidth = (Math.min(swidth, sheight)) / swidth;
					fheight = (Math.min(swidth, sheight)) / sheight;
					
					
					homechfnameh = ((fheight * (screen.height)) - ((fheight
							* (screen.height) * (0.625 / 100))) * 2)
							* (10.37037037 / 100);
					homechfnamehgap = ((fheight * (screen.height)) - ((fheight
							* (screen.height) * (0.625 / 100))) * 2)
							* (1.851851852 / 100);
					// / 10.37037037 is actual percentage according to given
					// height from client
					// / 1.851851852 is same only width percentage.
					// and we are claculating height and width of box according
					// to both

					
					$('body').css('width', (fwidth * 100) - 1.25 + '%');
					$('body').css('height', (fheight * 100) - 2.037037037 + '%');
					$('body').css('left',
							(((100 - (fwidth * 100)) / 2) + 0.625) + '%');
					$('body').css('right',
							(((100 - (fwidth * 100)) / 2) + 0.625) + '%');
					$('body').css('top', '1.018518519%');
					$('body').css('bottom', '1.018518519%');
					
					fwidth=(fwidth-((((100 - (fwidth * 100)) / 2) + 0.625))/100)*screen.width;
					fheight=(fheight-(1.018518519/100))*screen.height;
					
					
					
					basefontsize= $("body").css('font-size');
					basefontsize=parseInt(basefontsize.replace("px",""));
					
					
					
					
					
					
				});

