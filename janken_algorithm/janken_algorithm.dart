import 'dart:math';

void main(List<String> arguments) {
  janken(you: "Rock.finger"); //グー
  janken(you: "Scissors.finger"); //チョキ
  janken(you: "Paper.finger"); //パー
}

void janken({String you = "Rock.finger"}) {
  //じゃんけんを実施する関数
  int youNum = 0;
  //change to number
  switch (you) {
    case "Rock.finger":
      youNum = 0; //グー
      break;
    case "Scissors.finger":
      youNum = 1; //チョキ
      break;
    case "Paper.finger": //パー
      youNum = 2;
      break;
    default:
      throw ArgumentError("Error @ janken/change to number");
  }
  int comNum = Random().nextInt(3); //コンピュータが出す手を生成
  printFinger(finger: youNum, isCom: false); //出す手を表示
  printFinger(finger: comNum, isCom: true);
  //judge
  final bool isWin = youNum == (comNum + 1) % 3; //説明変数
  if (youNum == comNum) {
    //あいこ
    print("あいこです\n");
  } else if (isWin) {
    //勝ち
    print("あなたの勝ちです\n");
  } else {
    //負け
    print("あなたの負けです\n");
  }
}

void printFinger({int finger = -1, bool isCom = false}) {
  //画面にそれぞれが出す手を出力する関数　コンピュータの出す手ならcom==true
  String player, sign;
  if (isCom) {
    player = 'Com';
  } else {
    player = 'You';
  }
  switch (finger) {
    case 0:
      sign = "グー";
      break;
    case 1:
      sign = "チョキ";
      break;
    case 2:
      sign = "パー";
      break;
    default:
      throw ArgumentError("Error @ print_finger");
  }
  print("$player:$sign");
  return;
}
