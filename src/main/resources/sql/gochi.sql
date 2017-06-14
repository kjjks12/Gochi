
--������ ��� ����
  insert into board(no,subject,content) values(board_no.nextval, '�ڹ�' , '��մ�!!');

-- MEMBER TABLE (ȸ������)
CREATE TABLE MEMBER
(
	EMAIL                 VARCHAR2(50)  NOT NULL PRIMARY KEY ,  --ID
	PASSWORD              VARCHAR2(50)  NOT NULL , -- ��й�ȣ
	NICKNAME              VARCHAR2(50)  NOT NULL , -- ����
	PHONE_NUMBER          VARCHAR2(50)  NULL , -- �ڵ�����ȣ
	PROFILE_IMG           VARCHAR2(50)  NULL , -- �������̹���
	BACK_IMG              VARCHAR2(50)  NULL , -- ����̹���
	SELF_CONTENT          VARCHAR2(50)  NULL   -- ������ �ڱ�Ұ� ��
);


-- FRIEND TABLE (ģ�����)
CREATE TABLE FRIEND
(
  FRIEND_NO             INTEGER  NOT NULL PRIMARY KEY , -- ģ�����̺� ��ȣ
  EMAIL                 VARCHAR2(50)  NOT NULL  REFERENCES MEMBER(EMAIL),  -- ����ID(�ַ�Ű)
	F_EMAIL               VARCHAR2(50)  NOT NULL  -- ģ�� ID
	
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence FRIEND_NO nocache;



--���� �ý���
CREATE TABLE NOTE
(
	NOTE_NO               INTEGER  NOT NULL PRIMARY KEY, -- ���Ͻý��� ��ȣ
	SEND_EMAIL           VARCHAR2(50)  NULL , -- �������(ID)
	TITLE                 VARCHAR2(50)  NULL , -- ��������
	CONTENT               VARCHAR2(500)  NULL , -- ���ϳ���
	D_DAY                  VARCHAR2(50)  NULL , -- SYSDATE
	FLAG                  INTEGER  DEFAULT 0 ,  -- 0 ���Ͼ��� , 1 ���Ͽ�!
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL) -- ������ID(�ַ�Ű)
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence NOTE_NO nocache;

--�����ϰ����� 
CREATE TABLE FOLLOW_ME
(
	TRAVEL_NO             INTEGER  NOT NULL PRIMARY KEY, -- ���ϵ� ��ȣ
	TITLE                 VARCHAR2(50)  NULL , -- ���ϵ� ������
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- ���ϵ� �����ID (�ַ�Ű)
	THEMA                 VARCHAR2(50)  NULL , -- �����׸� (������/ ������ ���)
	TRAVEL_START_DAY      VARCHAR2(50)  NULL , -- ���۳�¥
	TRAVEL_END_DAY        VARCHAR2(50)  NULL , -- ���ᳯ¥
	BRIEF_STORY           VARCHAR2(50)  NULL , -- ª�� �Ұ���
	FAVOR                 INTEGER  NULL , -- ���ƿ�
	TRAVEL_COVER_IMG      VARCHAR2(50)  NULL   -- ����̹���
);
SELECT * FROM FOLLOW_ME;
 --�۹�ȣ ������ ���� ������ ����
  create sequence FOLLOW_ME_NO nocache; 

--�����ϰ����� ��������
CREATE TABLE FOLLOW_ME_ITINERARY
(
	ITINERARY_NO          INTEGER  NOT NULL PRIMARY KEY, -- ���ϵ� �������� ��ȣ
	D_DAY                 VARCHAR2(50)  NULL , -- ��¥(1DAY , 2DAY ... )
	AREA                  VARCHAR2(50)  NULL , -- ��������
	MONEY                 INTEGER  DEFAULT 0 , -- �ѱݾ�
	END_TIME              VARCHAR2(50)  NULL , -- ����ð�
	START_TIME            VARCHAR2(50)  NULL , -- ���۽ð�
	SUBSTANCE             VARCHAR2(500)  NULL , -- �۳���
	IMG                   VARCHAR2(50)  NULL , -- �������
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES FOLLOW_ME(TRAVEL_NO) -- ���ϵ� ��ȣ (�ַ�Ű)
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence FOLLOW_ME_ITINERARY_NO nocache;

--�����ϰ����� üũ����Ʈ
CREATE TABLE FOLLOW_ME_CHECK_LIST
(
	CHECKLIST_NO          INTEGER  NOT NULL PRIMARY KEY , -- ���ϵ� üũ����Ʈ ��ȣ
  TRAVEL_NO             INTEGER  NOT NULL REFERENCES FOLLOW_ME(TRAVEL_NO), -- �����ȣ (�ַ�Ű)
	CHECK_CATAGORY        VARCHAR2(50)  NULL , -- ī�װ�
	ITEMS                 VARCHAR2(500)  NULL  -- �����۽�
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence FOLLOW_ME_CHECK_LIST_NO nocache;


--�����ϰ����� ���
CREATE TABLE FOLLOW_ME_COMMENT
(
	COMMENT_NO            INTEGER  NOT NULL PRIMARY KEY, -- ���ϵ� ��� ��ȣ
  TRAVEL_NO             INTEGER  NOT NULL REFERENCES FOLLOW_ME(TRAVEL_NO), -- ���ϵ� �����ȣ(�ַ�Ű)
	WRITER_EMAIL          VARCHAR2(50)  NULL , -- �ۼ��� ID
	CONTENT               VARCHAR2(500)  NULL -- ����
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence FOLLOW_ME_COMMENT_NO nocache;
  
--�����Խ���
CREATE TABLE FREE_BOARD
(
	BOARD_NO               INTEGER  NOT NULL PRIMARY KEY, -- �����Խ��� ��ȣ
  EMAIL                  VARCHAR2(50)  NOT NULL  REFERENCES MEMBER(EMAIL), -- �ۼ��� ID(�ַ�Ű)
	TITLE                  VARCHAR2(50)  NULL ,  -- ������
	FAVOR                  INTEGER  NULL ,  -- ���ƿ�
	CONTENT                VARCHAR2(50)  NULL , -- �۳���
	D_DAY                  VARCHAR2(50)  NULL , -- SYSDATE
	HITS                  VARCHAR2(500)  NULL  -- ��ȸ��
);
DROP TABLE FREE_BOARD;
 --�۹�ȣ ������ ���� ������ ����
  create sequence FREE_BOARD_no nocache;

--�����Խ��� ���
CREATE TABLE FREE_BOARD_COMMENT
(
 COMMNET_NO            INTEGER  NOT NULL , -- �����Խ��� ��۹�ȣ
	CONTENT             VARCHAR2(500)  NULL , -- �۳���
	BOARD_NO             INTEGER  NOT NULL REFERENCES FREE_BOARD(BOARD_NO), -- �����Խ��� ��ȣ (�ַ�Ű)
	EMAIL                VARCHAR2(50)  NULL , -- �ۼ��� ID
	D_DAY                VARCHAR2(50)  NULL  -- SYSDATE
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence FREE_BOARD_COMMENT_NO nocache;
  select * from FREE_BOARD_COMMENT;
  
--QA�Խ���
CREATE TABLE QA_BOARD
(
	BOARD_NO               INTEGER  NOT NULL PRIMARY KEY, -- QA�Խ��� ��ȣ
	TITLE                  VARCHAR2(50)  NULL , -- ������
	FAVOR                  INTEGER  NULL , -- ���ƿ�
	EMAIL                  VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- ���ۼ� ID (�ַ�Ű)
	CONTENT                VARCHAR2(500)  NULL , -- �۳���
	D_DAY                  VARCHAR2(50)  NULL , -- SYSDATE
	HITS                   INTEGER  DEFAULT O  --��ȸ��
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence QA_BOARD_NO nocache;

--QA�Խ��� ���
CREATE TABLE QA_COMMENT
(
  COMMNET_NO            INTEGER  NOT NULL PRIMARY KEY, -- QA�Խ��� ��۹�ȣ
	CONTENT               VARCHAR2(500)  NULL , -- �۳���
	BOARD_NO              INTEGER  NOT NULL REFERENCES QA_BOARD(BOARD_NO) , -- QA�Խ��� ��ȣ(�ַ�Ű)
	EMAIL                 VARCHAR2(50)  NULL , -- ��� �ۼ��� ID
	D_DAY                 VARCHAR2(50)  NULL  -- SYSDATE
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence QA_COMMENT nocache;
  

--���� 
CREATE TABLE RESTAURANT
(
	RESTURANT_NO          INTEGER  NOT NULL PRIMARY KEY, -- ���� ��ȣ
	CLASSIFICATION        VARCHAR2(50)  NULL , -- �з�(�ػ깰,����Ʈ... ���̷���?)
	AREA                  VARCHAR2(50)  NULL , -- ����
	EXPLANATION           VARCHAR2(50)  NULL , -- ����
	RESTAURANT_NAME       VARCHAR2(50)  NULL , -- ���� ���Ը�
	OPERATING_TIME        VARCHAR2(50)  NULL , -- �����ð�
	HOLIDAY               VARCHAR2(50)  NULL , -- ����
	PHONE                 VARCHAR2(50)  NULL , -- ���Թ�ȣ
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- ���ۼ��� ID(�ַ�Ű)
	WIKI                  VARCHAR2(50)  NULL , -- �� �� �Ҳ��� ~ ��������������~
	WISH                  INTEGER  DEFAULT 0  , -- ����ʹ�
	BEAN                  INTEGER  DEFAULT 0  -- �ٳ�Դ�
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence RESTAURANT_NO nocache;

--�������� 
CREATE TABLE TRAVEL
(
	TRAVEL_NO             INTEGER  NOT NULL PRIMARY KEY, -- �������� ��ȣ
	TITLE                 VARCHAR2(50)  NULL , -- ������
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- �ۼ��� ID(�ַ�Ű)
	THEMA                 VARCHAR2(50)  NULL , -- �׸�
	TRAVEL_START_DAY      VARCHAR2(50)  NULL , -- ���۳�¥
	TRAVEL_END_DAY        VARCHAR2(50)  NULL , -- ���ᳯ¥
	BRIEF_STORY           VARCHAR2(50)  NULL , -- ���ణ�ܼ���
	FAVOR                  INTEGER  NULL , -- ���ƿ�
	TRAVEL_COVER_IMG      VARCHAR2(50)  NULL  -- �������̹���
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence TRAVEL_NO nocache;

--�������� ��������
CREATE TABLE TRAVEL_ITINERARY
(
	ITINERARY_NO          INTEGER  NOT NULL PRIMARY KEY, -- �������� ��ȣ
  D_DAY                 VARCHAR2(50)  NULL , -- ��¥
	AREA                  VARCHAR2(50)  NULL , -- ����
	MONEY                 INTEGER  DEFAULT 0 , -- ��
	END_TIME              VARCHAR2(50)  NULL , -- ����ð�
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL(TRAVEL_NO), -- �������� ��ȣ(�ַ�Ű)
	START_TIME            VARCHAR2(50)  NULL , -- ���۽ð�
	CONTENTSS               VARCHAR2(500)  NULL , -- ����
	IMG                   VARCHAR2(50)  NULL  -- ������
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence TRAVEL_ITINERARY nocache;


--�������� üũ����Ʈ
CREATE TABLE TRAVEL_CHECK_LIST
(
	CHECKLIST_NO          INTEGER  NOT NULL  PRIMARY KEY, -- üũ����Ʈ ��ȣ
	CHECK_CATEGORY              VARCHAR2(50)  NULL , -- �з�
	ITEM                  VARCHAR2(500)  NULL , --�����۵�
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL(TRAVEL_NO) -- �������� ��ȣ(�ַ�Ű)
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence TRAVEL_CHECK_LIST nocache;


-- AUTHORITY(��������)
CREATE TABLE AUTHORITY
(
	AUTHORITY_NO          VARCHAR2(50)  NOT NULL PRIMARY KEY, -- ���ѹ�ȣ
	WRITER_EMAILS          VARCHAR2(50)  NULL , -- �������� ���� ������ ������ ������ ���� ID��
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL(TRAVEL_NO)  -- �������� ��ȣ(�ַ�Ű)
);
--�۹�ȣ ������ ���� ������ ����
  create sequence AUTHORITY_NO nocache;

--�����ı�
CREATE TABLE TRAVEL_REVIEW
(
	TRAVEL_NO             INTEGER  NOT NULL PRIMARY KEY, -- �����ı��ȣ
	TITLE                 VARCHAR2(50)  NULL , -- ������
	EMAIL                 VARCHAR2(50)  NOT NULL REFERENCES MEMBER(EMAIL), -- ���ۼ�ID(�ַ�Ű)
	THEMA                 VARCHAR2(50)  NULL , -- �׸�
	TRAVEL_START_DAY      VARCHAR2(50)  NULL , -- ������۳�¥
	TRAVEL_END_DAY        VARCHAR2(50)  NULL , -- �������ᳯ¥
	BRIEF_STORY           VARCHAR2(50)  NULL , -- ���ణ�ܼ���
	FAVOR                  INTEGER  DEFAULT 0, -- ���ƿ�
	TRAVEL_COVER_IMG      VARCHAR2(50)  NULL  -- �������̹���
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence TRAVEL_REVIEW nocache;

--�����ı� ��������
CREATE TABLE TRAVEL_ITINERARY
(
	ITINERARY_NO          INTEGER  NOT NULL PRIMARY KEY, -- �����ı� �������� ��ȣ
	D_DAY                 VARCHAR2(50)  NULL , -- ��¥(1DAY, 2DAY ...)
	ATEA                  VARCHAR2(50)  NULL , -- ����
	MONETY                INTEGER  DEFAULT 0 , -- ��������
	END_TIME              VARCHAR2(50)  NULL , -- ����ð�
	TRAVEL_NO             VARCHAR2(50)  NOT NULL REFERENCES TRAVEL_REVIEW(TRAVEL_NO), -- �����ı��ȣ(�ַ�Ű)
	START_TIME            VARCHAR2(50)  NULL , -- ���۽ð�
	CONTENT               VARCHAR2(500)  NULL , -- ����
	IMG                   VARCHAR2(500)  NULL  -- ������
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence TRAVEL_ITINERARY nocache;

--�����ı� üũ����Ʈ
CREATE TABLE REVIEW_CHECK_LIST
(
	CHECKLIST_NO          INTEGER  NOT NULL  PRIMARY KEY, -- �����ı� üũ����Ʈ ��ȣ
	CHECK_CATEGORY              VARCHAR2(50)  NULL , -- �з�
	ITEM                  VARCHAR2(500)  NULL , -- �����۵�
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL_REVIEW(TRAVEL_NO) -- �����ı� ��ȣ(�ַ�Ű)
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence REVIEW_CHECK_LIST nocache;


-- �����ı� ���
CREATE TABLE TRAVEL_REVIEW_COMMENT
(
	COMMENT_NO            INTEGER  NOT NULL PRIMARY KEY, -- �����ı� ��� ��ȣ
	WRITER_EMAIL          VARCHAR2(50)  NULL , -- ���ۼ���
	CONTENT               VARCHAR2(500)  NULL , -- �۳���
	TRAVEL_NO             INTEGER  NOT NULL REFERENCES TRAVEL_REVIEW(TRAVEL_NO)  -- �����ı� ��ȣ(�ַ�Ű)
);
 --�۹�ȣ ������ ���� ������ ����
  create sequence TRAVEL_REVIEW_COMMENT nocache;

