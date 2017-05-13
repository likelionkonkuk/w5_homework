# 핫테고리

## 1. 기능

- 내가 원하는 매운맛을 선택해서 음식을 알수 있도록
	- 음식의 카테고리도 분류
- 식당의 지도 OR 배달정보를 제공
- 일단은 몇개의 샘플 리뷰들을 데이터베이스에 넣고 시작
	- 사람들의 평가를 토대로 데이터를 갱신

## 2. 생각해 볼것
- 검색기능은 뭘로할지 찾아보기
>(search_cop gem)
https://luciuschoi.gitbooks.io/foundblog/content/search_engine/index.html
- 별점을 어떤식으로 데이터베이스에 추가할지
> http://sgwanlee.github.io/dev/rails/2016/11/11/rails-gem-ratyrate/
> 
- 처음 데이터는 어떤식으로 가져올지

## 3. 설계내용
####1 . Model
- Post

| id | title | content | user_id | created_at | updated_at |
|--------|--------|-------|-------|-------|-------|
| integer | string | text | integer | datetype | datetype |

belongs_to user

- User

| id | email |
|--------|--------|
| integer | string |

has_many post

## 4. 외부파일
- bootstrap4
- gem
	- gem 'paperclip', '~> 5.0.0'
	- gem 'devise'
	- gem install nokogiri

## 5. 어려웠던 점
- post 모델에 image라는 이미지를 추가하고 싶은경우
> rails generate paperclip post image 해주기!

- 네이버 검색api를 가져와서 해당 데이터를 검색할 수 있도록 만들고 싶었는데 생각처럼 잘 되지 않았다.

- 원래는 정보별로 후기를 작성하게 하고싶었다...

## 6. 하고나서
처음에 설계했던거랑 많이 달라졌다.....
내가 못한 기능이 너무 많아서ㅠㅠ...
더 공부해서 못한 기능을 다시 채워보고싶다.

최종적인 기능은
- 카테고리별로 매운맛 고르기
- 후기 작성하기
- 지도 보여주기

추가해야할 기능은
- 댓글
- 후기와 정보 이어주기
- 정보의 title으로 바로 지도검색 하기

임니다..