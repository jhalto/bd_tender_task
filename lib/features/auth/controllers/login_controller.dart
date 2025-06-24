import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var keepMeSigned = false.obs;
  var emailMe = false.obs;

  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
}