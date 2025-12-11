void main() {
  int count = 1;

  for (count = 1; count < 4; count++) {
    print("안녕!");
  }

  int sum = 0;
  int count2 = 1;
  while (count2 < 6) {
    sum += count2;
    count2++;
  }
  print(sum);
}
