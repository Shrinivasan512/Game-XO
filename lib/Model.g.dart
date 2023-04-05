// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Model on _HomeScreenModelBase, Store {
  late final _$showWinnerAtom =
      Atom(name: '_HomeScreenModelBase.showWinner', context: context);

  @override
  String get showWinner {
    _$showWinnerAtom.reportRead();
    return super.showWinner;
  }

  @override
  set showWinner(String value) {
    _$showWinnerAtom.reportWrite(value, super.showWinner, () {
      super.showWinner = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setwinner({required String showWinner}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setwinner');
    try {
      return super.setwinner(showWinner: showWinner);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showWinner: ${showWinner}
    ''';
  }
}
