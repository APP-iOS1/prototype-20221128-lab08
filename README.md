# 카드혜택모아
## 팀원 : 김도희, 김미주, 이민경, 장다영, 이진아(아이디어 제안자)

## 앱 정의(ADS)
- 우리 앱은 카드를 다수 보유하고, 카드혜택을 잘 누리지 못하는 사람에게 본인이 소유한 카드 혜택을 알차게 누릴 수 있도록 할 것이다. 
- 왜냐하면 카드 혜택을 누리려고 카드를 신청했지만, 카드 혜택을 놓치면 안타깝기 때문이다.

## 페르소나
- 카드를 사용하지만 카드의 혜택을 잘 몰라 적절하게 사용하지 못하는 사람
- 보유하고 있는 카드가 많은 사람

## 수익모델
- 혜택 검색 페이지 광고

## 주요기능
- 개인이 소유한 카드 등록 기능(체크카드, 신용카드)
- 혜택을 누릴 수 있는 사용처를 검색 기능
- 해당 사용처에서 혜택을 받을 수 있는 카드가 있는지 확인하고 혜택이 큰 순서대로 카드를 보여주는 기능
- 사용처 검색 시 기존 검색내역 보여주는 기능(자주 사용하는 사용처 일 수 있기 때문에)
- 실적을 얼마나 채웠는지 보여주는 기능(금융 API)
- 보유한 카드별 세부 혜택 정보(전체)를 보여주는 페이지(기능)
- 모든 카드사의 카드 및 혜택을 검색해 볼 수 있는 기능 + 해당 기능에서 본인의 카드 발견 시 클릭 한번으로 카드 등록
- 카드 추천 기능(기존의 보유한 카드와 더 높은 혜택을 받을 수 있는 카드 추천)
- 카드 추천 기능(원하는 키워드를 넣어서, 모든 키워드를 반영하는 혜택을 가진 카드 추천)
- 본인 위치 기준으로 보유한 카드를 사용해서 혜택을 받을 수 있는 사용처를 MAP을 통해서 보여줌
- 소비 지킴이 요정(소비습관에 따른 당근과 채찍)
  ex) 봄이 왔다고 막 쓰다가는 벚꽃만 엔딩이 있는 게 아니라는 걸 알게 될 겁니다.
      차라리 차를 사시는 게 어떨까요?
- 매달 카드별 자동이체 내역 보여주는 기능

## 참고 레퍼런스
- [추천카드] 본인 위치 기준으로 보유한 카드를 사용해서 혜택을 받을 수 있는 사용처를 MAP을 통해서 보여줌
- [더쎈카드] 
- [페이웨이] 
- [시럽]
- [뱅크셀러드]

## 우리만의 차별점
- 우리가 차별점이다!! 우리의 뛰어난 팀원들이 가장큰 차별점이다!!
- 메인 화면에서 본인이 소유한 카드 목록을 보여주고, 카드 뒷면에 카드 혜택 정보를 간략하게 또는 버튼을 통해서 자세하게 볼 수 있는 기능을 제공
- 메인 화면에서 정기결제일 및 결제 이전 카드 잔고현황(잔고부족 알림)에 대한 알림 기능을 제공


## 활용한 기술
- 스크롤뷰 페이징 
  - https://www.youtube.com/watch?v=r29-06lbLmQ&t=889s
  - https://github.com/amirdew/CollectionViewPagingLayout
  - https://www.youtube.com/watch?v=1HU1YFu07ws
  - https://www.youtube.com/watch?v=BK-8Ddtoa_w
  - https://www.youtube.com/watch?v=B_DzMJOVzMo
- 카드 플립
  - https://github.com/jrasmusson/swiftui/blob/main/Animations/CardFlip/README.md
  - https://www.youtube.com/watch?v=7rxaRn-XK28&t=147s
- MapKit

