![아이디찾기](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/930bd36d-d134-4d38-beb0-37ea3b22386b)
# chazm
B1A3 세미프로젝트


![image](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/e18b35d2-ba31-4e13-afad-d26f469d34cf)


# 프로젝트명

- 찾음 - 분실물 종합관리 포털

---

# 팀 소개

**팀명** : B1A3 (B형 1명, A형 3명)

# 팀 역할

- 팀장
    - 장진경 : 발표, 습득물 등록 게시판
- 팀원:
    - 권태우 : 회원 관리 기능, 노션&깃허브 관리
    - 이기윤 :  분실물 등록 게시판, 메인페이지 통합 검색기능
    - 채성실 : PPT제작, 찾음+ 게시판

![image](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/56fcb23b-2aaf-4a31-a3aa-4952ecfc734b)



- 팀 노션:

  https://www.notion.so/71e5df0b3a38485680c651bdd14d56f9?v=7ffdd598dc67402dbd716e438951b7a8&pvs=4

---

# 기획의도 및 서비스 분석

- **기획의도 및 필요성**
    
    우리 팀의 프로젝트 "찾음"은 다음과 같은 기획의도와 필요성을 가지고 있습니다.
    
    1. **매년 증가하는 분실물 수**: 분실물이 계속 증가하고 있는데, 이를 관리하고 찾기 위한 필요성이 있습니다.
    2. **분실물 정보 분산**: 경찰청 유실물 통합센터와 대중교통 분실물 센터 사이트가 분산되어 있어 사용자에게 불편함을 초래합니다.
    3. **UI의 부재**: 기존 분실물 찾기 서비스의 UI가 직관적이지 않아 사용자 경험이 좋지 않습니다.
    4. **번거로움**: 분실물 습득 시 경찰서에 직접 찾아가야 하는 번거로움이 있습니다.
    
    위의 문제들을 해결하기 위해 "찾음"은 관리자와 일반 사용자 모두를 대상으로 분실물 조회 및 등록 서비스를 제공합니다. 관리자는 경찰서, 대중교통, 공공기관 및 개인사업장까지 포함하며, 개인사업장은 사업자 등록번호가 있으면 가입 가능합니다. 또한, "찾음"을 통해 습득된 분실물은 등록 후 7일 후에도 소유주를 찾지 못하면 경찰로 이관됩니다.
    

