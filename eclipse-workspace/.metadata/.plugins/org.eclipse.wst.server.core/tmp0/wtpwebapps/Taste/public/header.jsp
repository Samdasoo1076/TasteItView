<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

  	<style>
  	header {
            background-color: #ffffff;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
 
        .logo {
            /* 로고 스타일 */
            font-size: 40px;
        }
        
        .logo a {
            text-decoration: none;
            color: rgb(0, 0, 0);
        }
 
        .navigation {
            /* 내비게이션 스타일 */
            display: flex;
            gap: 20px;
        }
 
        .navigation input {
           width: 700px;
           padding: 20px;
           border-radius: 50px;
           border-color: grey;
        }
 
        .login-signup {
            /* 로그인 및 회원가입 스타일 */
            font-size: 16px;
        }
  	</style>
</head>
<body>
    <header>
        <div class="logo">
            <a href="index.jsp"><img src="">로고</a></div>
        <nav class="navigation">
        <input type="text" placeholder="맛집을 검색해보세요!">  
        <!--<button><img src=""></button> -->
        </nav>
        
        
    </header>
</body>
</html>