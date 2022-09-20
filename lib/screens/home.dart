import 'package:ciat/screens/routes.dart';
import 'package:ciat/screens/screens.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  ButtonNavigator? myBNB;
  @override
  void initState() {
    super.initState();
    myBNB = ButtonNavigator(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Routes(
        index: index,
      ),
      bottomNavigationBar: myBNB,
    );
  }
}
