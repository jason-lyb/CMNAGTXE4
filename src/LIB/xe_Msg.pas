unit xe_msg;

interface

const
  Loop = 3;

  // BC_REFER = '조회';
  // BC_ADD = '추가';
  // BC_EDIT = '수정';
  // BC_SAVE = '저장';
  // BC_DEL = '삭제';

  // MC_INFOMATION = '정보';
  // MC_CAUTION = '경고';
  // MC_CLOSE = '종료';

  CDMSI = 'CDMSI';
  CDMSE = 'CDMSE';
  CDMSQ = 'CDMSQ';
  CDMSW = 'CDMSW';

  CM001 = '';
  CM002 = ' 하였습니다';
  CM003 = ' 없습니다';
  CM004 = ' 누르세요';
  CM005 = ' 틀림니다';
  CM006 = ' 하시겠습니까?';
  CM007 = '입니다';
  CM008 = '하세요';
  CM009 = ' 바람니다';
  CM010 = ' 되었습니다';

  CMC001 = '';
  CMC002 = '';
  CMC003 = '';
  CMC004 = ' 찾을 수' + CM003;
  CMC005 = ' 입력' + CM008;
  CMC006 = ' 되었습니다';
  CMC007 = ' 선택' + CM008;
  CMC008 = ' 입력항목' + CM007;
  CMC009 = ' 발생' + CM002;
  CMC010 = ' 실패' + CM002;
  CMS011 = ' 전송' + CM006;

  CMS001 = ' 생성에' + CMC010;
  CMS003 = ' 오류가' + CMC009;

  MDXCQ_0001 = '종료' + CM006;
  MDXCQ_0002 = '삭제' + CM006;
  MDXCI_0003 = '패스워드을(를)' + CMC005;
  MDXCI_0004 = '사용자번호을(를)' + CMC005;
  MDXCI_0005 = '필수' + CMC008;
  MDXCI_0006 = '저장' + CMC006;
  MDXCI_0007 = '아이디 또는 패스워드을(를)' + CM005;

  MSG001 = '바탕화면에 단축아이콘' + CMS001;
  MSG002 = 'HELP Folder' + CMS001;
  MSG003 = 'IMAGER Folder' + CMS001;
  MSG008 = 'LOG Folder' + CMS001;
  MSG009 = '이미 실행중입니다';

  MSG010 = '예외사항' + CMC009;
  MSG011 = '검색 조건을(를)' + CMC007;
  MSG012 = '수신데이타의' + CMS003;
  MSG013 = '저장 중' + CMS003;
  MSG014 = '변경' + CMC006;

  MSG050 = '업데이트 목록을(를)' + CMC004;
  MSG100 = '인증번호가 전송' + CMC006;
  MSG101 = '조회 중' + CMS003;

  MSG411 = '확인하십시요!';
  MSG412 = '작업 오류';
  MSG419 = '입력취소는 [ESC]키을(를)' + CM004;
  MSG420 = '입력형식이 잘못' + CMC006;

  MSG421 = '등록되지 않은 대표번호' + CM007;
  MSG422 = '지사 설정 조회시 문제가' + CMC009;
  MSG423 = '사용자 레벨이 확인 할수' + CM003;
  MSG424 = '위치정보 을(를) 얻는데' + CMC010;
  MSG425 = '다시 로그인(다운) 하시기' + CM009;
  MSG426 = '완료처리' + CMC006;
  MSG427 = '착신번호을(를)' + CMC005;
  MSG428 = '비정상 적으로 처리' + CM010;
  MSG429 = '착신번호을(를)' + CMC005;
  MSG430 = '정렬을 초기화' + CM006;
  MSG431 = '저장 중 오류가' + CMC009;
  MSG432 = '접수' + CM006;
  MSG433 = '서버접속이 끊어 졌습니다 ';
  MSG434 = '다시 실행 이후, 연결이 되지 않을 경우 ';
  MSG435 = '관리자에게 문의 하시기' + CM009;
  MSG436 = '등록되지 않은 대표번호' + CM007;
  MSG437 = '출발지는' + MDXCI_0005;
  MSG438 = '요금은(는)' + MDXCI_0005;

  ERR_SOCK_MSGNUM = '전문번호가 틀립니다.';
  ERR_SOCK_PROTOVER = '프로토콜 버젼이 틀립니다.';

  ERR_INVALID_XMLFORMAT = '수신데이터 형식이 잘못되었습니다.';

implementation

end.
