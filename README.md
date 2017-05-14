==결론 : 실패==

#Goals
- 먹고싶은건 많고 뭘 먹을지 모르겠을 때 정해주는 서비스
- 회원가입/로그인 해야 페이지에 들어올 수 있게
- CRUD로 한 모델에 10개 메뉴 받기
- 유저가 10개에서 5개 선택/5개에서 2개 선택/ 2개에서 1개 선택 => 메뉴 선정!
---
#Structure
###CRUD
먹고 싶은 메뉴 10개를 post안에 있는 menu1..10으로 받음.
```
<ol class="field">
        <li><%= f.text_field :menu1 %></li>
        <li><%= f.text_field :menu2 %></li>
        <li><%= f.text_field :menu3 %></li>
        <li><%= f.text_field :menu4 %></li>
        <li><%= f.text_field :menu5 %></li>
        <li><%= f.text_field :menu6 %></li>
        <li><%= f.text_field :menu7 %></li>
        <li><%= f.text_field :menu8 %></li>
        <li><%= f.text_field :menu9 %></li>
        <li><%= f.text_field :menu10 %></li>
    </ol>
```

###Random
유저 선택을 저장하는데에 실패해서 5개, 2개, 1개를 랜덤선택 하기로 함.
```
def second
    @secondPicked = @post.sample(5).sort
end

def third
    @thirdPicked = @secondPicked.sample(2).sort
end

def result
    @resultMenu = @thirdPicked.sample(1)
end
```

###Problems
※제가 정말 안하고 싶어서 안한게 아닙니다.
```
<div class="title">
    <img src="http://bit.ly/2pJSjQm"/>
    <h3>Your Menu List 1</h3>
</div>

<div class="menu">
    <h4><%= @post.menu1 %></h4>
    <h4><%= @post.menu2 %></h4>
    <h4><%= @post.menu3 %></h4>
    <h4><%= @post.menu4 %></h4>
    <h4><%= @post.menu5 %></h4>
    <h4><%= @post.menu6 %></h4>
    <h4><%= @post.menu7 %></h4>
    <h4><%= @post.menu8 %></h4>
    <h4><%= @post.menu9 %></h4>
    <h4><%= @post.menu10 %></h4>
</div>

<%= link_to "NEXT!", second_path %>

<%= link_to "Home", root_path %>
<%= link_to "Edit", edit_post_path %>
<%= link_to "Delete", post_path(@post), method: :delete, data: {confirm: "Are you sure?"} %>
```
1. 위에서 저장한 menu1..10이 show 페이지에 보여지지 않는다. 개발자 도구로 봐도 아예 <%=%>가 없는걸로 봐서, 아마 데이터 저장이 안된것 같다.

2. show에서 NEXT를 누르면 5개가 선별된 second page로 가야하는데 second가 없다고 거짓말한다. 왜냐면 나는 만들었기 때문이다.
시도해본 것들은
- <%= link_to "NEXT!", second_path %>
- <%= link_to "NEXT!", second_post_path %>
- <%= link_to "NEXT!", second %>
- <%= link_to "NEXT!", 'second' %> :second를 클래스 명으로 해봤다.
- <%= link_to "NEXT!", 'second.html.erb' %>

구글 검색 키워드
- ruby on rails link_to another page
- ruby on rails link_to
- ruby on rails 다른 페이지로 연결

원래 Stack over flow에 웬만한 문제는 다 있는데 나같은 빠가야로는 없는 것 같다.

```
<div class="second">
    <%= @secondPicked %>
    
    <%= link_to "ONE MORE TIME!", third_path %>
</div>
```
3. third와 마지막 페이지인 result도 이런 모양으로 불러왔는데, 위에것 안됐으니까 이것도 안됐겠죠?
4. 기본으로 있는게 아닌 새로만든 페이지를 불러온 경우가 다혜의 lotto라서 참고해 보았으나, 다해는 result로 연결해놓았는데 어디에서도 result 페이지를 찾을 수 없었다. ?_?

#Comments
벌금 내고 고칠테니까 왜 안되는건지좀 알려주세요...
