import 'package:app/components/bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  static const String route = "/home";

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: Bar(context,
        appTitle: "Inicio",
        visibleBack: false,
      ),
      body: Container(

      ),
    );
  }

}