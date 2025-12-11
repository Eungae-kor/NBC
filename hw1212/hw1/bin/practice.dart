void function() {
  print("저는 함수입니다.");
}

class Class {
  void method() {
    print("저는 메서드입니다.");
  }
}

void main() {
  function();

  Class object = Class();
  object.method();
}
