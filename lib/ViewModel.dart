import 'dart:math';
import 'package:flutter/services.dart';
import 'package:game/Model.dart';
import 'package:mobx/mobx.dart';

class ViewModel extends Model {
  ViewModel() {
    collectionElements =
        ObservableList.of(["", "", "", "", "", "", "", "", ""]);
    showWinner;
  }

  void tapp(int index) {
    if (collectionElements[index] == "" && showWinner == "") {
      if (isCrossAssign) {
        collectionElements[index] = "circle";
        isCrossAssign = false;
      } else {
        collectionElements[index] = "close";
        isCrossAssign = true;
      }
    }
    winner();
  }

  void update() {
    str = false;
    for (int i = 0; i < collectionElements.length; i++) {
      collectionElements[i] = "";
    }
    count = 0;
    showWinner = "";        
  }

  int count = 0;

  winner() async {
    if (collectionElements[0] == collectionElements[1] &&
        collectionElements[0] == collectionElements[2] &&
        collectionElements[0] != "") {
      showWinner = "${collectionElements[0]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      print("${collectionElements[0]} the winner");
      print(count);
    } else if (collectionElements[3] == collectionElements[4] &&
        collectionElements[3] == collectionElements[5] &&
        collectionElements[3] != "") {
      showWinner = "${collectionElements[3]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      print("${collectionElements[3]}");
      print(count);
    } else if (collectionElements[6] == collectionElements[7] &&
        collectionElements[6] == collectionElements[8] &&
        collectionElements[6] != "") {
      showWinner = "${collectionElements[6]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      print("${collectionElements[6]}");
      print(count);
      return;
    } else if (collectionElements[0] == collectionElements[3] &&
        collectionElements[0] == collectionElements[6] &&
        collectionElements[0] != "") {
      showWinner = "${collectionElements[0]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      return;
    } else if (collectionElements[1] == collectionElements[4] &&
        collectionElements[1] == collectionElements[7] &&
        collectionElements[1] != "") {
      showWinner = "${collectionElements[1]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }

      count++;
      print("${collectionElements[1]}");
      print(count);
      return;
    } else if (collectionElements[2] == collectionElements[5] &&
        collectionElements[2] == collectionElements[8] &&
        collectionElements[2] != "") {
      showWinner = "${collectionElements[2]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      print("${collectionElements[6]}");
      print(count);
      return;
    } else if (collectionElements[0] == collectionElements[4] &&
        collectionElements[0] == collectionElements[8] &&
        collectionElements[0] != "") {
      showWinner = "${collectionElements[0]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      return;
    } else if (collectionElements[2] == collectionElements[4] &&
        collectionElements[2] == collectionElements[6] &&
        collectionElements[2] != "") {
      showWinner = "${collectionElements[2]} the winner";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      return;
    } else if (collectionElements[0] != "" &&
        collectionElements[1] != "" &&
        collectionElements[2] != "" &&
        collectionElements[3] != "" &&
        collectionElements[4] != "" &&
        collectionElements[5] != "" &&
        collectionElements[6] != "" &&
        collectionElements[7] != "" &&
        collectionElements[8] != "") {
      showWinner = "The  game tied";
      str = true;
      await Future.delayed(Duration(seconds: 03));
      if (str == true) {
        update();
      }
      count++;
      return;
    }
  }
}
