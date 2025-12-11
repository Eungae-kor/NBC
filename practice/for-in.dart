void main() {
  List<String> winterFood = ["귤", "굴보쌈", "붕어빵", "대방어", "과메기", "양미리", "군고구마"];
  String best = "과메기";
  int count = 0;

  bool found = false;

  while (count < winterFood.length) {
    if (winterFood[count] == best) {
      found = true;
      print("찾았다 내 최애 겨울음식 $best!");
      break;
    }
    print("${winterFood[count]}도 좋지만,");
    count++;
  }

  if (!found) {
    print("나의 최애 겨울음식은 $best!");
  }
}
