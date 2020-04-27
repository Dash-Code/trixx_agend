import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar extends AppBar{
  BuildContext context;
  bool visibleBack;
  String appTitle;
  List<Widget> appActions;
  Function() backFunction;


  Bar(this.context, {this.visibleBack = true, this.appTitle = "", this.appActions, this.backFunction});

  @override
  Color get backgroundColor => Theme.of(context).primaryColor;

  @override
  Widget get title => Text(appTitle);

  @override
  bool get centerTitle => true;

  @override
  Color get actionsForegroundColor => Colors.white;

  @override
  Widget get leading =>  visibleBack ? BackButton(
//      previousPageTitle: "Atrás",
      onPressed: backFunction != null ? backFunction : (){
        Navigator.pop(context);
      }
  ) : Container();

  @override
  EdgeInsetsDirectional get padding => EdgeInsetsDirectional.zero;

  @override
  // TODO: implement actions
  List<Widget> get actions => appActions != null ? appActions : super.actions;
}