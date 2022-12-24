DROP SCHEMA SPRING;
CREATE SCHEMA SPRING;
USE SPRING;

------------------------------------------------
--------------- MEMBER 관련 테이블 ------------------
------------------------------------------------

CREATE TABLE SPRING.MEMBER (
    NO 		 INT  PRIMARY KEY AUTO_INCREMENT,
    ID 		 VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL,
    ROLE 	 VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME 	 VARCHAR(15) NOT NULL,
    PHONE 	 VARCHAR(13),
    EMAIL 	 VARCHAR(100),
    ADDRESS  VARCHAR(100),
    HOBBY 	 VARCHAR(100),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO MEMBER (
    NO, 
    ID, 
    PASSWORD, 
    ROLE,
    NAME, 
    PHONE, 
    EMAIL, 
    ADDRESS, 
    HOBBY, 
    STATUS, 
    ENROLL_DATE, 
    MODIFY_DATE
) VALUES(
    0, 
    'admin', 
    '1234', 
    'ROLE_ADMIN', 
    '관리자', 
    '010-1234-4341', 
    'admin@test.com', 
    '서울시 강남구 역삼동',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

COMMIT;

SELECT * FROM SPRING.MEMBER;

-------------------------------------------------
--------------- Board 관련 테이블 ------------------
-------------------------------------------------


CREATE TABLE SPRING.BOARD (	
    NO INT AUTO_INCREMENT,
    WRITER_NO INT, 
	TITLE VARCHAR(1000), 
	CONTENT VARCHAR(2000), 
	TYPE VARCHAR(100), 
	ORIGINAL_FILENAME VARCHAR(100), 
	RENAMED_FILENAME VARCHAR(100), 
	READCOUNT INT DEFAULT 0, 
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_BOARD_NO PRIMARY KEY(NO),
    CONSTRAINT FK_BOARD_WRITER FOREIGN KEY(WRITER_NO) REFERENCES MEMBER(NO) ON DELETE SET NULL
);


INSERT INTO BOARD VALUES(0, 1, '[판매] 애플 노트북 팔아요.',  '노트북 맥북 최신입니다. 게임하시면 안됩니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 삼성 노트북 팔아요.',  '삼성 노트북 팝니다. 터치 됩니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 아이폰 팔아요.',  '아이폰13 팝니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 갤럭시 팔아요.',  '갤럭시 플립3 팝니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 애플 노트북 삽니다.',  '맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 삼성 노트북 삽니다.',  '삼성 노트북 삽니다. 아이폰 개발하려 삽니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 아이폰 삽니다.',  '아이폰3사요. 30만원에 네고합니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 갤럭시 삽니다.',  '갤럭시 삽니다. 아무 기종이나 상관없어요. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 애플 노트북 팔아요.',  '노트북 맥북 최신입니다. 게임하시면 안됩니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 삼성 노트북 팔아요.',  '삼성 노트북 팝니다. 터치 됩니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 아이폰 팔아요.',  '아이폰13 팝니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 갤럭시 팔아요.',  '갤럭시 플립3 팝니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 애플 노트북 삽니다.',  '맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 삼성 노트북 삽니다.',  '삼성 노트북 삽니다. 아이폰 개발하려 삽니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 아이폰 삽니다.',  '아이폰3사요. 30만원에 네고합니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 갤럭시 삽니다.',  '갤럭시 삽니다. 아무 기종이나 상관없어요. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 애플 노트북 팔아요.',  '노트북 맥북 최신입니다. 게임하시면 안됩니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 삼성 노트북 팔아요.',  '삼성 노트북 팝니다. 터치 됩니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 아이폰 팔아요.',  '아이폰13 팝니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[판매] 갤럭시 팔아요.',  '갤럭시 플립3 팝니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 애플 노트북 삽니다.',  '맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 삼성 노트북 삽니다.',  '삼성 노트북 삽니다. 아이폰 개발하려 삽니다.', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 아이폰 삽니다.',  '아이폰3사요. 30만원에 네고합니다. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO BOARD VALUES(0, 1, '[구매] 갤럭시 삽니다.',  '갤럭시 삽니다. 아무 기종이나 상관없어요. ', 'B1', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);



COMMIT;
SELECT * FROM BOARD;

------------------------------------------------------------------
------------------------- REPLY 관련 테이블 -------------------------
------------------------------------------------------------------


CREATE TABLE SPRING.REPLY(
  NO INT PRIMARY KEY AUTO_INCREMENT,
  BOARD_NO INT,
  WRITER_NO INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (BOARD_NO) REFERENCES BOARD(NO),
  FOREIGN KEY (WRITER_NO) REFERENCES MEMBER(NO)
);



INSERT INTO REPLY VALUES(0, 1, 1, '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(0, 1, 1, '반갑습니다.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(0, 2, 1, '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(0, 2, 1, '반갑습니다.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(0, 3, 1, '안녕하세요.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(0, 3, 1, '반갑습니다.', DEFAULT, DEFAULT, DEFAULT);


COMMIT;

SELECT * FROM REPLY;

----------------------------------- DDL 끝-------------------------------------------

-- MEMBER 

-- 멤버 조회
-- SELECT * FROM MEMBER WHERE ID=? AND STATUS='Y'

-- 멤버 추가
-- INSERT INTO MEMBER VALUES(0,?,?,DEFAULT,?,?,?,?,?,DEFAULT,DEFAULT,DEFAULT)

-- 멤버 수정               
-- UPDATE MEMBER SET NAME=?,PHONE=?,EMAIL=?,ADDRESS=?,HOBBY=?,MODIFY_DATE=CURRENT_TIMESTAMP, WHERE NO=?

-- 멤버 패스워드 변경
-- UPDATE MEMBER SET PASSWORD=? WHERE NO=?

-- 멤버 삭제
-- UPDATE MEMBER SET STATUS=? WHERE NO=?


-- BOARD DML

-- 총 게시글 갯수
-- SELECT COUNT(*) FROM BOARD WHERE STATUS='Y'

-- 조회수 증가
-- UPDATE BOARD SET READCOUNT=? WHERE NO=?

-- 게시글 작성
-- INSERT INTO BOARD VALUES(0,?,?,?,?,?,DEFAULT,DEFAULT,DEFAULT,DEFAULT)

-- 게시글 수정
-- UPDATE BOARD SET TITLE=?,CONTENT=?,ORIGINAL_FILENAME=?,RENAMED_FILENAME=?,MODIFY_DATE=CURRENT_TIMESTAMP, WHERE NO=?

-- 게시글 삭제
-- UPDATE BOARD SET STATUS=? WHERE NO=?

-- 상세 조회
/*
SELECT  B.NO, B.TITLE, M.ID, B.READCOUNT, B.ORIGINAL_FILENAME, B.RENAMED_FILENAME, B.CONTENT, B.CREATE_DATE, B.MODIFY_DATE
FROM BOARD B
JOIN MEMBER M ON(B.WRITER_NO = M.NO)
WHERE B.STATUS = 'Y' AND B.NO=1
*/


-- 목록 조회(페이징) 쿼리
/*
SELECT  B.NO, B.TITLE, M.ID, B.CREATE_DATE, B.ORIGINAL_FILENAME, B.READCOUNT, B.STATUS
FROM BOARD B JOIN MEMBER M ON(B.WRITER_NO = M.NO) 
WHERE B.STATUS = 'Y' 
ORDER BY B.NO DESC LIMIT 10 OFFSET 0;
*/
  


-- insert query
-- INSERT INTO REPLY VALUES(0, ?, ?, ?, DEFAULT, DEFAULT, DEFAULT)


-- 한 게시판에 해당하는 댓글 리스트 조회용 쿼리문
/*
SELECT R.NO, R.BOARD_NO, R.CONTENT, M.ID, R.CREATE_DATE, R.MODIFY_DATE
FROM REPLY R
JOIN MEMBER M ON(R.WRITER_NO = M.NO)
WHERE R.STATUS='Y' AND BOARD_NO= ? 
ORDER BY R.NO DESC;
*/


/*
select * FROM REPLY;
DELETE FROM REPLY WHERE NO=5
*/


-- 검색 + 쿼리문
/*
SELECT  B.NO, B.TITLE, M.ID, B.CREATE_DATE, B.ORIGINAL_FILENAME, B.READCOUNT, B.STATUS
FROM BOARD B JOIN MEMBER M ON(B.WRITER_NO = M.NO) 
WHERE 1 = 1 
AND B.STATUS = 'Y'
AND M.ID LIKE '%admin%' 
AND B.TITLE LIKE '%구매%' 
AND B.CONTENT LIKE '%아이폰%' 
ORDER BY B.NO DESC LIMIT ? OFFSET ?;
*/

/*
SELECT  COUNT(*)
FROM BOARD B
JOIN MEMBER M ON(B.WRITER_NO = M.NO)
WHERE 1=1
    AND B.STATUS = 'Y'
--	AND M.ID LIKE '%admin%' 
--	AND B.TITLE LIKE '%구매%' 
	AND B.CONTENT LIKE '%아이폰%' 
*/