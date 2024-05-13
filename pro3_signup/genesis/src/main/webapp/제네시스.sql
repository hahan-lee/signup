# 데이터베이스 이름 : genesis;
# 테이블 이름 :user_table;


CREATE DATABASE genesis;

USE genesis;


CREATE TABLE user_table(

	userId VARCHAR(16) NOT NULL,
	userPw VARCHAR(16) NOT NULL,
	userName VARCHAR(30) NOT NULL,
	userHp VARCHAR(13) NOT NULL,
	userAddress VARCHAR(250) NULL,
	userEmail VARCHAR(100) NOT NULL,
	signupDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY (userId)
) ENGINE=MYISAM CHARSET=utf8mb4;

MariaDB [genesis]> DESC user_table;
+-------------+--------------+------+-----+---------------------+-------+
| Field       | Type         | Null | Key | Default             | Extra |
+-------------+--------------+------+-----+---------------------+-------+
| userId      | varchar(16)  | NO   | PRI | NULL                |       |
| userPw      | varchar(16)  | NO   |     | NULL                |       |
| userName    | varchar(30)  | NO   |     | NULL                |       |
| userHp      | varchar(13)  | NO   |     | NULL                |       |
| userAddress | varchar(250) | YES  |     | NULL                |       |
| userEmail   | varchar(100) | NO   |     | NULL                |       |
| signupDate  | timestamp    | NO   |     | current_timestamp() |       |
+-------------+--------------+------+-----+---------------------+-------+
7 rows in set (0.008 sec)


SELECT * FROM user_table;

INSERT INTO user_table(userId,userPw,userName,userHp,userAddress,userEmail) 
VALUES
(henee1,123123,이하니,010-1111-1111,서울 특별시,hanee1@naver.com);
(henee2,123123,이하니,010-1111-1111,서울 특별시,hanee2@naver.com),
(henee3,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee4,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee5,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee6,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee7,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee8,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee9,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee10,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com),
(henee11,123123,이하니,010-1111-1111,서울 특별시,hanee3@naver.com);


