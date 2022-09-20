import 'package:ciat/screens/screens.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final index;
  const Routes({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [Principal(), InputsScreen(), ListRegister()];
    return myList[index];
  }
}
