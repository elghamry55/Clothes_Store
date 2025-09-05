










import 'package:flutter/material.dart';

import 'featuers/home/view/screen/ClothesScreen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ClothesScreen(),);
  }
}
