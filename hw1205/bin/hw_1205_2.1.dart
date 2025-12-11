void main() {
  int count = 0;
  int bill = 0;

  Map<String, int> price = {"티셔츠": 10000, "바지": 8000, "모자": 4000};
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  while (count < cart.length) {
    bill += price[cart[count]]!;
    count++;
  }

  print("장바구니에 $bill원 어치를 담으셨네요!");

  if (bill > 20000) {
    print("할인금액: ${(bill * 0.1).toInt()}원");
    print("최종 결제 금액은 ${(bill * 0.9).toInt()}원입니다!");
  } else {
    print("최종 결제 금액은 $bill원입니다!");
  }
}
