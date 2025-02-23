import 'package:flutter/material.dart';


Route createRouteAnimation(Widget page, Curve c,  Offset begin, Offset end){
  return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => page, transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(position: animation.drive(Tween(
begin: begin, end: end
  ).chain(CurveTween(curve: c )) , ), child: child,),);
}