# 건국대 좋은친구들 (Good friends)

### 1. 아이디어 구상
- 건국대학교 심부름 센터
- 학교 내에서 학생들이 필요한 모든 일들을 연결해 주는 서비스
- 급한 용무가 필요한 학생들과 시간이 남는 학생들을 연결해주는 중개 플랫폼
- 급한 일이 필요한 학생들이 미션을 내리고 시간이 남는 학생들이 미션을 수행하면서 수행비를 받는 형태

### 2. 배운내용
- crud
- paperclip
- Daum map API
- devise

### 3. 설계
##### Controller
- home / about / contac t/ index / show / new / create / edit / destory / update


##### Model
- title / name / phone / major / studentid / time / place / content



##### GEM
- devise
- paperclip

##### API
- Daum Map API

### 4. 잘 안되는 것
- devise로 회원가입기능을 만드려고 하는데 계속해서 migrate error가 나서 포기... 다시 해봐야 할듯

### 5. 더 추가하고 싶은 것
- 코멘트기능
- 미션이 완료되면 게시글을 완료로 바꿀 수 있는 기능
- 이메일과 Q&A로 입력하면 자동적으로 이메일이 발송되는 기능


### 6. 참고한 자료들
- 건국대학교 멋쟁이 사자처럼 수업자료
- https://www.youtube.com/watch?v=Z5W-Y3aROVE


### 7. 후기
Crud를 만드는 것은 수업자료를 그대로 따라 하는 것이기 때문에 어렵지 않았다. Crud에 Paperclip을 새로 구현해봤는데
계속 실패를 해서 구글링으로 찾아보니 sudo update를 하고 imagemagic을 따로 설치하고 하라해서 따라했더니 되었다.
Devise는 똑같이 맥킨지 영상도 보고 미연이 수업자료도 보고 따라했지만 계속 migrate에러가 난다.
혼자서 하니 시간이 많이 부족하여 더 하고싶은 기능들을 많이 찾아보지 못하였다.



####8. 주소
https://w5-project-cloned2-seungha.c9users.io/
