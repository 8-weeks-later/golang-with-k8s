# 1주차(월)

## 한 일

1. [project-layout참고](https://github.com/golang-standards/project-layout)을 참고한 디렉토리 구조 설정.
   - 프로젝트 구조 설정하는게 다른 프레임워크, 언어에 비해 자유도가 상당히 높다. c언어같음.
   - go module을 사용하면 go.mod가 설치된 하위 디렉토리 어디에서든 go파일을 사용할 수 있다.
   - internal 이라는 이름이 붙은 디렉토리는 해당 디렉토리의 부모만 사용가능하다.

2. mysql dump
   - 테스트 데이터베이스를 덤프, private subnet에 위치한 데이터베이스라서 로컬->바스티온호스트->데이터베이스 이렇게 2중으로 덤프를 해와야하는 번거로움(보안 관점에선 장점일수도?)이 있었다.
  
3. db scheme
   - 아직 테스트는 안했고, pkg/models 에 분리만 해놓았다.

## 해야할일

- [ ] 쿼리 테스트
- [ ] 컨트롤러-서비스-레포지토리 패턴 적용
- [ ] k8s 홈서버 설치
