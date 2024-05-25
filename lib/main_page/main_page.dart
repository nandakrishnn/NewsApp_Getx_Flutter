import 'package:flutter/material.dart';
import 'package:newsapp/pages/home.dart';
import 'package:newsapp/pages/bottom_navigation.dart';
import 'package:newsapp/pages/top_10.dart';

class ScreenmainPage extends StatelessWidget {
   ScreenmainPage({super.key});


final pages=[
 
  Home(),
  Top10()
  
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: 

      ValueListenableBuilder(valueListenable: indexchangeNotifier, builder: (context,value,_){
        return pages[value];
      })),
      bottomNavigationBar: BtoomnavigationBar(),
    );
  }
}