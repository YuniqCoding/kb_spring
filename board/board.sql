-- tbl_board 테이블이 이미 존재하면 삭제합니다.
DROP TABLE IF EXISTS tbl_board;

-- tbl_board 테이블을 생성합니다.
CREATE TABLE tbl_board (
    no INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content TEXT,
    writer VARCHAR(50) NOT NULL,
    reg_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- tbl_board 테이블에 데이터를 삽입합니다.
INSERT INTO tbl_board(title, content, writer)
VALUES
    ('테스트 제목1', '테스트 내용1', 'user00'),
    ('테스트 제목2', '테스트 내용2', 'user00'),
    ('테스트 제목3', '테스트 내용3', 'user00'),
    ('테스트 제목4', '테스트 내용4', 'user00'),
    ('테스트 제목5', '테스트 내용5', 'user00');

-- tbl_board 테이블의 모든 데이터를 선택합니다.
SELECT * FROM tbl_board;