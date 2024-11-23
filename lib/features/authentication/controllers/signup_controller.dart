import 'package:fashion_app/data/repositories/authentication/authentication_repository.dart';
import 'package:fashion_app/data/repositories/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/services/network_manager.dart';
import '../../shop/screens/home.dart';
import '../models/user_model.dart';
import 'fullscreen_loader.dart';

import 'package:fashion_app/utils/constants/image_strings.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  //Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  //Sign Up

  void signup() async{
    try {
      //Start Loading
      FullscreenLoader.openLoadingDialog('Đang xử lý thông tin...', Images.animation);

      //Check Internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {return;}

      //Form Validation
      if(!signupFormKey.currentState!.validate()) {return;}

      //Register user in Firestore Firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(
          email.text.trim(), password.text.trim()
      );

      //Save user data in Firestore Firebase
      final newUser = UserModel(
          id: userCredential.user!.uid,
          username: firstName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      userRepository.saverUserRecord(newUser);
      
      Get.to(() => const Home());

    } catch(e) {
      Widget error = const Text('Xảy ra lỗi rồi!!!');
    } finally {
      FullscreenLoader.stopLoading();
    }
  }
}