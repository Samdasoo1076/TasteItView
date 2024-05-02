<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .nav {
	background-color:grey;
	left:0;
  width: 100%;
	height: 59px;
}
.nav_button {
	/* Variables */
	--button_radius:0.75em;
	--button_color:#e8e8e8;
	--button_outline_color:#000000;
	font-size:17px;
	font-weight:bold;
	border:none;
	border-radius:var(--button_radius);
	background:var(--button_outline_color);
}
.button_top {
	display:block;
	box-sizing:border-box;
	border:2px solid var(--button_outline_color);
	border-radius:var(--button_radius);
	padding:0.75em 1.5em;
	background:var(--button_color);
	color:var(--button_outline_color);
	transform:translateY(-0.2em);
	transition: transform 0.1s ease;
}
.nav_button:hover .button_top {
	/* Pull the button upwards when hovered */
	transform:translateY(-0.33em);
}
.nav_button:active .button_top {
	/* Push the button downwards when pressed */
	transform:translateY(0);
}
    </style>
</head>
<body>
    <nav class="nav">
          <button class="nav_button" onclick="location.href=''" >
            <span class="button_top"> 가게 질문
            </span>
          </button>
          <button class="nav_button" onclick="location.href=''">
            <span class="button_top"> 리뷰작성
            </span>
          </button>
          <button class="nav_button" onclick="location.href=''">
            <span class="button_top"> 메뉴선택 가이드
            </span>
          </button>
          <button class="nav_button" onclick="location.href=''">
            <span class="button_top"> &
            </span>
          </button>
    </nav>
</body>
</html>