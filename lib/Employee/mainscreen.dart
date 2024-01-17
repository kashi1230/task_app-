import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/const/common_widget/widgets.dart';
import 'package:task_app/const/contoller/cmnController.dart';

class MainScreen extends StatelessWidget {
  var size,height,width;
   MainScreen({super.key});
   List<String> nameList =[
     "All",
     "Panding",
     "Review",
     "Completed"
  ];

  @override
  Widget build(BuildContext context) {

    cmnController cmnctrl = Get.put(cmnController());
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Hello Arun",style: TextStyle(fontSize: 18,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
                      Text("full stack devloper",style: TextStyle(fontSize: 14,color: Colors.deepPurpleAccent,fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20),
                  child: CircleAvatar(
                    radius: 25, // Change this radius for the width of the circular border
                    backgroundColor: Colors.deepPurple,
                    child: CircleAvatar(
                      radius: 24, // This radius is the radius of the picture in the circle avatar itself.
                      child: Image.asset("aseets/images/pngwing.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
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
            SizedBox(height: 16),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: nameList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Obx(
                                  () => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 28),
                                    child: Center(
                                      child: Text(nameList[index] ,
                                      style: TextStyle(
                                          color: cmnctrl.tap.value == index ? Colors.deepPurple : Colors.black45,fontSize: 14,)
                                                                    ),
                                    ),
                                  )),
                          onTap: () => cmnctrl.toggle(index),
                        );
                      }),
                )
              ],
            ),
        Expanded(
          child: Container(
            width: width,
              height: height,
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: 5,
                  itemBuilder:(context , index){
                    return Padding(
                      padding: const EdgeInsets.all(7),
                      child: Container(
                          width: height/2,
                          height: width/3.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.white),
                        child:Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                chip("High", 0xaffaa4a4),
                                SizedBox(width: 10,),
                                chip("Design", 0xffd9d9d9),
                                Container(
                                  child: ;,
                                )

                              ],
                            )
                          ),
                        )
                      ),
                    );
                  }),
            )
          ),
        )
          ],
        ),
      ),
    );
  }
}
