import 'package:flutter/material.dart';

class loginSceen extends StatelessWidget {
  var size,height,width;
   loginSceen({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return  Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60,top: 10),
                child: Image.asset("aseets/images/Saly-10.png",height: 400,width: 350,),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: height/1.8,
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
                  Text("Enter Your Employee credentials",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 2),textAlign: TextAlign.center),
                  SizedBox(height: 20),
                  _TextField(label: "NAME", icon: Icons.person),
                  SizedBox(height: 20),
                  _TextField(label: "PASSWORD", icon: Icons.lock),
                  SizedBox(height: 40),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                      },
                      child: Expanded(

                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 13),
                          child: const Text("Login",style: TextStyle(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold,color: Colors.black),),
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
    );
  }
}

class _TextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool hidden;

  const _TextField({
    Key? key,
    required this.label,
    required this.icon,
    this.hidden = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 50.0,
      width: 300,
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(12.0)
      ),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              cursorColor: Colors.black,
              obscureText: hidden,
              autocorrect: !hidden,
              enableSuggestions: !hidden,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
                suffixIcon: Icon(
                  icon,
                  color: Colors.black,
                ),
                // focusedBorder: UnderlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.pink.shade400,
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
