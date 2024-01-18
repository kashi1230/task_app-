import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/const/common_widget/widgets.dart';
import 'package:task_app/const/contoller/cmnController.dart';
import 'package:velocity_x/velocity_x.dart';

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
    return Padding(
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
                      child: Image.asset("aseets/images/pngwing.png",fit: BoxFit.fill,),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       "All  Task".text.color(Colors.white).size(18).make()
                       ]
                   ),
                   Row(
                     children: [
                       Icon(Icons.watch_later_outlined,color: Colors.white,),
                       " 2d".text.color(Colors.white).size(16).make()
                       ]
                   ),
                 ],
               ).box.padding(EdgeInsets.only(top: 12,left: 12,right: 12,bottom: 4)).make(),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                      itemBuilder:(context , index){
                        return Container(
                            height: width/2.7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.white),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      chip("High", 0xaffaa4a4),
                                  SizedBox(width: 10,),
                                  chip("Design", 0xffd9d9d9),],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.watch_later_outlined,),
                                      " 2d".text.size(16).make()
                                      ]
                                  ),
                                ],
                              ).box.padding(EdgeInsets.only(top: 12,left: 10,right: 10)).make(),
                              Padding(
                                padding: const EdgeInsets.only(top: 2,left: 12),
                                child: "market surgeon landing page ".text.fontWeight(FontWeight.w300).size(22).make(),
                              ),
                              Row(
                                children: [
                                  "Assigned By - jhon".text.fontWeight(FontWeight.w500).size(2).make(),
                                  "    submit date - 16/dec/2023".text.fontWeight(FontWeight.w500).size(3).make(),
                                ],
                              ).box.padding(EdgeInsets.only(left: 18)).make(),
                              Row(
                                children: [
                                  Obx(() => Container(
                                    child: Slider(
                                      onChanged: (s) {
                                        cmnctrl.oncahngeValue.value = s;
                                      },
                                      value: cmnctrl.oncahngeValue.value,
                                      max: 100,min: 0,
                                      label: "Slide",
                                      activeColor: Colors.deepPurple,
                                    ),
                                    height: 30,
                                    width: 330,
                                  ),),
                                Obx(() =>  "${cmnctrl.oncahngeValue.value.toStringAsFixed(0)}%".text.make()),
                                ],
                              ).box.padding(EdgeInsets.only(top: 6)).make(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        child: Image.asset("aseets/images/pngwing.png"),
                                        radius: 10,
                                      ),
                                      CircleAvatar(
                                        child: Image.asset("aseets/images/pngwing.png"),
                                        radius: 10,
                                      ),
                                      CircleAvatar(
                                        child: Image.asset("aseets/images/pngwing.png"),
                                        radius: 10,
                                      ),
                                    ],
                                  ),
                                  "View More".text.color(Colors.deepPurpleAccent).make().box.padding(EdgeInsets.only(right: 10)).make(),
                                ],
                              ).box.padding(EdgeInsets.only(left: 15)).make()
                            ],
                          )
                        ).box.padding(EdgeInsets.only(left: 15,right: 15,bottom: 20)).make();
                      }),
                ),
              ],
            )
          ),
        )
          ],
        ),
    );
  }
}
