import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:task_app/Apicalling/loginapi.dart';
import 'package:task_app/const/common_widget/widgets.dart';


class loginSceen extends StatelessWidget {
  var size,height,width;
   loginSceen({super.key});
  @override
  Widget build(BuildContext context) {
    loginapi Loginapi = Get.put(loginapi());
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: BounceInDown(
                      duration: const Duration(milliseconds: 1300),
                      child: Image.asset("aseets/images/Saly-10.png",height: height/2.57,width:width/0.6)),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
              duration: const Duration(milliseconds: 1100),
                from: 400,
                child: Container(
                  width: width,
                  height: height/1.7,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 30,),
                       Text("Enter Your Employee credentials",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign: TextAlign.center),
                      SizedBox(height: 20,),
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('Ask your work provider about your credentials',textStyle: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign:TextAlign.center,),
                        ],
                        isRepeatingAnimation: true,
                      ),
                      SizedBox(height: 50),
                      ShakeX(
                          duration: const Duration(milliseconds: 1600),
                          child: Textfield(text: "Enter name",icon1:Icons.person_outline,controller: Loginapi.idcontroller,oscure: false)),
                      SizedBox(height: 25),
                     Obx(() =>  ShakeX(
                       duration: const Duration(milliseconds: 1600),
                       child: Textfield(
                           text: "Password",
                           icon1: Loginapi.ispasswordvisible.value==true ? Icons.remove_red_eye:Icons.visibility_off,
                           controller: Loginapi.passcontroller,
                           oscure:Loginapi.ispasswordvisible.value,
                           onpress2: (){Loginapi.ispasswordvisible.value=!Loginapi.ispasswordvisible.value;
                           }),
                     ),),
                      SizedBox(height: 45),
                       ShakeX(
                         duration: const Duration(milliseconds: 1600),
                         child: button(text: "Login",ontap:(){
                           Loginapi.login();
                           FocusScope.of(context).unfocus();
                         }),
                       )
                    ],
                  ),
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
