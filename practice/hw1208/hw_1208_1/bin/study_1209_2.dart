void main() {
  String name = "이름";
  int age = 25;
  bool isStudent = false;

  // `final`은 최종적으로 확정된 변수 (변수였으나 최종 상수가 되는 경우) ; `const`는 처음부터 상수 취급

  final currentTime = DateTime.now();
  const pi = 3.141592;

  print("$name, $age, $isStudent, $currentTime, $pi");
}
