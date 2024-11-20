import 'package:fashion_app/features/shop/screens/home/home.dart';
import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text('Đăng ký', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: Sizes.defaultSpace),

              //Fore
              ////Form
              Form(
                child:
                  Column(
                    children: [
                      //Name
                      Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                                expands: false,
                                decoration: const InputDecoration(
                                  labelText: 'Tên',
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                          ),
                          const SizedBox(width: Sizes.defaultSpace),
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                labelText: 'Họ',
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: Sizes.defaultSpace),

                      //Username
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Tên người dùng',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(width: Sizes.defaultSpace),

                      //Email
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(width: Sizes.defaultSpace),

                      //Phone Number
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Số điện thoại',
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                      const SizedBox(width: Sizes.defaultSpace),

                      //Password
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Mật khẩu',
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.hide_source),
                        ),
                      ),
                      const SizedBox(width: Sizes.defaultSpace),

                      //Term & Condition
                      Row(
                        children: [
                           SizedBox(width: 24, height: 24,
                             child: Checkbox(
                                 value: true,
                                 onChanged: (value) {},
                             ),
                           ),
                          const SizedBox(width: Sizes.spaceBtwItems),
                          Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Tôi đồng ý với ',
                                      style: Theme.of(context).textTheme.bodySmall
                                  ),
                                  TextSpan(
                                      text: 'các điều khoản ',
                                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark ? AppColors.white : AppColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor:AppColors.primary,
                                      )
                                  ),
                                  TextSpan(
                                      text: 'và ',
                                      style: Theme.of(context).textTheme.bodySmall
                                  ),
                                  TextSpan(
                                      text: 'điều kiện',
                                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark ? AppColors.white : AppColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor:AppColors.primary,
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: Sizes.defaultSpace),

                      //Sign Up Button
                      SizedBox(width: double.infinity, child: (
                          ElevatedButton(onPressed: () => Get.to(() => Home()),
                              child: const Text('Tạo tài khoản')))
                      ),
                    ],
                  ),
              ),

              const SizedBox(height: Sizes.spaceBtwItemsSections,),

              //Divider
              Text('Đăng nhập bằng'.capitalize!, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: Sizes.spaceBtwItemsSections,),

              //Social Button
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