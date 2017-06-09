
--시퀀스 사용 예제
  insert into board(no,subject,content) values(board_no.nextval, '자바' , '재밌다!!');

-- MEMBER TABLE (회원정보)
CREATE TABLE MEMBER
(
	EMAIL                 VARCHAR2(50)  NOT NULL PRIMARY KEY ,  --ID
	PASSWORD              VARCHAR2(50)  NOT NULL , -- 비밀번호
	NICKNAME              VARCHAR2(50)  NOT NULL , -- 별명
	PHONE_NUMBER          VARCHAR2(50)  NULL , -- 핸드폰번호
	PROFILE_IMG           VARCHAR2(50)  NULL , -- 프로필이미지
	BACK_IMG              VARCHAR2(50)  NULL , -- 배경이미지
	SELF_CONTENT          VARCHAR2(50)  NULL   -- 간단한 자기소개 글
);


-- FRIEND TABLE (친구목록)
CREATE TABLE FRIEND
(
  FRIEND_NO             INTEGER  NOT NULL PRIMARY KEY , -- 친구테이블 번호
  EMAIL                 VARCHAR2(50)  NOT NULL  REFERENCES MEMBER(EMAIL),  -- 본인ID(왜래키)
	F_EMAIL               VARCHAR2(50)  NOT NULL  -- 친구 ID
	
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence FRIEND_NO nocache;



--메일 시스템
CREATE TABLE NOTE
(
	NOTE_NO               INTEGER  NOT NULL PRIMARY KEY, -- 메일시스템 번호
	SEND_EMAIL           VARCHAR2(50)  NULL , -- 보낸사람(ID)
	TITLE                 VARCHAR2(50)  NULL , -- 메일제목
	CONTENT               VARCHAR2(500)  NULL , -- 메일내용
	D_DAY                  VARCHAR2(50)  NULL , -- SYSDATE
	FLAG                  INTEGER  DEFAULT 0 ,  -- 0 메일없음 , 1 메일옴!
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL) -- 수신자ID(왜래키)
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence NOTE_NO nocache;

--나만믿고따라와 
CREATE TABLE FOLLOW_ME
(
	TRAVEL_NO             INTEGER  NOT NULL PRIMARY KEY, -- 나믿따 번호
	TITLE                 VARCHAR2(50)  NULL , -- 나믿따 글제목
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- 나믿따 등록자ID (왜래키)
	THEMA                 VARCHAR2(50)  NULL , -- 여행테마 (여행전/ 여행후 등등)
	TRAVEL_START_DAY      VARCHAR2(50)  NULL , -- 시작날짜
	TRAVEL_END_DAY        VARCHAR2(50)  NULL , -- 종료날짜
	BRIEF_STORY           VARCHAR2(50)  NULL , -- 짧은 소개글
	FAVOR                 INTEGER  NULL , -- 좋아요
	TRAVEL_COVER_IMG      VARCHAR2(50)  NULL   -- 배경이미지
);
SELECT * FROM FOLLOW_ME;
 --글번호 생성을 위한 시쿼스 생성
  create sequence FOLLOW_ME_NO nocache; 

--나만믿고따라와 일정관리
CREATE TABLE FOLLOW_ME_ITINERARY
(
	ITINERARY_NO          INTEGER  NOT NULL PRIMARY KEY, -- 나믿따 일정관리 번호
	D_DAY                 VARCHAR2(50)  NULL , -- 날짜(1DAY , 2DAY ... )
	AREA                  VARCHAR2(50)  NULL , -- 지역구분
	MONEY                 INTEGER  DEFAULT 0 , -- 총금액
	END_TIME              VARCHAR2(50)  NULL , -- 종료시간
	START_TIME            VARCHAR2(50)  NULL , -- 시작시간
	SUBSTANCE             VARCHAR2(500)  NULL , -- 글내용
	IMG                   VARCHAR2(50)  NULL , -- 사진출력
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES FOLLOW_ME(TRAVEL_NO) -- 나믿따 번호 (왜래키)
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence FOLLOW_ME_ITINERARY_NO nocache;

--나만믿고따라와 체크리스트
CREATE TABLE FOLLOW_ME_CHECK_LIST
(
	CHECKLIST_NO          INTEGER  NOT NULL PRIMARY KEY , -- 나믿따 체크리스트 번호
  TRAVEL_NO             INTEGER  NOT NULL REFERENCES FOLLOW_ME(TRAVEL_NO), -- 여행번호 (왜래키)
	CHECK_CATAGORY        VARCHAR2(50)  NULL , -- 카테고리
	ITEMS                 VARCHAR2(500)  NULL  -- 아이템스
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence FOLLOW_ME_CHECK_LIST_NO nocache;


--나만믿고따라와 댓글
CREATE TABLE FOLLOW_ME_COMMENT
(
	COMMENT_NO            INTEGER  NOT NULL PRIMARY KEY, -- 나믿따 댓글 번호
  TRAVEL_NO             INTEGER  NOT NULL REFERENCES FOLLOW_ME(TRAVEL_NO), -- 나믿따 여행번호(왜래키)
	WRITER_EMAIL          VARCHAR2(50)  NULL , -- 작성자 ID
	CONTENT               VARCHAR2(500)  NULL -- 내용
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence FOLLOW_ME_COMMENT_NO nocache;
  
--자유게시판
CREATE TABLE FREE_BOARD
(
	BOARD_NO               INTEGER  NOT NULL PRIMARY KEY, -- 자유게시판 번호
  EMAIL                  VARCHAR2(50)  NOT NULL  REFERENCES MEMBER(EMAIL), -- 작성자 ID(왜래키)
	TITLE                  VARCHAR2(50)  NULL ,  -- 글제목
	FAVOR                  INTEGER  NULL ,  -- 좋아용
	CONTENT                VARCHAR2(50)  NULL , -- 글내용
	D_DAY                  VARCHAR2(50)  NULL , -- SYSDATE
	HITS                  VARCHAR2(500)  NULL  -- 조회수
);
DROP TABLE FREE_BOARD;
 --글번호 생성을 위한 시쿼스 생성
  create sequence FREE_BOARD_no nocache;

--자유게시판 댓글
CREATE TABLE FREE_BOARD_COMMENT
(
 COMMNET_NO            INTEGER  NOT NULL , -- 자유게시판 댓글번호
	CONTENT             VARCHAR2(500)  NULL , -- 글내용
	BOARD_NO             INTEGER  NOT NULL REFERENCES FREE_BOARD(BOARD_NO), -- 자유게시판 번호 (왜래키)
	EMAIL                VARCHAR2(50)  NULL , -- 작성자 ID
	D_DAY                VARCHAR2(50)  NULL  -- SYSDATE
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence FREE_BOARD_COMMENT_NO nocache;
  select * from FREE_BOARD_COMMENT;
  
--QA게시판
CREATE TABLE QA_BOARD
(
	BOARD_NO               INTEGER  NOT NULL PRIMARY KEY, -- QA게시판 번호
	TITLE                  VARCHAR2(50)  NULL , -- 글제목
	FAVOR                  INTEGER  NULL , -- 좋아용
	EMAIL                  VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- 글작성 ID (왜래키)
	CONTENT                VARCHAR2(500)  NULL , -- 글내용
	D_DAY                  VARCHAR2(50)  NULL , -- SYSDATE
	HITS                   INTEGER  DEFAULT O  --조회수
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence QA_BOARD_NO nocache;

--QA게시판 댓글
CREATE TABLE QA_COMMENT
(
  COMMNET_NO            INTEGER  NOT NULL PRIMARY KEY, -- QA게시판 댓글번호
	CONTENT               VARCHAR2(500)  NULL , -- 글내용
	BOARD_NO              INTEGER  NOT NULL REFERENCES QA_BOARD(BOARD_NO) , -- QA게시판 번호(왜래키)
	EMAIL                 VARCHAR2(50)  NULL , -- 댓글 작성자 ID
	D_DAY                 VARCHAR2(50)  NULL  -- SYSDATE
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence QA_COMMENT nocache;
  

--맛집 
CREATE TABLE RESTAURANT
(
	RESTURANT_NO          INTEGER  NOT NULL PRIMARY KEY, -- 맛집 번호
	CLASSIFICATION        VARCHAR2(50)  NULL , -- 분류(해산물,디저트... 뭐이런거?)
	AREA                  VARCHAR2(50)  NULL , -- 지역
	EXPLANATION           VARCHAR2(50)  NULL , -- 설명
	RESTAURANT_NAME       VARCHAR2(50)  NULL , -- 맛집 가게명
	OPERATING_TIME        VARCHAR2(50)  NULL , -- 영업시간
	HOLIDAY               VARCHAR2(50)  NULL , -- 휴일
	PHONE                 VARCHAR2(50)  NULL , -- 가게번호
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- 글작성자 ID(왜래키)
	WIKI                  VARCHAR2(50)  NULL , -- 준 이 할꺼야 ~ 나도뭐할지몰라~
	WISH                  INTEGER  DEFAULT 0  , -- 가고싶다
	BEAN                  INTEGER  DEFAULT 0  -- 다녀왔다
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence RESTAURANT_NO nocache;

--여행일정 
CREATE TABLE TRAVEL
(
	TRAVEL_NO             INTEGER  NOT NULL PRIMARY KEY, -- 여행일정 번호
	TITLE                 VARCHAR2(50)  NULL , -- 글제목
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- 작성자 ID(왜래키)
	THEMA                 VARCHAR2(50)  NULL , -- 테마
	TRAVEL_START_DAY      VARCHAR2(50)  NULL , -- 시작날짜
	TRAVEL_END_DAY        VARCHAR2(50)  NULL , -- 종료날짜
	BRIEF_STORY           VARCHAR2(50)  NULL , -- 여행간단설명
	FAVOR                  INTEGER  NULL , -- 좋아용
	TRAVEL_COVER_IMG      VARCHAR2(50)  NULL  -- 여행배경이미지
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence TRAVEL_NO nocache;

--여행일정 일정관리
CREATE TABLE TRAVEL_ITINERARY
(
	ITINERARY_NO          INTEGER  NOT NULL PRIMARY KEY, -- 여행일정 번호
  D_DAY                 VARCHAR2(50)  NULL , -- 날짜
	AREA                  VARCHAR2(50)  NULL , -- 지역
	MONEY                 INTEGER  DEFAULT 0 , -- 돈
	END_TIME              VARCHAR2(50)  NULL , -- 종료시간
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL(TRAVEL_NO), -- 여행일정 번호(왜래키)
	START_TIME            VARCHAR2(50)  NULL , -- 시작시간
	CONTENTSS               VARCHAR2(500)  NULL , -- 설명
	IMG                   VARCHAR2(50)  NULL  -- 사진들
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence TRAVEL_ITINERARY nocache;


--여행일정 체크리스트
CREATE TABLE TRAVEL_CHECK_LIST
(
	CHECKLIST_NO          INTEGER  NOT NULL  PRIMARY KEY, -- 체크리스트 번호
	CHECK_CATEGORY              VARCHAR2(50)  NULL , -- 분류
	ITEM                  VARCHAR2(500)  NULL , --아이템들
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL(TRAVEL_NO) -- 여행일정 번호(왜래키)
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence TRAVEL_CHECK_LIST nocache;


-- AUTHORITY(권한인증)
CREATE TABLE AUTHORITY
(
	AUTHORITY_NO          VARCHAR2(50)  NOT NULL PRIMARY KEY, -- 권한번호
	WRITER_EMAILS          VARCHAR2(50)  NULL , -- 여행일정 에서 수정이 가능한 권한을 가진 ID들
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL(TRAVEL_NO)  -- 여행일정 번호(왜래키)
);
--글번호 생성을 위한 시쿼스 생성
  create sequence AUTHORITY_NO nocache;

--여행후기
CREATE TABLE TRAVEL_REVIEW
(
	TRAVEL_NO             INTEGER  NOT NULL PRIMARY KEY, -- 여행후기번호
	TITLE                 VARCHAR2(50)  NULL , -- 글제목
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- 글작성ID(왜래키)
	THEMA                 VARCHAR2(50)  NULL , -- 테마
	TRAVEL_START_DAY      VARCHAR2(50)  NULL , -- 여행시작날짜
	TRAVEL_END_DAY        VARCHAR2(50)  NULL , -- 여행종료날짜
	BRIEF_STORY           VARCHAR2(50)  NULL , -- 여행간단설명
	FAVOR                  INTEGER  DEFAULT 0, -- 좋아용
	TRAVEL_COVER_IMG      VARCHAR2(50)  NULL  -- 여행배경이미지
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence TRAVEL_REVIEW nocache;

--여행후기 일정관리
CREATE TABLE TRAVEL_ITINERARY
(
	ITINERARY_NO          INTEGER  NOT NULL PRIMARY KEY, -- 여행후기 일정관리 번호
	D_DAY                 VARCHAR2(50)  NULL , -- 날짜(1DAY, 2DAY ...)
	ATEA                  VARCHAR2(50)  NULL , -- 지역
	MONETY                INTEGER  DEFAULT 0 , -- 돈돈돈돈
	END_TIME              VARCHAR2(50)  NULL , -- 종료시간
	TRAVEL_NO             VARCHAR2(50)  NOT NULL REFERENCES TRAVEL_REVIEW(TRAVEL_NO), -- 여행후기번호(왜래키)
	START_TIME            VARCHAR2(50)  NULL , -- 시작시간
	CONTENT               VARCHAR2(500)  NULL , -- 설명
	IMG                   VARCHAR2(500)  NULL  -- 사진들
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence TRAVEL_ITINERARY nocache;

--여행후기 체크리스트
CREATE TABLE REVIEW_CHECK_LIST
(
	CHECKLIST_NO          INTEGER  NOT NULL  PRIMARY KEY, -- 여행후기 체크리스트 번호
	CHECK_CATEGORY              VARCHAR2(50)  NULL , -- 분류
	ITEM                  VARCHAR2(500)  NULL , -- 아이템들
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL_REVIEW(TRAVEL_NO) -- 여행후기 번호(왜래키)
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence REVIEW_CHECK_LIST nocache;


-- 여행후기 댓글
CREATE TABLE TRAVEL_REVIEW_COMMENT
(
	COMMENT_NO            INTEGER  NOT NULL PRIMARY KEY, -- 여행후기 댓글 번호
	WRITER_EMAIL          VARCHAR2(50)  NULL , -- 글작성자
	CONTENT               VARCHAR2(500)  NULL , -- 글내용
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL_REVIEW(TRAVEL_NO)  -- 여행후기 번호(왜래키)
);
 --글번호 생성을 위한 시쿼스 생성
  create sequence TRAVEL_REVIEW_COMMENT nocache;

