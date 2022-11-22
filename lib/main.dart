import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: puzz(),));
}


class puzz extends StatefulWidget {
  const puzz({Key? key}) : super(key: key);

  @override
  State<puzz> createState() => _puzzState();
}

class _puzzState extends State<puzz> {
  String msg = "game is running";
  List<String> l = List.filled(9, "");
  List<String> l1 = List.filled(8, "");
  int j = 0, k = 0, i = 0, k1 = 0;
  String ki = "";
  int cnt = 0,temp = 0;
  String str = "",s1 = " ";
  bool winner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "PUZZLE",
              style: TextStyle(color: Colors.black, fontSize: 40)
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              msg = "game is running";
                              l = List.filled(9, "");
                              l1 = List.filled(8, "");
                              j = 0;k = 0;i = 0;k1 = 0; temp = 0;
                              ki = "";cnt = 0;str = "";s1 = " ";winner = false;
                              j = Random().nextInt(9);

                              l[j] = "";
                              for (int z = 0; z < 9; z++) {
                                if (z < j) {
                                  l[i] = log();
                                  i++;
                                } else if (z == j) {
                                  i++;
                                  continue;
                                } else if (z > j) {
                                  l[i] = log();
                                  i++;
                                }
                              }
                              setState(() {});
                            },
                            child: Container(
                                height: 200,
                                width: 200,
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text(
                                  "Start",
                                  style: TextStyle(color: Colors.black, fontSize: 40),
                                )
                            )
                        )
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(child: InkWell(
                        onTap: () {},
                        child: Container(
                            height: 200,
                            width: 200,
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Text(
                              msg,
                              style: TextStyle(color: Colors.black, fontSize: 40),
                            )
                        )
                    )
                    )
                  ],
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    abc(0),
                    abc(1),
                    abc(2),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    abc(3),
                    abc(4),
                    abc(5),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    abc(6),
                    abc(7),
                    abc(8),
                  ],
                )
            ),
          ],
        )
    );
  }
  log() {
    k1 = Random().nextInt(8);
    while (true) {
      if (l1.contains(k1.toString())) {
        k1 = Random().nextInt(8);
      } else {
        break;
      }
    }
    ki = k1.toString();
    l1[k] = ki;
    k++;
    k1 = int.parse(ki);
    k1++;
    ki = k1.toString();
    return ki;
  }
  abc(int i) {
    return Expanded(
        child: InkWell(
            onTap: () {
              check(i);
              win();
              setState(() {});
            }, child: Container(
          height: double.infinity,
          width: 200,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: const ShapeDecoration(
              color: Colors.indigo,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  side: BorderSide(width:5))),
          child: Text(l[i],style: TextStyle(fontSize: 40),),
        )
        ));
  }win() {
    if (l[0] == "1" && l[1] == "2" && l[2] == "3" && l[3] == "4" && l[4] == "5" && l[5] == "6" &&l[6] == "7" &&l[7] == "8" && l[8] == "") {
      msg = "you win..";
      winner = true;
    }
  }
  check(int i) {
    if (!winner) {
      if (j == 0) {
        if (i == 1 || i == 3 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 1) {
        if (i == 0 || i == 2 || i == 4) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 2) {
        if (i == 1 || i == 5 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 3) {
        if (i == 0 || i == 4 || i == 6) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 4) {
        if (i == 1 || i == 3 || i == 5 || i == 7) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 5) {
        if (i == 2 || i == 4 || i == 8) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 6) {
        if (i == 3 || i == 7 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 7) {
        if (i == 6 || i == 4 || i == 8) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 8) {
        if (i == 5 || i == 7 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      }
    }
  }
}

