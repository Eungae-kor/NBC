import 'dart:math'; // dart:math를 import 해야 한다는 것 - GPT 도움

void main() {
  // 45개 숫자 목록 도출
  int count = 1;
  Set<int> all = {};

  while (count < 46) {
    all.add(count);
    count++;
  }

  // 복권 번호 발급
  int choice = 1;
  Set<int> lotto = {};

  while (choice < 7) {
    var i = Random().nextInt(47); // Random().nextInt()의 사용법 - GPT 도움
    lotto.add(i);
    choice++;
  }

  print("발급한 로또 번호: $lotto");

  //발급한 번호의 대조와 일치하는 번호 개수 세기
}
