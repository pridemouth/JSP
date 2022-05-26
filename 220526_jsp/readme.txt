<220526 jsp>

취업 시, 회사에서 jsp 능력을 많이 요구할 것.
	
	clear fix 기법
	display : inline, block, inline-block;
	
	선택자의 우선순위는, 범위가 좁은 것일수록 높음.
	
	ol li	: ol 내부에 속한 li 태그
	ol > li : ol 의 자식 노드인 li만 (손자 노드 제외)
	
	div:before
	div:after
	div:active
	div:hover
	
	div#id
	div.class
	
	브라우저 상에서 shift + ctrl + c로 임시로 내용을 편집해볼 수 있음.
	
	table 태그는 브라우저마다 해석하는 방식도 다르고,
	브라우저에서 그리는 속도도 div보다 월등히 느리기 때문에
	div로 작성하는 것이 바람직함.
	+ table 태그의 caption은 table border 바깥쪽으로 위치가 잡혀서 다루기 힘듬.
	* 이력서 만들었던 것 table 태그 말고 div태그로 다시 만들어 볼 것.