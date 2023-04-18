#DB 생성
DROP DATABASE IF EXISTS SB_AM_04;
CREATE DATABASE SB_AM_04;
USE SB_AM_04;

# 게시물 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# 게시물 테스트데이터 생성
INSERT INTO article 
SET regDate = NOW(),
updateDate = NOW(),
title = '제목 1',
`body` = '내용 1';

INSERT INTO article 
SET regDate = NOW(),
updateDate = NOW(),
title = '제목 2',
`body` = '내용 2';

INSERT INTO article 
SET regDate = NOW(),
updateDate = NOW(),
title = '제목 3',
`body` = '내용 3';


# 회원테이블 생성

CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
   loginId CHAR(20) NOT NULL,
   loginPw CHAR(60) NOT NULL,
   `authLevel` SMALLINT(2) UNSIGNED DEFAULT 3 COMMENT '권한레벨 (3=일반,7=관리자)',
   `name` CHAR(20) NOT NULL,
   nickName CHAR(20) NOT NULL,
   cellphoneNum CHAR(20) NOT NULL,
   email CHAR(50) NOT NULL,
   delStatus TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '탈퇴 여부(0=탈퇴 전, 1=탈퇴 후)',
   delDate DATETIME COMMENT '탈퇴 날짜'
);



# 회원 테스트데이터 생성(관리자)
INSERT INTO `member` 
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
`authLevel` = 7,
`name` = '관리자',
nickName = '관리자',
cellphoneNum = '01012341234',
email = 'aaaaa@gmail.com';

# 회원 테스트데이터 생성(일반)

INSERT INTO `member` 
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '회원1',
nickName = '회원1',
cellphoneNum = '01043214321',
email = 'bbbb@gmail.com';



INSERT INTO `member` 
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '회원2',
nickName = '회원2',
cellphoneNum = '01067896789',
email = 'cccc@gmail.com';



# 게시물 테이블 구조변경 - memberId 추가
ALTER TABLE article ADD COLUMN memberId INT(10) UNSIGNED NOT NULL AFTER updateDate;


UPDATE article
SET memberId = 2
WHERE id IN(1,2);



UPDATE article
SET memberId = 3
WHERE id = 3;

#######################################################


DESC `member`
SELECT * FROM article;
SELECT * FROM `member`;

SELECT LAST_INSERT_ID();





