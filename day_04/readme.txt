할일관리 웹서비스
기능별 URL

1. 메인화면     todo.jsp( 저장갯수-Select )
2. 등록폼화면  todo_insert_form.jsp
3. 등록작업     todo_insert_action.jsp( Insert... )
4. 목록화면     todo_list.jsp( Select... )
--------------------------------------------------
1. Dynamic Web Project 생성
2. ojdbc6.jar를 WEB-INF/lib에 복사
3. jdbc 코드 작성
 
https://github.com/KimYounghwan/nts_jsp_day4
---------------------------------------------------------

가계부 웹서비스를 만들려고합니다.
입출금 내역(목록)의 예
번호  종류  내용     금액       날짜
  5   수입   월급    5000000  2022-09-10
  4   지출   점심    9000       2022-09-10
  3   지출   커피    4000       2022-09-10

1. account_book 테이블 작성하세요



2. account_book_main.jsp 를 작성하세요.
  가계부 등록, 가계부 목록 링크를 작성하세요
3. account_book_insert_form.jsp 를 작성하세요.
   입력받은 항목은 종류, 내용, 금액
4. account_book_insert_action.jsp 를 작성하세요.
   종류, 내용, 금액 파라미터를 받아 
   account_book테이블에 저장하는 코드를 작성하세요.
5. account_book_list.jsp 를 작성하세요.
   위와같은 목록을 출력하는 코드를 작성하세요.










