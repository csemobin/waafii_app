import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget{
  const LandingScreen({super.key});
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(" this is the Landing Page Screen")
      )
    );
  }
}