# mirror-edu-app

**거울 놀이 30** — 거울에 비친 모습을 찾는 만 5세용 사고력 수학 웹앱입니다. `index.html` 한 파일로 동작합니다.

- 30문제, 5단계. 유형과 난이도 순서는 고정이고 그림·색·모양·위치는 시작할 때마다 새로 뽑습니다.
- 풀이 방식: 보기 고르기, 선 잇기(드래그), 색칠하기, 붙임딱지 붙이기(드래그).
- 생각 시간(끔 / 3·5·10·20초 / 직접 열기), 힌트(거울로 확인), 문제 고르기.

## 실행

`index.html`을 브라우저에서 엽니다. GitHub Pages로 올리면 아이패드 Safari에서 "홈 화면에 추가"로 앱처럼 쓸 수 있습니다.

## Cloud Run 배포

`Dockerfile`과 `nginx.conf.template`이 포함되어 있어 Google Cloud Run에 바로 배포할 수 있습니다.

```bash
gcloud run deploy mirror-edu-app --source . --region asia-northeast3 --allow-unauthenticated
```

비공개(인증 필요) 서비스로 올리려면 `--allow-unauthenticated` 대신 `--no-allow-unauthenticated`를 사용하세요.
