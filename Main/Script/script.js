// Script/app.js

const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const { insertUser } = require('./query');

const app = express();
const port = 3000;

// Body parser 설정
app.use(bodyParser.urlencoded({ extended: true }));

// 정적 파일 미들웨어 추가
app.use(express.static(path.join(__dirname, '..', 'Main')));

// 회원가입 페이지 라우트
app.get('/signup', (req, res) => {
  res.sendFile(path.join(__dirname, '..', 'Main', 'signup.html'));
});

// 사용자 회원가입 처리
app.post('/signup', (req, res) => {
  const { id, password, name, age } = req.body;

  // 사용자 정보 삽입
  insertUser(id, password, name, age, (error, results) => {
    if (error) {
      res.status(500).send('회원가입 중 오류가 발생했습니다.');
      return;
    }
    res.send('회원가입이 완료되었습니다.');
  });
});

// 서버 시작
app.listen(port, () => {
  console.log(`서버가 http://localhost:${port} 에서 실행 중입니다.`);
});