## 피드백

  <b>0. 기본 변경사항</b>

    - 탭 이름 추가
    - 탭 순서 변경
    - 탭바의 백그라운드 컬러를 흰색, 선택된 탭의 아이콘을 빨강
    - 빨강은 그대로 가고 채도 변경

  <b>1. 나의 카드</b>

    - 카드별 그라데이션 + 제목 넣어주기
    - 카드가 뒷면으로 돌아간다는 내용을 명확하게 표시
        → 우상단에 손가락 터치 아이콘 추가

    - 옆으로 전체 스와이프가 아닌 카드 각각 페이징 기능 적용

    💡 오른쪽 상단에 벨 아이콘을 통해 ‘자동이체 결제 임박일’을 볼 수 있는 뷰 추가 (*이승준님 아이디어)

    - “카드 혜택 상세 보기” → “카드 정보 상세 보기” 이름 변경
    - 카드 뒷면 정보가 많아 가독성이 부족 → 아래쪽 구간혜택 정보를 “카드 정보 상세 보기”로 이동
    - “카드 정보 상세 보기”에서 탭으로 실적, 카드 혜택, 사용 내역까지 보여주기
        - 실적 탭 : 사용자의 카드 이용 실적을 보여줌
        - 혜택 탭 : 사용자가 해당 카드로 받을 수 있는 해당 월 혜택을 혜택 받기 까지 남은 잔여금액과 함께 표시하고 카드의 전체 혜택을 하단에 표시함
        - 내역 탭 : 사용자의 카드 사용 내역과 사용 가능한 포인트를 보여줌

    - 카드 추가 뷰에서 왼쪽 슬라이드를 통해서 카드가 추가되는 기능을 명확하게 표시
        → 카드 리스트 오른쪽 “<<” 표시


  <b>2. 내 주변 혜택</b>

    - 피드백 받은 내용 없음

  <b>3. 혜택 검색</b>

    - 네비게이션 타이틀 “혜택 검색” → “내가 가진 혜택 검색” 변경
    - 검색 후 결과뷰 '결제 혜택이 있는 카드' → '결제 혜택이 있는 나의 카드' 변경

  <b>4. 카드 추천</b>

    - 사용자의 소비패턴을 카테고리별로 도넛 그래프로 보여줌
    - 위 그래프를 기반으로 사용내역이 많은 카테고리에 대한 카드를 추천
  
  <b>5. 나의 소비(피드백 이전 **마이페이지)**</b>
  
    - 네비게이션 타이틀 “마이페이지” → “소비의 모든 것”으로 변경

## 최종 프로토타입
### 나의 카드 리스트
| <img width="200" src="https://user-images.githubusercontent.com/55937627/205227635-18cd146d-b183-4181-8e1e-75274c8a8278.gif"> | <img width="200" src="https://user-images.githubusercontent.com/55937627/205227902-07af678b-5468-46e5-a515-95b55e512c4a.gif">  <img width="200" src="https://user-images.githubusercontent.com/55937627/205231252-df497733-a78e-4948-a125-65f46ed3e195.gif"> |
|:-:|:-:|
| Before | After |

### 카드 추가
| <img width="200" src="https://user-images.githubusercontent.com/55937627/205229262-fbcdc054-cd9a-45ce-84d8-502fd9a51659.gif"> |  <img width="200" src="https://user-images.githubusercontent.com/55937627/205229225-09864b67-832a-4f6d-8511-f8f15d14eecd.gif"> |
|:-:|:-:|
| Before | After |

### 카드 정보 상세 내역
| <img width="200" src="https://user-images.githubusercontent.com/55937627/205229419-dc672221-6536-4d89-9f5a-19c92440c7f2.png"> |  <img width="200" src="https://user-images.githubusercontent.com/55937627/205229465-0844c707-742f-4e24-b3af-3e50332ad57b.png"><img width="200" src="https://user-images.githubusercontent.com/55937627/205229480-27872025-d212-4ee6-8296-7eb6537a4b18.png"><img width="200" src="https://user-images.githubusercontent.com/55937627/205229505-d58d477e-a29a-4f2f-b44e-341920d1508d.png"> |
|:-:|:-:|
| Before | After |

### 카드 추천
| <img width="200" src="https://user-images.githubusercontent.com/55937627/205229828-16bec7ed-2234-4b11-a597-c141a1bf8d3f.png"> | <img width="200" src="https://user-images.githubusercontent.com/55937627/205229841-7bbaf751-0863-46f7-9c8d-b6214a0ce63a.gif"> |
|:-:|:-:|
| Before | After |


## 참여자
|<img width="120" src="https://avatars.githubusercontent.com/u/57763334?v=4">|<img width="120" src="https://avatars.githubusercontent.com/u/114036537?v=4">|<img width="120" src="https://avatars.githubusercontent.com/u/107797217?v=4">|<img width="120" src="https://avatars.githubusercontent.com/u/55937627?v=4">|<img width="120" src="https://avatars.githubusercontent.com/u/80445363?v=4">|
|:---:|:---:|:---:|:---:|:---:|
|김도희<br>[@ehvkddl](https://github.com/ehvkddl)|김미주<br>[@mumjee03](https://github.com/mumjee03)|이민경<br>[@mxnkng](https://github.com/mxnkng)|이진아<br>[@l1004ga](https://github.com/l1004ga)|장다영<br>[@Da01002](https://github.com/Da01002)|