- **유사 사이트 분석**
    
    우리 프로젝트의 경쟁 서비스와 비교하여 차별성을 분석한 결과는 다음과 같습니다.
    
    - **lost112**: 경찰에서 운영하는 통합 센터로 신뢰성은 있으나 UI가 가시적이지 않고, 사진 정보 부족 및 습득물 정보가 간단하게 표시되어 중요한 정보가 누락되어 있습니다.
        
        URL : [https://www.lost112.go.kr/](https://www.lost112.go.kr/)
        
    - **대중교통 분실물 센터**: 서울시 사이트에서 운영되며 게시판 형태로 제공되어 사용자 경험이 부족합니다.
        
        URL : [https://www.seoul.go.kr/v2012/find.html?SSid=560_10](https://www.seoul.go.kr/v2012/find.html?SSid=560_10)
        

---

# 차별성(개발목표)

- "찾음"의 개발 목표와 유사 서비스와의 차별성은 다음과 같습니다.
    - **공공데이터 API 사용**: 공공데이터 API를 활용하여 신뢰성 있는 정보를 제공합니다.
    - **지도API 활용**: 지역별로 분실물 조회가 가능하도록 지도API를 이용합니다.
    - **간편한 등록 및 조회**: 관리자와 일반 사용자 모두가 간편하게 분실물을 등록하고 조회할 수 있습니다.
    - **데이터 검색 및 분류**: 간단한 데이터 검색 기능과 분명한 물품 분류를 제공합니다.
    - **자동 관할서 선택**: 분실 위치 등록 시 자동으로 관할 경찰서를 선택합니다.
    - **다양한 관리자 포함**: 공공기관 외에도 사업자 등록번호가 있는 기업 및 사업자를 관리자로 포함하여 분실물 관리를 가능하게 합니다.
    - **리워드 시스템**: 등급과 선물 또는 포상 시스템을 도입하여 사용자들에게 보상을 제공합니다.
    - **기부 시스템**: 주인을 찾지 못한 분실물들은 폐기처리가 됩니다. 그 중에서도 가장 인계률이 낮은 옷들을 찾음이 모아서 소외계층에게 기부합니다.
      
![image](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/3b7a879b-c686-4a65-b1db-987676bb6f3a)



---

# 주요기능

### 메인페이지

- **통합 검색창**: 분실물과 습득물을 모두 검색할 수 있는 통합 검색창을 제공합니다.
- **물품별, 장소별 카테고리 검색 버튼**: 물품 종류와 분실 장소에 따라 검색할 수 있는 버튼을 제공합니다.
- **찾음 통계**: 분실물 통계를 시각화하여 제공합니다.

### 찾음이란?

- **통계 및 법령 정보**: 분실물에 관한 통계 정보와 관련 법령 등을 제공합니다.

### 찾아주세요

- **분실물 등록&조회 게시판**: 일반 사용자가 분실물을 등록하고 조회할 수 있는 게시판을 제공합니다.
- **댓글 및 좋아요 기능**: 게시물에 댓글을 달고 좋아요를 누를 수 있습니다.

### 주인을 찾아요

- **습득물 조회 페이지**: 관리자들이 등록한 습득물을 조회할 수 있는 페이지를 제공합니다.
- **알림 기능**: 글 등록 시 비슷한 색상과 카테고리를 등록한 일반 사용자에게 알림 또는 이메일을 보냅니다.
- **일반 사용자용 게시판**: 일반 사용자 간의 소통을 도울 게시판을 제공합니다.
- **지도로 조회하기**: 마커를 클릭하면 해당 장소에 등록된 습득물이 표시됩니다.

### 찾음+

- **습득물 기부**: 의류를 중점으로 한 습득물 기부 기능을 제공합니다.
- **포인트 기부**: 포인트로 결식 아동, 피난민, 고아원 등에 기부할 수 있습니다.

### 회원 기능

- **회원가입**: 일반 사용자 및 관리자 회원가입을 지원합니다.
- **관리자**: 공공기관, 사업자 등록번호가 있는 사업자, 소재지 정보를 등록할 수 있습니다.
- **로그인**: 회원은 로그인하여 서비스를 이용할 수 있습니다.
- **분실물 등록**: 일반 사용자는 분실물 정보를 상세하게 등록할 수 있습니다.
- **분실물 수정 및 삭제**: 등록한 분실물 정보를 수정하거나 삭제할 수 있습니다.
- **글 리스트 조회**: 본인이 등록한 글 목록을 조회할 수 있습니다.
  
![image](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/a2c61814-35d5-4d0c-aa39-8a285d0897d8)


---

# 개발환경

- **프론트엔드**: HTML5, CSS3, JavaScript, Bootstrap, jQuery
- **백엔드**: Java, JSP, Apache Tomcat, Oracle, Spring
- **개발도구**: STS, VS Code, Maven, SQL Developer
- **협업도구**: GitHub, Slack

![image](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/730865fc-ec7c-4b29-96c2-581a389a70bc)




---

# 작업일정

우리 프로젝트의 작업 일정은 아래와 같습니다. 

![image](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/ac446233-0a82-481f-8221-eb0413a83f85)


---

# 구현화면

## 메인페이지
![메인](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/0b37cb99-c9f8-4dfe-b40c-346d20a66c6a)

## 회원가입
![회원가입1](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/90d50b14-540e-4315-9af4-2113f928d00b)
![회원가입2](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/0ecf4434-0538-4b7e-94b0-1f0bfd994aff)
![기업회원가입](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/e9669a98-b2ed-4351-988e-8cf531ef1316)

## 아이디/비밀번호 찾기
![아이디찾기](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/a79ad1bd-0d62-4005-9720-e0692f6af718)
![비밀번호찾기](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/ada7a3d0-756a-4497-b292-6793eccc674f)

## 로그인
![다운로드](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/de309e36-efe2-4834-9b49-80e47fd50a56)

## 마이페이지
![마이페이지](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/e303c69e-bf8e-46a5-92c2-5a15c1ba275e)


## 포인트 기부 페이지 목록
![포인트로기부해요_목록](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/e23fe1c4-8feb-4f7f-85d1-27dc96b5b0c0)

## 포인트 기부 페이지 상세
![포인트로기부해요_상세](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/323110d5-35ca-4b70-95a8-952fc4501446)


## 찾음 기부 페이지 리스트
![찾음이기부해요_리스트](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/86b2558e-a400-4c6d-86d7-7dd1439b2f51)

## 분실물 등록
![lostBoardinsert](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/ae7cc0ae-d983-4b85-995f-650f526b27b1)

## 분실물 등록 수정
![lostUpdate](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/0234b0f4-a805-49c7-ad95-a225e287181d)

## 분실물 리스트
![lostBoardlist](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/b119eaec-92f1-4d8e-a514-9afcf174cbff)

## 분실물 상세페이지
![lostBoardDetail](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/5f64463b-dd3d-4c1e-90f6-c6b43f301c27)

## 분실물 검색
![lostSearch](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/dd87fad0-6e39-4358-aa98-f39a80ba7b22)

## 분실물 삭제
![lostDelete](https://github.com/2305PublicDataWebApp/chazm/assets/134674169/6b0ec4d5-40ff-4170-ab98-7b66d711009d)
