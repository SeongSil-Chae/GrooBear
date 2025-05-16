## 📂 GrooBear - 그룹웨어 협업 시스템

> 팀 협업과 프로젝트 관리를 통합한 웹 기반 그룹웨어 시스템입니다.
> 
> 실시간 알림, Gantt & Kanban 보드, 프로젝트 다단계 등록 등 실제 조직 업무에 최적화된 기능을 구현했습니다.
> 
> 다른 기능으로는 실시간 채팅, 전자결재, 메일, 일정관리, 커뮤니티 게시판 등이 있습니다.

---

## 🖥 메인 페이지

![메인](./preview/main/main.gif)

---

## 📊 대시보드 (탭1)

![대시보드](./preview/dashboard/dashboard.gif)

---

## 📁 프로젝트 목록 (탭2)

### 🔸 삭제 기능
![삭제](./preview/project-list/delete.gif)

### 🔸 필터 검색
![필터 검색](./preview/project-list/filter.gif)

### 🔸 엑셀 다운로드
![엑셀](./preview/project-list/excel.gif)

📎 결과 예시:
![엑셀결과](./preview/project-list/excel-result.png)

---

## 📝 프로젝트 생성 (탭2)

### 🔸 Step1 ~ Step4 입력 단계
- 기본 정보, 참여자 등록, 업무 등록, 주소 및 금액 설정, 최종 확인까지 포함

| Step | 미리보기 |
|------|----------|
| Step1 | ![step1](./preview/insert/insert1.gif) |
| Step2 | ![step2](./preview/insert/insert2.gif) |
| Step3 | ![step3](./preview/insert/insert3.gif) |
| Step4 | ![step4](./preview/insert/insert4.gif) |

---

## 🔍 프로젝트 상세 보기

![상세](./preview/project-detail/projectDetail.gif)

📎 업무 추가 화면:
![업무 추가](./preview/project-detail/taskAdd.png)

---

## 🛠 프로젝트 수정

![수정](./preview/update/update.gif)

---

## 📈 Gantt 차트 (탭3)

| 설명 | 예시 |
|------|------|
| 간트 기본 구성 | ![Gantt1](./preview/gantt/Gantt1.gif) |
| 간트 상세보기 | ![Gantt2](./preview/gantt/Gantt2.gif) |

---

## 🗂 프로젝트 칸반 보드 (탭4)

![프로젝트 칸반](./preview/project-kanban/projectKanban.gif)

---

## ✅ 업무 칸반 보드 (탭5)

| 구분 | 미리보기 |
|------|-----------|
| 업무 상태별 이동 | ![taskKanban1](./preview/task-kanban/taskKanban1.gif) |
| 업무 상세 보기 | ![taskKanban2](./preview/task-kanban/taskKanban2.gif) |

---

## 📌 기술 스택

