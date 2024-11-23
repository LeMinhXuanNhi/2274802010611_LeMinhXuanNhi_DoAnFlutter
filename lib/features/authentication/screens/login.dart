import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/styles/spacing_style.dart';
import '../../../nav_menu.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Headed
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chào mừng, ',
                  style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: Sizes.sm),
                  Text('Đến với app mua sắm thời trang của chúng tôi',
                    style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              //Form
              Form(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ////Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: Sizes.spaceBtwInputFields),

                    //Password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: 'Mật khẩu',
                        suffixIcon: Icon(Icons.hide_source),
                        ),
                      ),
                    const SizedBox(height: Sizes.spaceBtwInputFields / 2),

                    //Remember Me & Forgot Password
                    Row(
                      children: [
                        //Remember me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value){}),
                            const Text('Nhớ mật khẩu')],
                        ),

                        //Forgot Password
                        TextButton(
                            onPressed: (){},
                            child: const Text('Quên mật khẩu'),
                          ),
                        ],
                      ),
                    const SizedBox(height: Sizes.spaceBtwInputFields / 2),
                    //Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: const Text('Đăng nhập'),
                      ),
                    ),
                    //Create Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () => Get.to(() => NavMenu()),
                        child: const Text('Tạo tài khoản'),
                      ),
                    ),
                    ],
                  ),
                )
              ),
              //Divided
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                      child: Divider(thickness: 0.5, indent: 60, endIndent: 5),
                  ),
                  Text('Đăng nhập bằng',
                      style: Theme.of(context).textTheme.labelMedium),
                  const Flexible(
                    child: Divider(thickness: 0.5, indent: 5, endIndent: 60),
                  ),
                ],
              ),

              //Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration (
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                        onPressed: (){},
                        icon: const Image(
                          width: Sizes.iconMd,
                          height: Sizes.iconMd,
                          image: AssetImage (Images.google),
                        )
                    ),
                  ),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration (
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                        onPressed: (){},
                        icon: const Image(
                          width: Sizes.iconMd,
                          height: Sizes.iconMd,
                          image: AssetImage (Images.facebook),
                        )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}