import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_app/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../common/widgets/error_snackbar_loader.dart';
import '../../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Map<String, dynamic>>> snapshot =
  FirebaseFirestore.instance.collection('your_collection').doc('your_doc_id').get();

// Use await to get the snapshot before accessing exists

  Future<void> saverUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJSON());
    } on FirebaseAuthException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } on FirebaseException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } on FormatException catch (_) {
      throw ErrorSnackbarLoader().toString();
    } on PlatformException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } catch (e) {throw ErrorSnackbarLoader().toString();}
  }

  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db.collection("Users").doc(
          AuthenticationRepository.instance.authUser?.uid).get;
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      } on FirebaseAuthException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } on FirebaseException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } on FormatException catch (_) {
      throw ErrorSnackbarLoader().toString();
    } on PlatformException catch (e) {
      throw ErrorSnackbarLoader().toString();
    } catch (e) {throw ErrorSnackbarLoader().toString();}
    }
  }
}