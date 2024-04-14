// Script/query.js

const mysql = require('mysql');

// MySQL 연결 정보
const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '1234',
  database: 'Main'
};

// MySQL 연결
const connection = mysql.createConnection(dbConfig);

// MySQL 연결 테스트
connection.connect((err) => {
  if (err) {
    console.error('Mysql 에러 : ' + err.stack);
    return;
  }
  console.log('Connected to MySQL as id : ' + connection.threadId);
});

// 사용자 정보 삽입
function insertUser(id, password, name, age, callback) {
  connection.query(
    'INSERT INTO NewTable (Id, password, name, age) VALUES (?, ?, ?, ?)',
    [id, password, name, age],
    (error, results, fields) => {
      if (error) {
        console.error('인터레스팅 DB : ', error);
        callback(error, null);
        return;
      }
      console.log('사용자 정보가 데이터베이스에 저장되었습니다.');
      callback(null, results);
    }
  );
}

module.exports = {
  insertUser
};