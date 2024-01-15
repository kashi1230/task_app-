
import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/Screens/Screen2.dart';
import 'package:task_app/const/common_widget/widgets.dart';

class Splashscreen extends StatefulWidget {

   Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      extendBody: true,
      body:Stack(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: FadeInLeft(
                    duration: const Duration(milliseconds: 1250),
                    child: Image.asset("aseets/images/Saly-16.png",height: height/1.41,
                      width: width/1.0,)),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FadeInUp(
              duration: const Duration(milliseconds: 1250),
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
                     Align(child: ZoomIn(
                         duration: const Duration(milliseconds: 1600),
                        child: Text("Get your Daily ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign: TextAlign.center,))),
                    ZoomIn(
                        duration: const Duration(milliseconds: 1600),
                        child: const Text("Task Easily On Time",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign: TextAlign.center,)),
                    const SizedBox(height: 20),
                    const Text(" Make your project or daily task   ",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.white,fontSize: 18),textAlign: TextAlign.center),
                    const Text(" on track easily and seamlessly",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.white,fontSize: 18,),textAlign: TextAlign.center)
                    ,const SizedBox(height: 38,),
                   Bounce(
                     duration: const Duration(milliseconds: 1800),
                     child: button(text: "Get Started",ontap: (){
                       Get.offAll(()=>Screen2());
                     }),
                   )
                  ],
                ),
              ),
            ),

          )
        ],
      ),
    );
  }
}
