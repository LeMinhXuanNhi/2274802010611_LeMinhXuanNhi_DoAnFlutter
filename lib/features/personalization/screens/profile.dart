import 'package:fashion_app/common/widgets/appbar.dart';
import 'package:fashion_app/common/widgets/section_heading.dart';
import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/profile_detail.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../controllers/user_controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Hồ sơ'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              //Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 80, // Image radius
                      backgroundImage: AssetImage(Images.user),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: const Text('Thay hình ảnh'),
                    ),
                  ],
                ),
              ),
              //Details
              SizedBox(height: Sizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: Sizes.spaceBtwItems / 2),

              SectionHeading(title: 'Hồ sơ cá nhân', showActionButton: false,),
              SizedBox(height: Sizes.spaceBtwItems / 2),
              ProfileDetail(onPressed: () {}, title: 'Tên', value: controller.user.value.fullName),
              ProfileDetail(
                  onPressed: () {}, title: 'Tên người dùng',
                  value: controller.user.value.username
              ),

              SectionHeading(title: 'Thông tin cá nhân', showActionButton: false,),
              SizedBox(height: Sizes.spaceBtwItems / 2),
              ProfileDetail(onPressed: () {}, title: 'Mã người dùng', value: controller.user.value.id),
              ProfileDetail(onPressed: () {}, title: 'Email', value: controller.user.value.email),
              ProfileDetail(onPressed: () {}, title: 'SĐT', value: controller.user.value.phoneNumber),

              Center(
                child: TextButton(
                    onPressed: (){},
                    child: Text('Đăng xuất', style: TextStyle(color: Colors.red)
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}