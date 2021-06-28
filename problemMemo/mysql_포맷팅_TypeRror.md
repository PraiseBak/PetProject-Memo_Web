pymysql sql문 포맷팅 TypeError 발생

게시판 기능에서 내용에 % 등이 들어가면 sql문 실행에서 TypeError가 발생했음   

원인은 파이썬에서의 문자열으로써의 %는 포맷팅을 의미하기 때문임

따라서 내용부분의 %를 %%로 변경해주면 해결됨

### 변경 전

```
text = form.content_text.data
```

### 변경 후

```
text = form.content_text.data.replace("%","%%")
```

