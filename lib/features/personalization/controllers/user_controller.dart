import 'package:fashion_app/data/repositories/user_repository.dart';
import 'package:fashion_app/features/authentication/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../common/widgets/not_saved_snackbar_loader.dart';
import '../../../utils/constants/colors.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final userRepository = UserRepository();
      final userDetails = await userRepository.fetchUserDetails();
      user.value = userDetails;
    } catch (e) {
      user.value = UserModel.empty();
    }
  }

  Future<void> saverUserRecord(UserCredential? userCredentials) async {
    try {
      if(userCredentials != null) {
        final nameParts = UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username = UserModel.generateUserName(userCredentials.user!.displayName ?? '');
        
        final user = UserModel(
            id: userCredentials.user!.uid,
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            username: username,
            email: userCredentials.user!.email ?? '',
            phoneNumber: userCredentials.user!.phoneNumber  ?? '',
            profilePicture: userCredentials.user!.photoURL ?? '',
        );

        await userRepository.saverUserRecord(user);
      }
    } catch (e) {
      Get.snackbar('Lỗi', 'Chưa lưu dữ liệu', backgroundColor: AppColors.warning);
    }
  }
}