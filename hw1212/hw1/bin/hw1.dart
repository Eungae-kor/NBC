// 점수를 표현하는 Score 클래스 정의
class Score {
  int score;

  Score(this.score);

  void showInfo() {
    print("점수: $score");
  }
}

// Score를 상속받아 학생의 정보를 포함하는 StudentScore 클래스 구성
class StudentScore extends Score {
  String name;
  StudentScore(
    this.name,
    super.score,
  ); /* 여기에서 this를 쓰면 에러가 나는데 super를 쓰면 에러가 나지 않음. 
        왜 this를 쓸 수 없는지, this를 쓰려면 어떻게 해야하는지 이해하지 못한 채 일단 super를 사용함ㅠ */

  @override
  void showInfo() {
    print("이름: $name, 점수: $score");
  }
}

// 필수 정의에 따른 점수와 학생 점수 출력하기
void main() {
  Score s = Score(90);
  s.showInfo();

  StudentScore ss = StudentScore("홍길동", 90);
  ss.showInfo();
}