| 분야 | 기술 스택 |
|------|------------|
| 🖼️ Frontend | ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black) ![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=flat-square&logo=jquery&logoColor=white) ![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=flat-square&logo=bootstrap&logoColor=white) |
| ⚙️ Backend | ![Java](https://img.shields.io/badge/Java-007396?style=flat-square&logo=java&logoColor=white) ![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=flat-square&logo=springboot&logoColor=white) ![MyBatis](https://img.shields.io/badge/MyBatis-000000?style=flat-square&logo=MyBatis&logoColor=white) ![JSP](https://img.shields.io/badge/JSP-00599C?style=flat-square) |
| 🗄️ Database | ![Oracle](https://img.shields.io/badge/Oracle-F80000?style=flat-square&logo=oracle&logoColor=white) |
| 🧩 기타 | ![WebSocket](https://img.shields.io/badge/WebSocket-FF9900?style=for-the-badge&labelColor=black&logo=websocket) ![DHTMLX Gantt](https://img.shields.io/badge/DHTMLX%20Gantt-2D8EFF?style=for-the-badge&labelColor=black) ![SweetAlert](https://img.shields.io/badge/SweetAlert-FFB6C1?style=for-the-badge&labelColor=black) ![Apache POI](https://img.shields.io/badge/Apache%20POI-4B6EAF?style=for-the-badge&labelColor=black) |


---

## 👩‍💻 담당 역할

- 프로젝트 전체 구조 설계 및 백엔드 구현 주도
- 프로젝트 5단계 입력 + 업무 구조 + 실시간 알림 기능 구현
- Gantt/ Kanban 연동, 업무 상태 전환 및 시각화 UI 설계
- 대시보드 데이터 통계 및 Excel 다운로드 구현

---


## 🛠 트러블슈팅

### 1. 조직도 선택값 초기화 문제

- **문제**: jsTree에서 조직도를 불러올 때마다 노드가 초기화되어 기존 선택값이 사라짐
- **해결**: 선택한 사원의 정보를 `JavaScript 배열`에 캐싱하여 트리 리로드 시에도 재반영
- **기술**: jsTree, DOM 캐시, 배열 기반 상태관리

---

### 2. 업무 추가 시 상위 업무 연동 오류

- **문제**: 업무를 추가할 때 `상위 업무`로 선택한 값이 `null`로 들어감
- **해결**: `select` 요소 변경 이벤트 감지 → hidden 필드에 상위 ID 갱신 로직 삽입
- **기술**: 이벤트 위임, `form` 구성 요소 분리

---

### 3. 파일 업로드 시 첨부파일 번호 누락

- **문제**: 파일을 선택해도 `ATCH_FILE_NO`가 0으로 유지되어 저장 실패
- **해결**: 서버 단에서 `insertFileList()`가 먼저 실행되도록 순서 조정 + 업로드 완료 후 `fileId` 반영
- **기술**: 파일 업로드 순서 동기화, `AttachFileService` 재정비

---

### 4. 업무 등록 시 업무명이 비어 있는 경우 등록되는 현상

- **문제**: 필수값인데도 업무명이 없는 업무가 등록됨
- **해결**: JavaScript에서 등록 전 유효성 검사 추가 + 서버단에서도 `빈 문자열 검증` 이중 처리
  
---


## 📘 프로젝트 회고

### ✅ 기술적으로 성장한 부분

- 실시간 알림 시스템(WebSocket) 구현을 통해 **동기화된 사용자 경험 설계**에 대한 이해도를 높임
- 단일 JSP 페이지에서 탭별 기능을 구성하며 **AJAX 기반 SPA 유사 구조 구현 경험**을 축적
- VO 분리(GanttTaskVO / KanbanTaskVO / ProjectTaskEntity)를 설계하며 **도메인별 책임 분리와 확장성**을 고려한 설계 경험

---

### 🤝 협업에서 배운 점

- 참여자 역할 정리 및 브랜치 전략을 통해 **업무 충돌 없이 협업 관리** 가능함을 경험
- 주도적으로 문서화와 회의 정리를 하며 팀원 간 커뮤니케이션의 중요성을 체감

---

### 💡 개선하고 싶은 점

- 디자인과 반응형 레이아웃 설계에서 부족함을 느껴 프론트엔드 영역에 대한 감각과 리팩토링 경험을 더 늘릴 필요가 있음
- DB 설계 초기에 정규화/반정규화 판단 기준이 부족했음 → 더 많은 ERD 구조 사례 학습 예정

---

### 🧠 개인적인 성장

> "개발은 단순히 기능을 만드는 것이 아니라, 사용자와 팀을 이해하고 **끝까지 작동하게 만드는 과정**이다."  
> 프로젝트를 통해 **끝까지 책임지고 마무리하는 개발자**의 자세를 다졌다고 생각합니다.





## 🔗 관련 링크

- 🧾 [포트폴리오 메인 페이지](https://seongsil-chae.github.io/portfolio/)
- 📦 [GitHub 저장소](https://github.com/SeongSil-Chae/GrooBear)
