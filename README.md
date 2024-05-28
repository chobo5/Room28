# Room28
내가 좋아하는 브랜드들을 팔로잉하여 모아보고 소식까지 들어보세요

## 🔗 **Link**

[‎Room28](https://apps.apple.com/kr/app/room28/id6450450748)

## 📌 목표

- 앱기획을 직접 해보고 인생에서 나의 앱을 만들어 보는 경험
    - 전체 서비스를 혼자 구성해보기
    - 앱서비스의 전체 사이클을 경험해볼 수 있음
- 앱스토어 출시 경험

---

## ▪️ 구상

### 1. 프로젝트 구상

```bash
1. 내가 좋아하는 것: 옷
2. 내가 좋아하는 것에 대한 앱서비스 만들기 

- 프로젝트 명: Room28
- ⭐️ 내가 좋다고 생각하는, 브랜드의 감성이 있고 사람들에게 조명받았으면 하는 국내의 브랜드 소개
- 브랜드의 상품들, 최근 발매 상품들, 브랜드 소식
- 브랜드 리스트 - 팔로잉 버튼을 통해 내가 보고싶은 브랜드의 상품들과, 발매일자등을 받아 볼 수 있음
```

### 2.  화면 구상하기

- Compositional Layout을 이용해 구성한 UICollectionView가 사용자가 화면에서 컨텐츠를 섹션별로 다양하고 자연스럽게 이용하기에 적합하다고 생각하여 적극적으로 활용하였습니다.
- 저의 주관으로 브랜드는 소비자와 ‘옷’이라는 매개체만으로 소통하는 것이 가장 바람직하다고 생각하여 텍스트보다는 이미지를 많이 활용하였습니다.
- 사용자가 팔로우하고싶은 브랜드만 모아 볼수 있도록 하고 팔로우한 브랜드의 상품 발매 예정일을 볼 수 있도록 하였습니다.

## ▪️ 구현 기능

### Home Tab

1. 사용자가 팔로우하는 브랜드 모아보기
2. 팔로우하는 브랜드의 새로운 소식 보기
    1. 현재기준 7일간의 브랜드 소식 시간순으로 배열
    2. 해당 소식 선택시 instagram 게시물 url로 이동
    3. 당겨서 새로고침
3. 브랜드셀 선택시 최근 발매 순 상품 리스트 페이지로 이동
    1. 상품 선택시 해당 상품의 브랜드 웹사이트 상품페이지로 이동
    2. 당겨서 새로고침

![Simulator Screenshot - iPhone 14 - 2023-06-21 at 02.30.30.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/79f9d43f-2c36-47bc-bb56-98ce9143fae5/Simulator_Screenshot_-_iPhone_14_-_2023-06-21_at_02.30.30.png)

![Simulator Screenshot - iPhone 14 - 2023-06-22 at 18.22.04.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7f5de7d4-017a-4e32-964a-ec6fb2407e48/Simulator_Screenshot_-_iPhone_14_-_2023-06-22_at_18.22.04.png)

### Brands Tab

1. 브랜드들의 리스트보기(팔로잉 여부 결정)
2. 브랜드셀 선택시 최근 발매 상품 리스트 페이지로 이동
    1. 상품 선택시 해당 상품의 브랜드 웹사이트 상품페이지로 이동
3. 검색기능

![Simulator Screenshot - iPhone 14 - 2023-06-21 at 02.30.47.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/753553e1-d739-486e-aa77-22c69c0d2e23/Simulator_Screenshot_-_iPhone_14_-_2023-06-21_at_02.30.47.png)

![Simulator Screenshot - iPhone 14 - 2023-06-22 at 18.15.11.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3c9cd4c1-39e7-4315-a1bd-a5a938d188a5/Simulator_Screenshot_-_iPhone_14_-_2023-06-22_at_18.15.11.png)

### More Tab

1. 앱 평가하기
2. 문의 및 버그 신고 - 앱의 사용경험을 통한 피드백 수렴
3. 앱정보 - 앱의 버전
4. 공지사항 - 앱에서 사용자들에게 공지사항 작성
5. 개인정보 처리 방침

![Simulator Screenshot - iPhone 14 - 2023-06-21 at 02.30.50.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4d0f773a-b65d-4e1f-a8a2-0cb3fe0f3ddc/Simulator_Screenshot_-_iPhone_14_-_2023-06-21_at_02.30.50.png)


### 📝 Learned

- Swift에서 FirebaseFirestore를 통해 데이터의 구조를 만들고 쿼리문을 통해 조건에 부합하는 데이터를 읽어 오는 방법을 익힐 수 있었습니다.
- SwiftSoup을 통해 웹사이트의 구조를 파악하고 크롤링하여 데이터를 읽어오는 방법을 익힐 수 있었습니다.
- 받아온 데이터를 사용자에게 보여주고 싶은 방식으로 가공하고 새로운 배열을 생성하는 방법을 익힐 수 있었습니다.
- AutoLayout에 대한 이해도를 발전시킬 수 있었습니다.
- KingFisher를 통해 받아온 이미지를 캐시에 저장하고 관리하는 방법을 익힐 수 있었습니다.
- CompositionalLayout을 사용해 복잡한 레이아웃을 만들고 동적으로 변경하는 방법을 익힐 수 있었습니다.
- CoreData를 사용해 사용자의 데이터를 CRUD하는 방법을 익힐 수 있었습니다.
- 출시과정에서 다른 앱들의 리젝트 사유를 찾아보고 나의 앱에 적용해보는 과정에서 앱 출시에 대한 전반적인 경험을 쌓을 수 있었습니다.

# PART2 - 앱 유지보수(v.1.0.1)

## ▪️ 문제점과 해결방안

- 문제점 - 현재의 버전에서 새로운 브랜드를 추가하려고 할때, 해당 브랜드의 상품들을 긁어오는 crawling 작업을 앱내에서 실행하고 있으며 각 Css Selector가 앱내에 저장되어있어 브랜드 추가시 코드를 바꾸어야 하는 문제가 생김
- 해결방안 - 앱의 크롤링을 담당하는 부분을 앱과 분리시켜 일괄적으로 firestore에 업로드후 앱은 firestore에서 데이터를 받아오기만 하는 형식으로 변경
