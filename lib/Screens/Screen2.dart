
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/authsceen/loginScreen.dart';
import 'package:task_app/const/common_widget/widgets.dart';

class Screen2 extends StatelessWidget {
  var size ,height,width;
   Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      extendBody: true,
      backgroundColor:Colors.white,
      body:Stack(
        children: [
          Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: BounceInDown(
                  duration: const Duration(milliseconds: 1200),
                  child: Image.asset("aseets/images/Saly-31.png",height: height/2)),
            )
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
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Get your Daily ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 1)),
                    const Text("Task Easily On Time",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 1),),
                    const SizedBox(height: 15),
                    const Text(" Make your project or daily task   ",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.white,fontSize: 18),),
                    const Text(" on track easily and seamlessly",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.white,fontSize: 18,))
                    ,const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: SlideInLeft(
                          duration: const Duration(milliseconds: 1000),
                          child: button(text: "      Login   ",ontap: (){Get.to(()=>loginSceen());})),
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.center,
                      child: SlideInRight(
                        duration: const Duration(milliseconds: 1000),
                        child: button(
                            text: "    Sign-up ",
                            ontap: (){
                              // Get.to(()=>loginSceen());
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
