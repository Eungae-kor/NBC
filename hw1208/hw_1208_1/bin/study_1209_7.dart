enum Weather { sunny, cloudy, rainy }

// 문제: switch문으로 각각 다른 메시지 출력

void main() {
  var today = Weather.rainy;
  switch (today) {
    case (Weather.sunny):
      print("날씨가 맑아요.");
    case (Weather.cloudy):
      print("오늘은 흐려요.");
    case (Weather.rainy):
      print("비가 오네요.");
  }

  /* further 
원하는 결과물:
"날씨가 맑아요."
"오늘은 흐려요."
"비가 오네요." */

  for (var today in Weather.values) {
    if (today == Weather.sunny) {
      print("날씨가 맑아요.");
    } else if (today == Weather.cloudy) {
      print("오늘은 흐려요.");
    } else if (today == Weather.rainy) {
      print("비가 오네요.");
    }
  }

  // better way

  for (var today in Weather.values) {
    switch (today) {
      case Weather.sunny:
        print("날씨가 맑아요.");
        break;

      case Weather.cloudy:
        print("오늘은 흐려요.");
        break;

      case Weather.rainy:
        print("비가 오네요.");
        break;
    }
  }
  print(today.runtimeType);
}
