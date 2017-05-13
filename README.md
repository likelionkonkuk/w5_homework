# 자연과 풍경을 기록하자. 하루에 한장
---
1. 어떤 사이트인가? : "어떻게 하면 하루를 보다 의미있게 보낼 수 있을까"가 출발점이다.
  보다 의미있는 하루가 쌓이고 쌓이다면, 보다 행복한 나날이 되지 않을까. 톱니바퀴처럼 무언가에 쫓기면서 사는 삶 속에서, 내 하루를 돌이켜보고 기억하려면, 기록이 중요하지 않나 싶습니다.

2. 근데 기록하기가 쉽지가 않습니다. 시간을 내서 기록하기가 쉽지 않기 떄문입니다.

3. 자연을 보면 마음이 편안해집니다. 복잡한 세상, 톱니바퀴처럼 살지만, 편안하게 살고 싶은 마음에 자연을 바라보고 싶어집니다. 그렇다면 찍어보는 건 어떨까 싶었습니다.

4. 그래서 하루에 한장씩 풍경사진을 올릴 수 있는 사이트를 만들기로 하였습니다.

5. 풍경사진은 찍은 사진이어도 되고, 그냥 어디 캡쳐해도 되고 다 상관없습니다.

---
##기능 
1.회원가입 기능을 구현하고, validator?를 걸어줘서 하루에 한 장만 올릴 수 있도록 합니다.
2. 올린 이미지에 좋아요 기능을 추가해서 순위를 매깁니다.
3. 앨범이란 이름의 게시판에 이 날의 풍경사진으로 해서, 그 날의 좋아요가 가장 많은 사진들을  차곡차곡 쌓아갑니다.
4. 그 사진들을 모두에게 공유할 수 있도록 해서, 풍경과 자연을 모아놓은 자연 사진들을 모두가 공유할 수 있도록 합니다.

##설계
1. 회원가입 기능을 구현하기 위해서 - 오늘 배운 device 젬? 을 활용합니다.
2. 회원가입은 최소한의 내용만을 받게 하려고 하기 위해서 model의 id, text, 이메일 , 정도의 내용만 받습니다.
3. crud 기능을 활용해서 누구나 게시판에 올릴 수 있도록 합니다.
4. 메인에는 사진만 나오게 해서, 사진을 클릭했을 때, 사진이 나오게 하고, 다운로드 받는 기능도 있게 합니다. 
5. 이 주의 일등을 뽑아서 그 사진이 메인에 걸릴 수 있게 합니다.
-------------------------

##Model 설계
모델은 총 5가지가 있다.
 created_at, updated_at은 자동생성되니 생략 (아 id도 자동생성되는구나)
 
User
- id:integer / email:string /age _integer 

has_many posts, has_many comments, has_and_belongs_to_many groups

Post
- id:integer / title:string /content: text / user_id /

belongs_to user, has_many comments, has_many photos

Comment
- id:integer	/ content:string / post_id:integer	/ user_id :integer 

belongs_to user, belongs_to post

Group
- id:integer / name:string/	post_id:integer	/ user_id :integer

has_and_belongs_to_many users

Photo
- id:integer / name

belongs_to Post


--------
## 웹 페이지 구성

- 필요한 html은 2개로 구성
1. Main.html -> Main은 지난 달에 좋아요를 가장 많이 받은 사진이 메인에 나오며, 그 사진으로 대문을 꾸미게 된다.

2. 게시판 형식으로 사진이 4x4로 나오며, 추가적으로 화면을 줄였을 때도 고려해서 배치한다!(부트스트랩 형식 이용)

####추가적으로 넣고 싶은 기능

- 로그인 기능을 명확히 구현해낸다면 , 내 프로필 보기 (정보보기) html을 넣어야 한다
- 다른 아이디를 검색하는 기능이 있으면 좋겠다
- 또한 다른 사람이 올린 게시물을 클릭했을 때, 그 사람의 프로필 보기를 구현하고 싶다. 그러기 위해서는 다른 사람의 프로필 html도 구현해야 한다.
- 지난 달 1등한 사진들은 명예의 전당이란 카테고리를 만들어서, 그 안에 기록할 수 있도록 하고 싶다.
- 구글맵스를 넣어서 이 풍경사진을 찍은 위치를 나타내게 하고 싶다.
- pagination을 해서 자동으로 일정 게시물이 넘어가면 그걸 표현하고 싶다.

#### 프로젝트 진행순서
0. model 생성
1.  게시판 html 만들기 
2.  이미지 젬 구현
3.  로그인 gem 구현
4. 	Faker gem 구현 (이건 패스)
5


#문제
- error 메세지가 뜨지 않음에도 불구하고 destroy가 작동하지 않는다. 구글링을 해봤지만, 버전의 문제라는 말도 있고, 자바스크립트 충돌이라는 말도 있었지만, 어느 것 하나 해답은 아니었다. 자바스크립트충돌 문제 인것 같지만, 문제는 오류메세지를 띄우지 않는다는 점이다. 이걸 어떻게 해결할 수 없을까?(rake routes하면 잘 연결되어 있다.)
- 
- db를 생성하지 않은 채 처음부터 다시 시작하기로 했다. 다시 만드니까 destroy가 작동하기 시작했다 ㅎㅎ
-  근데  갑자기 디비가 날라가더니, 다시 안되기 시작했다 ..

- gem으로 이미지를 넣으면 

##어려웠던 점

- db를 초반에 만든 다음에 해야할 일 순서대로 만들었는데 자꾸 db에서 오류가 생겨서 reset을 많이해줬다. -> devise젬을 연결하는데, 미리 e-mail을 만들어놓고 해서 그런가 오류가 엄청 났다. 미리 만들어놓은 user.rb와 device.rb도 분간이 안가서 그런가 원인모를 오류가 떴고, 해결을 못했다. 그래서 결국 갈아 엎을 수 밖에 없었다. 

- new.html에서 이미지파일을 바로 업로드된 걸 사용한다. 메인에서 바로 업로드 되게 하고 싶었지만 결국 실패했다. 



#https://ide.c9.io/scarltebreeze/assignment




