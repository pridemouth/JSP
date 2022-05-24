
jsp를 들어가려면 db를 다뤄봐야 함.
6월에 jsp 본격적으로 들어감.
현재까지 배운 내용 중에는 DOM만 중점적으로 알아두면 됨.
jquery 배울 때 더 자세하게 배움.

canvas를 학습한 이후 DOM 다시 공부할 것.

수요일에는 그림을 object로 추출할 것.

	object.getElementsByTagName();
	button.addEventListender("action", function(){});
	
	Canvas.getContext("2d");
	
	Context.fillStyle = "color";
	Context.fillRect(originX, originY, width, height);
	
	Context.strokeStyle = "color";
	Context.strokeRect(originX, originY, width, height);
	
	Context.clearRect(originX, originY, width, height);
	
	Context.beginPath();
	Context.moveTo();
	Context.lineTo();
	Context.stroke();
	Context.closePath();
	//	beginPath(), closePath()는 한 쌍.
	
	Context.rect();
	Context.fillStyle = "#color";
	Context.fill();
	
	ctx.arc(originX, originY, radius, startAngle, endAngle, reverse_clockwise);
	//	ctx.arc(100, 100, 50, 0, Math.PI * 2, false);	//	360
	//	ctx.arc(100, 100, 50, 0, Math.PI, false);		//	180
	//	ctx.arc(100, 100, 50, 0, Math.PI / 2, false);	//	90
	
	rgba(Red, Green, Blue, Alpha)