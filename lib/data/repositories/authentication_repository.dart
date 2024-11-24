import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../common/widgets/error_snackbar_loader.dart';
import '../../features/shop/screens/home.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  //Called from main.dart on app launch
  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if(user != null) {
      Get.offAll(() => const Home());
    } else {
      Get.offAll(() => Home(email: _auth.currentUser?.email));
    }
  }
  ////Email & Password Sign In Authentication
  //Sign In Authentication
  //Register Authentication
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } on FirebaseException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } on FormatException catch (_) {
      throw ErrorSnackbarLoader().toString();
    } on PlatformException catch (e) {
    throw ErrorSnackbarLoader().toString();
    } catch (e) {
      throw ErrorSnackbarLoader().toString();
    }
  }
}