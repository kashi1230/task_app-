import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Hello Arun",style: TextStyle(fontSize: 22,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
                        Text("full stack devloper",style: TextStyle(fontSize: 14,color: Colors.deepPurpleAccent,fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:35),
                    child: CircleAvatar(
                      radius: 40, // Change this radius for the width of the circular border
                      backgroundColor: Colors.deepPurple,
                      child: CircleAvatar(
                        radius: 38, // This radius is the radius of the picture in the circle avatar itself.
                        child: Image.asset("aseets/images/pngwing.png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 28,right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Task",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                    Icon(Icons.search,size: 30,)
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
