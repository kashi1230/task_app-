import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task_app/const/common_widget/widgets.dart';
import '../Adminpanel/AdminHome.dart';

class loginapi extends GetxController{

  var ispasswordvisible = true.obs;
  @override
  TextEditingController idcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  Future<void> login() async {
    const String apiUrl = "https://creat8.in/taskapis/api/login";
    final String username = idcontroller.text;
    final String password =passcontroller.text;
    final String table = "users";

    Map<String, dynamic> requestData = {
      "client_id": username,
      "password" : password,
      "table" : "users",
    };
    try {
      final response = await http.post(
          Uri.parse(apiUrl),
          headers: {
            "Authorization" : "1"
          },
          body: jsonEncode(requestData),
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        // print(response.body);
        if(data['type'] == 'Admin'){
          Get.offAll(()=>AdminHome());
          idcontroller.clear();
          passcontroller.clear();
          showMessage(title: "Login Succesfull",content: ".");
        }
      } else {
        showMessage(title: "Alert",content: "Enter valid Credentiols");
        print("Failed to log in. Status code: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exception
      // print("Exception during login: $e");
    }
  }
}