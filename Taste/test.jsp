<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header 예시</title>
    <style>
        /* CSS 스타일링 */
        header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
 
        .logo {
            /* 로고 스타일 */
            font-size: 24px;
        }
 
        .navigation {
            /* 내비게이션 스타일 */
            display: flex;
            gap: 20px;
        }
 
        .navigation a {
            color: white;
            text-decoration: none;
        }
 
        .login-signup {
            /* 로그인 및 회원가입 스타일 */
            font-size: 16px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">로고</div>
        <nav class="navigation">
            <a href="#">메뉴1</a>
            <a href="#">메뉴2</a>
            <a href="#">메뉴3</a>
        </nav>
        <div class="login-signup">
            <a href="#">로그인</a> 
            <a href="#">회원가입</a>
        </div>
    </header>
</body>
</html>