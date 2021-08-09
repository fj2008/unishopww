# unishop ~

###이니시스 결제 api 호출 방법
```
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
jQuery넣어주기!

 let IMP = window.IMP;
        IMP.init("imp55496891");
        IMP.request_pay({
            pg: "html5_inicis",//이니시스 웹표준 결제창
            pay_method: "card",//결제방법
            merchant_uid: "ORD20180131-0000011",//주문번호
            name: "청바지",//상품명
            amount: 19000,//가격
            buyer_email: "ssar@gmail.com",//이메일
            buyer_name: "이호겸",//이름
            buyer_tel: "010-4242-4242",//연락처
            buyer_addr: "서울특별시 강남구 신사동",//주소
            buyer_postcode: "01181"//상품코드
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                let msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;//아임포트 거래고유번호
                msg += '상점 거래ID : ' + rsp.merchant_uid;//주문번호
                msg += '결제 금액 : ' + rsp.paid_amount;//결제금액
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                let msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
        });
        
추가적인 파라미터값은 api문서 확인해서 추가할것!
```

###데이터베이스 생성 방법
```sql
CREATE USER 'unishop'@'%' IDENTIFIED BY 'korea1234';
GRANT ALL PRIVILEGES ON *.* TO 'unishop'@'%';
CREATE database unishopdb;
```

###컴퓨터 옮겼을때 수정해야할 코드
```
utils에 myPath에 저장될 이미지경로(이거때문에 1시간날림.....)
UserController에서 쿨sms보내는 코드 주석확인
```


###추가 의존성
```xml
<dependency>
    <groupId>org.apache.tomcat</groupId>
    <artifactId>tomcat-jasper</artifactId>
    <version>9.0.46</version>
</dependency>

<!-- https://mvnrepository.com/artifact/javax.servlet/jstl -->
<dependency>
	<groupId>javax.servlet</groupId>
	<artifactId>jstl</artifactId>
	<version>1.2</version>
</dependency>
```

###JSTL teglib
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```

### application.yml 
```yml
server:
 port: 8000
 servlet:
    encoding:
      charset: UTF-8
      

spring:
  mvc:
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp
      
  datasource:
    driver-class-name: org.mariadb.jdbc.Driver
    username: korea
    password: korea1234
    url: jdbc:mysql://localhost:3306/koreadb      
    
    
  jpa:
    hibernate:
      ddl-auto: none #create:, update, none
    show-sql: true
```

### 더미데이터
```sql
INSERT INTO user(username, PASSWORD)VALUES('ssar','1234');
INSERT INTO user(username, PASSWORD)VALUES('cos','1234');


INSERT INTO post(title, content, user_id)VALUES('제목1','내용1',1);
INSERT INTO post(title, content, user_id)VALUES('제목2','내용2',1);
INSERT INTO post(title, content, user_id)VALUES('제목3','내용3',1);
INSERT INTO post(title, content, user_id)VALUES('제목4','내용4',2);
INSERT INTO post(title, content, user_id)VALUES('제목5','내용5',2);
```

###주소 API 승인키
```
https://www.juso.go.kr/addrlink/addrLinkUrl.do?confmKey=devU01TX0FVVEgyMDIxMDcwNTE3MjgyMzExMTM2MTE=&returnUrl=http://localhost:8000
```


###터미널 알록달록
```
spring:
  output:
    ansi:
      enabled: always
```

###collSms 의존성
```bash
 <dependency>
    <groupId>net.nurigo</groupId>
    <artifactId>javaSDK</artifactId>
    <version>2.2</version>
  </dependency>
```
