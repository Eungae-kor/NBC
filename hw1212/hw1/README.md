# 필수 정의
- 점수를 표현하기 위한 Score 클래스
    - 속성
        - 점수 (int)
    - 메서드
        - 출력 메서드 (showInfo())
        - 출력 형태
            ```
            점수: 90
            ```
- 학생의 점수를 표현하기 위한 StudentScore 클래스
    - 속성
        - 이름 (String)
        - 점수 (int)
    - 메서드
        - 출력 메서드 (showInfo())
        - 출력 형태
            ```
            이름: 홍길동, 점수: 90
            ```

# 필수 문제
## 1. Score와 StudentScore 클래스를 구성하기
[설명] 

- 점수를 표현하는 `Score` 클래스를 정의하고, 이를 상속받아 학생의 정보를 포함하는 `StudentScore` 클래스를 구현합니다.
- `Score` 클래스는 단순히 점수만 출력하지만, `StudentScore` 클래스는 학생 이름과 과목까지 포함하여 더 구체적인 정보를 출력합니다.

[조건]

- 상속 받는 클래스에서 함수 재정의하기. 함수 재정의는 아래와 같은 형식
    
    ```dart
    @override
    void show() {
    	// 코드 구현
    }
    ```

## 2. 파일로부터 데이터 읽어오기 기능
[설명]
    - 프로그램 시작 시 `students.txt` 파일에서 학생들 점수 목록을 받아옵니다.
        - **students.txt**
            
            ```dart
            홍길동,90
            김철수,80
            ```
            
    - 파일은 CSV 형식으로, 한 줄에 `이름,점수` 형태의 데이터가 저장되어 있습니다.
[조건]
    - 파일의 각 줄을 읽어 이름(`String`), 점수(`int`)로 분리합니다.
    - 분리한 데이터를 `StudentScore` 객체로 생성한 뒤, `List<StudentScore>`에 저장합니다.

[문제풀이]
1. lines 형태 확인 (print(lines);)

    ```dart
    import 'dart:io';

    String filePath = "lib/students.txt";

    final file = File(filePath);
    final lines = file.readAsLinesSync();

    void main() {
        print(lines);
    }
    // error: Undefined name 'lines'. Try correcting the name to one that is defined, or defining the name.
    ```
    (난관) lines는 filepath에 있는 한 줄 한 줄을 요소로 갖는 List<String>이라고 정의했는데, 왜 lines가 정의되지 않았다는 에러가?
    (추정) main 안으로 밀어넣으면 해결되지 않을까?
    ```dart
    import 'dart:io';

    void main() {
        String filePath = "lib/students.txt";
        
        final file = File(filePath);
        final lines = file.readAsLinesSync();
        
        print(lines);
    }
    // [홍길동,90, 김철수,80]
    ```