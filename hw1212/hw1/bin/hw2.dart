import 'dart:io';

// 과제에서 긁어옴. 이하는 이 코드를 독해하는 과정을 주석으로 작성함.
void loadStudentData(String filePath) {
  // String filePath = "lib/students.txt"; 실제로 파일 위치 넣고 빌드하다가, 나중에 함수값으로 패스 위치 넣으면 될 것 같아서 주석처리함.
  try {
    final file = File(filePath); // dart:io 라이브러리 활용. filePath에 있는 파일을 참고한다.
    final lines = file.readAsLinesSync(); /* dart:io 라이브러리 활용. 파일의 인코딩을 활용하여 파일 내의 각 라인을 String 타입의 List로 변환. 
                                            => final lines는 List<String>임.
                                            => print(lines); // [홍길동,90, 김철수,80] */

    for (var line in lines) {
      final parts = line.split(','); /* file 내 하나하나의 line에 들어있는 데이터를 ',' 기준으로 둘로 구분.
                                        (기존) List<String> lines = ["홍길동,90", "김철수,80"]
                                        => .split 이후 print(part); // [홍길동, 90] [김철수, 80] */
      if (parts.length != 2) throw FormatException('잘못된 데이터 형식: $line'); 
        /* 
        print(part); 
        print(parts.length); 
        //
        [홍길동, 90]
        2
        [김철수, 80]
        2
        => parts는 각각 length(요소의 개수)가 2개인 List<String> 2개로 구성되어 있음
          [의문] 그럼 part는 List<String>1, 2를 요소로 하는 Set인가? // 아님. // 왜 아니지?
                part를 프린트하면 리스트가 2개 나오는데? 여기서부터 헷갈림.
        */ 

      String name = parts[0]; // String 타입의 name이라는 이름의 매개변수의 자리에는 parts의 첫 번째 요소를 대입함.
      int score = int.parse(parts[1]); // int 타입의 score라는 이름의 매개변수의 자리에는 parts의 두 번째 요소를 int로 파싱하여 대입함.

      /*여기까지는 데이터를 가공한 매개 변수의 선언만 되어 있고, 그 선언된 매개 변수를 어떤 결과물로 산출할지는 정해져있지 않음.
      -> return에서 결과물을 정해줘야할 듯*/
    }
  } /* try문 끝 -- 왜 try-catch로 감쌌는가? 예외처리를 위해.*/ catch (e) {
    print("학생 데이터를 불러오는 데 실패했습니다: $e");
    exit(1);
  } /* catch문 끝 */
  return;
  /* void loadStudentData 함수를 돌렸을 때 결과값으로 무엇을 반환할 것인가.
  반환값을 정하려면 이 함수가 왜 필요한지, 앞으로 어떻게 활용할 것인지 생각해봐야 함.
  class StudentScore라는 설계도에 name과 score에 해당하는 데이터를 쌍으로 갖는 리스트(내 생각엔 Map이어야 할 것 같은데 문제에서 List를 만들라고 했으니까)를 만들어야 함.
  => return에서 반환값으로서 리스트를 만들 수 있는가? Nope. 여기서는 리스트에 들어갈 요소들을 반환하도록 하고 그걸 받아서 리스트를 만드는 게 나을 듯.
  [의문] 
  1. 리스트에 요소로 넣을 수 있는 반환값을 어떻게 변환하지?? "$name, $score"로 반환하면 score를 파싱한 의미가 없어진다. 
    1-1. 리스트는 두 개 타입의 변수값을 동시에 가질 수 없다. 그래서 내가 Map타입을 써야 한다고 생각했나보다.
    1-2. 각각 다른 타입의 리스트를 2개 반환해야 할 듯. 그런데 이게 하나의 함수로 가능한 일인가?---- 일단 여기까지 함.
  */
}

class StudentScore {
  String name;
  int score;

  StudentScore(this.name, this.score);

  /* 난관 1.
[의문] class StudentScore를 loadStudentData와 어떻게 연결하지? 이 연결에 대한 내용은 설계도(class) 내에 들어가있어야 하지 않나?
[추정] 
1. loadStudentData는 함수임. -> 이 함수를 사용해서 Map을 만든 후에 StudentScore를 연결하면 될 듯.
  1-1. [의문] 문제에서는 Map이 아닌 List를 요구하였음. 이름: "$name, 점수: $score" 형태의 String type 리스트를 원하시는 건가? 왜 Map이 아니라 List? Map으로 하면 난이도가 더 높아져서 인가?
2. class는 설계도. 생성자에서 데이터를 어떻게 끌어올 건지는 void main 에서 진행하면 될듯. */
}

// List만들기 -- (전략) 빈 리스트를 만들어놓고, for문 돌려서 값을 채워 넣자. 
List<StudentScore> list = []; 



}