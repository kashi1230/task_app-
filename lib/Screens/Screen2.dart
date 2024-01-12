
import 'package:flutter/material.dart';
import 'package:task_app/authsceen/loginScreen.dart';

class Screen2 extends StatelessWidget {
  var size ,height,width;
   Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor:Colors.white,
      body:Stack(
        children: [
          Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset("aseets/images/Saly-31.png",height: height/2),
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
                    const Text(" Make your project or daily task   ",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 18),),
                    const Text(" on track easily and seamlessly",style: TextStyle(fontWeight: FontWeight.w700,color:Colors.white,fontSize: 18,))
                    ,const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>loginSceen()));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 140,vertical: 11),
                            child: const Text("Login",style: TextStyle(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 125,vertical: 11),
                            child: const Text("Sign-Up",style: TextStyle(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                        ),
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
