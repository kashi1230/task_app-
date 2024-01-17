import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

//button reuseble widget
Widget button({ontap ,required String text}){
  return  Material(
    borderRadius: BorderRadius.circular(10),
    child: InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 110,vertical:12),
        child: Text(text,style: TextStyle(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
    ),
  );
}


//dialoge box
Future showMessage({String? title,String? content}){
  return  showDialog(
      context: Get.context!,
      builder: (context) {
        return ElasticIn(
          child: SimpleDialog(
            backgroundColor: Colors.white70,
            alignment: Alignment.topCenter,
            titleTextStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.7,),
            title: Text(title!,textAlign: TextAlign.center),
            contentPadding: EdgeInsets.all(20),
            children: [
              Text(content!,textAlign: TextAlign.center,style: GoogleFonts.lato(letterSpacing: 1,fontWeight: FontWeight.w500,color: Colors.black,fontSize: 15,),)
            ],
          ),
        );
      });;
}

Widget chip (String text , int color){
  return  Container(
      width: 50,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(color)),
      child: Center(child: Text(text)),
  );
}

//Textfield
Widget Textfield({required String text, required IconData icon1, TextEditingController? controller ,required bool oscure,onpress2}){

  return  SizedBox(
    height: 60,
    width: 280,
    child: TextFormField(
      cursorColor: Colors.black,
      obscureText: oscure,
      controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
        filled: true,
        hintText: text,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10)
        ),
         suffixIcon:InkWell(
           onTap: onpress2,
           child: Icon(icon1),
         )
    )
    ),
  );


}