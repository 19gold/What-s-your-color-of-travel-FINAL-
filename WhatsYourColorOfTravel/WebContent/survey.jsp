
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="check.css" rel="stylesheet" type="text/css">
<title>What's your color of travel</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	window.selectedOptions = {};//한번에 값을 넘기는 방법

	$(function() {
		$("html, body").animate({
			scrollTop : 0
		}, "slow");
	});

	$(document).ready(function() {
		$('#btn1').click(function() {
			var offset = $('#div1').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document).ready(function() {
		$('#submit1').click(function() {
			var offset = $('#div2').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document).ready(function() {
		$('#submit2').click(function() {
			var offset = $('#div3').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document).ready(function() {
		$('#submit3').click(function() {
			var offset = $('#div4').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document).ready(function() {
		$('#submit4').click(function() {
			var offset = $('#div5').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document).ready(function() {
		$('#submit5').click(function() {
			var offset = $('#div6').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document).ready(function() {
		$('#submit6').click(function() {
			var offset = $('#div7').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 1000);
		});
	});

	$(document)
			.ready(
					function() {
						var country = [ "홋카이도", "혼슈", "시코쿠", "규슈", "오키나와" ];

						var people = [ "1", "2", "3", "4", "5명 이상" ];
						var mood = [ "조용한_분위기", "시끄러운_분위기", "느긋한_분위기",
								"독특한_분위기", "독특한_분위기" ];
						var nature = [ "산", "바다", "시골", "도시", "눈" ];
						var activity = [ "자연", "역사", "문화체험", "먹거리", "액티비티" ];
						var character = [ "활발한_성격", "느긋한_성격", "급한_성격",
								"온화한_성격", "게으른_성격" ];
						var tf = [ false, false, false, false, false, false ];

						$(".select_country").click(function(e) {
							selectedOptions['continent'] = e.target.value;
							// var indexCountry=country.indexOf(e.target.value);
							tf[0] = 'continent' in selectedOptions;

						});
						$(".people").click(function(e) {
							selectedOptions['people'] = e.target.value;
							// var indexCountry=country.indexOf(e.target.value);
							tf[1] = 'people' in selectedOptions;

						});
						$(".mood").click(function(e) {
							selectedOptions['mood'] = e.target.value;
							//var indexMood=mood.indexOf(e.target.value);
							tf[2] = 'mood' in selectedOptions;

						});
						$(".nature").click(function(e) {
							selectedOptions['nature'] = e.target.value;
							//var indexNature=nature.indexOf(e.target.value);
							tf[3] = 'nature' in selectedOptions;

						});
						$(".activity").click(function(e) {
							selectedOptions['activity'] = e.target.value;
							//var indexActivity=activity.indexOf(e.target.value);
							tf[4] = 'activity' in selectedOptions;

						});
						$(".character").click(function(e) {
							selectedOptions['character'] = e.target.value;
							//var indexCharacter=character.indexOf(e.target.value);
							tf[5] = 'character' in selectedOptions;

						});
						var goto1 = [ "div1", "div2", "div3", "div4", "div5",
								"div6" ];
						$("#submit7")
								.click(
										function(e) {
											var i = 0;
											var cnt = 0;
											for (i; i < 6; i++) {
												if (tf[i] != true) {
													alert((i + 1)
															+ "번 항목이 선택되지 않았습니다");
													/*location.href="survey.jsp";*/
													var offset = $(
															'#' + goto1[i])
															.offset();
													console.log("offset"
															+ offset);
													$('html').animate({
														scrollTop : offset.top
													}, 1000);
													break;
												} else {
													cnt += 1;
												}
											}
											if (cnt == 6) {
												location.href = "result.jsp?result="
														+ country
																.indexOf(selectedOptions['continent'])
														+ ","
														+ people
																.indexOf(selectedOptions['people'])
														+ ","
														+ mood
																.indexOf(selectedOptions['mood'])
														+ ","
														+ nature
																.indexOf(selectedOptions['nature'])
														+ ","
														+ activity
																.indexOf(selectedOptions['activity'])
														+ ","
														+ character
																.indexOf(selectedOptions['character']);

											}
										});
					});
</script>
</head>
<body style="overflow-x: hidden;">
	<button id="btn1">Go to survey</button>
	<!-- <div class="survey1" id="survey1"> -->
	<div id="div1" class="absolute1">
		<div class="q1 qq">
			<span class="span"> <img src="img/paint_szsz.png"
				class="paint"><br>STEP.1
			</span><br> Select a continent to travel to
		</div>
		<br> <input type="button" class="button select_country"
			name="japan1" value="홋카이도" onclick="change1(this)"><br /> <input
			type="button" class="button select_country" name="japan2" value="혼슈"
			onclick="change1(this)"><br /> <input type="button"
			class="button select_country" name="japan3" value="시코쿠"
			onclick="change1(this)"><br /> <input type="button"
			class="button select_country" name="japan4" value="규슈"
			onclick="change1(this)"><br /> <input type="button"
			class="button select_country" name="japan5" value="오키나와"
			onclick="change1(this)"><br /> <input type="button"
			id="submit1" class="submit1" value="next" width="100">

	</div>
	<div id="div2" class="absolute2">
		<div class="q2 qq">
			<span class="span"> <img src="img/paint_szsz.png"
				class="paint"><br>STEP.2
			</span><br> Enter the country to travel to
		</div>
		<br> <input type="button" class="button people" name="1"
			value="1" onclick="change1(this)"><br> <input
			type="button" class="button people" name="2" value="2"
			onclick="change1(this)"><br> <input type="button"
			class="button people" name="3" value="3" onclick="change1(this)"><br>
		<input type="button" class="button people" name="4" value="4"
			onclick="change1(this)"><br> <input type="button"
			class="button people" name="5" value="5명 이상" onclick="change1(this)"><br>
		<input type="button" id="submit2" class="submit2" value="next"
			width="100">
	</div>
	<div id="div3" class="absolute3">
		<div class="q3 qq">
			<span class="span"> <img src="img/paint_szsz.png"
				class="paint"><br>STEP.3
			</span><br>Choose the preferred atmosphere<br> of the place to
			travel

		</div>
		<br> <input type="button" class="button mood" name="slient"
			value="조용한_분위기" onclick="change1(this)"><br> <input
			type="button" class="button mood" name="noisy" value="시끄러운_분위기"
			onclick="change1(this)"><br> <input type="button"
			class="button mood" name="relaxed" value="느긋한_분위기"
			onclick="change1(this)"><br> <input type="button"
			class="button mood" name="unique" value="독특한_분위기"
			onclick="change1(this)"><br> <input type="button"
			class="button mood" name="EXOTIC" value="이국적인_분위기"
			onclick="change1(this)"><br> <input type="button"
			id="submit3" class="submit3" value="next" width="100">
	</div>

	<div id="div4" class="absolute4">
		<div class="q4  qq">
			<span class="span"> <img src="img/paint_szsz.png"
				class="paint"><br>STEP.4
			</span><br>Select the number of people to travel with
		</div>
		<br> <input type="button" class="button nature" name="mountain"
			value="산" onclick="change1(this)"><br> <input
			type="button" class="button nature" name="beach" value="바다"
			onclick="change1(this)"><br> <input type="button"
			class="button nature" name="country" value="시골"
			onclick="change1(this)"><br> <input type="button"
			class="button nature" name="city" value="도시" onclick="change1(this)"><br>
		<input type="button" class="button nature" name="snow" value="눈"
			onclick="change1(this)"><br> <input type="button"
			id="submit4" class="submit4" value="next" width="100">
	</div>
	<div id="div5" class="absolute5">
		<div class="q5 q6 qq">
			<span class="span"> <img src="img/paint_szszr.png"
				class="paint"><br>STEP.5
			</span><br>Select a continent to travel to
		</div>
		<br> <input type="button" class="button activity" name="nature"
			value="자연" onclick="change1(this)"><br /> <input
			type="button" class="button activity" name="history" value="역사"
			onclick="change1(this)"><br /> <input type="button"
			class="button activity" name="culture" value="문화체험"
			onclick="change1(this)"><br /> <input type="button"
			class="button activity" name="food" value="먹거리"
			onclick="change1(this)"><br /> <input type="button"
			class="button activity" name="activities" value="액티비티"
			onclick="change1(this)"><br /> <input type="button"
			id="submit5" class="submit5" value="next" width="100">
	</div>
	<div id="div6" class="absolute6">
		<div class="q6 qq">
			<span class="span"> <img src="img/paint_szszr.png"
				class="paint"><br>STEP.6
			</span><br>What is your personality like?
		</div>
		<br> <input type="button" class="button character"
			name="activitely" value="활발한_성격" onclick="change1(this)"><br />
		<input type="button" class="button character" name="relax"
			value="느긋한_성격" onclick="change1(this)" /><br /> <input
			type="button" class="button character" name="hottemper" value="급한_성격"
			onclick="change1(this)" /><br /> <input type="button"
			class="button character" name="gentle" value="온화한_성격"
			onclick="change1(this)" /><br /> <input type="button"
			class="button character" name="lazy" value="게으른_성격"
			onclick="change1(this)" /><br /> <input type="button" id="submit6"
			class="submit6" value="next" width="100" />
	</div>
	<div id="div7" class="absolute7">
		<img src="img/paint_szszr.png" class="paintbtm"><br> <br>
		<span class="thx">THANK YOU</span><BR> <br> <br>
		<button type="submit" id="submit7" class="submit7">Result</button>
	</div>
	<script>
		function change1(obj) {
			obj.style.color = '#d92c45';
		}
	</script>

</body>
</html>