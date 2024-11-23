import 'package:fashion_app/common/widgets/appbar.dart';
import 'package:fashion_app/common/widgets/section_heading.dart';
import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../common/widgets/profile_detail.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
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
              ProfileDetail(onPressed: () {}, title: 'Tên', value: 'Xuân Nhi'),
              ProfileDetail(onPressed: () {}, title: 'Tên người dùng', value: 'Xuân Nhi'),

              SectionHeading(title: 'Thông tin cá nhân', showActionButton: false,),
              SizedBox(height: Sizes.spaceBtwItems / 2),
              ProfileDetail(onPressed: () {}, title: 'Mã người dùng', value: '22497'),
              ProfileDetail(onPressed: () {}, title: 'Email', value: 'lmxnhi04@gmail.com'),

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