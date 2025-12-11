enum Beer { lager, pilsner, stout, ale }

void main() {
  var favoriteBeer = Beer.lager;
  var result = '내가 제일 좋아하는 맥주는 ';

  switch (favoriteBeer) {
    case Beer.lager:
      result += '라거!';
      break;
    case Beer.pilsner:
      result += '필스너!';
      break;
    case Beer.stout:
      result += '스타우트!';
      break;
    case Beer.ale:
      result += '에일!';
      break;
    default:
      result += '생맥주!';
      break;

      print(result);
  }
}
