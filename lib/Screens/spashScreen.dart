
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/Screens/Screen2.dart';

class Splashscreen extends StatefulWidget {

   Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  var size,height,width;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      extendBody: true,
      body:Expanded(
        child: Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: SizedBox(
                      height: height/1.29,
                      width: width/0.8,
                      child: Image.asset("aseets/images/Saly-16.png")
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height/2.17,
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(child: Text("Get your Daily ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign: TextAlign.center,)),
                    const Text("Task Easily On Time",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign: TextAlign.center,),
                    const SizedBox(height: 20),
                    const Text(" Make your project or daily task   ",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 18),textAlign: TextAlign.center),
                    const Text(" on track easily and seamlessly",style: TextStyle(fontWeight: FontWeight.w700,color:Colors.white,fontSize: 18,),textAlign: TextAlign.center)
                    ,const SizedBox(height: 38,),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                           },
                        child: Expanded(

                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 13),
                            child: const Text("Get start",style: TextStyle(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
