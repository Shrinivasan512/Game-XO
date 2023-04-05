import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'Model.g.dart';

class Model = _HomeScreenModelBase with _$Model;

abstract class _HomeScreenModelBase with Store {
  ObservableList<String> collectionElements = ObservableList();
  bool isCrossAssign = false;
  bool str=false;
  void statebool({required bool str})=>this.str=str;
  @observable
  String showWinner="";
  @action
  void setwinner({required String showWinner})=>this.showWinner=showWinner;
  
}
