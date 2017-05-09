5주차 과제 : 2차 모의 아이디어톤
---


### 과제 업로드 방법


프로젝트 루트로 이동해 `git`을 사용합니다.(부디 프로젝트를 시작하는 시점에 git을 적용하길 바랍니다.)

```sh
git init
```

remote 저장소를 추가하고 잘 추가됐는지 확인합니다.

```sh
git remote add origin https://github.com/likelionkonkuk/w5_homework.git
git remote -v
```

프로젝트 내용을 커밋합니다. 

```sh
git add .
git commit -m "first commit"
```

`branch` 상태를 확인합니다.

```sh
git branch
```

> *master

자기이름으로 `branch`를만들어 `checkout`하고, 올바르게 바뀐 상태인지 확인합니다.

```sh
git checkout -b 자기이름
git branch
```
> Switched to a new branch '자기이름'
>
> master
>
> *자기이름


자기이름으로 프로젝트를 `push`합니다. 

```sh
git push origin 자기이름
```



### 모의 아이디어톤🚀

멋사 내에서 가장 큰 행사인 **아이디어톤**과 **해커톤**을 대비합니다. 단시간 내에 기획, 설계, 개발을 할수 있는 능력을 기릅니다. 아이디어 자체에 부담을 갖기보다는 우리가 사용할 수 있는 기술들을 활용해 어떤 제품(웹사이트)을 만들수 있는지 시야를 넓혀보는 계기가 되길 바랍니다!😎

- 배운 내용을 최대한 활용해 웹사이트를 만듭니다.
    + 게시판 및 게시물관리(crud)
    + 사진업로드(paperclip)
    + 위치서비스(map API)
    + 회원가입(devise)
- 교육, 일상, 데이트, 생산성도구, 음악, 뷰티, 쇼핑, 엔터테인먼트, 소셜, 자동차 등 자유롭게 주제선정 하여 기획, 설계, 개발을 진행합니다.
- 어떤 아이디어라도 관계없지만, 재미있어야 합니다. (제목, 취지 등에서 재미를 추구하길 바람.)
- 수업시간에 발표한 아이디어로 진행하지 않아도 좋습니다.
- 권장사항
    + 설계 및 개발과정을 `README.md` 에 작성하세요.
    + 배운 내용 외에 이 프로젝트를 완성하기 위해 필요하다고 생각되는 기능이나 기술을 `README.md`에 상세히 작성하세요.
    + 잔디 공부자료에 올려놓은 [Mackenzie Child Rails Tutorials](https://www.youtube.com/watch?v=7-1HCWbu7iU&list=PL23ZvcdS3XPLNdRYB_QyomQsShx59tpc-)를 **적극적으로** 활용해도 좋습니다.

### 유의사항
- 기한은 5월 14일 정오(11시 59분 59초)까지 입니다.

---

## Author

written by [천민우](https://project42da.github.io).

![](https://avatars.githubusercontent.com/project42da?v=2&s=100)

<a href="https://project42da.github.io" target="_blank" class="btn btn-black"><i class="fa fa-github fa-lg"></i> Visit on Github Page &rarr;</a>
