import 'package:fashion_app/utils/helpers/helper_functions.dart';
import 'package:fashion_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../controllers/signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Form(
          key: controller.signupFormKey,
          child: SingleChildScrollView(
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
                  Form(child:
                      Column(children: [
                        //Name
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: controller.firstName,
                                validator: (value) => Validator.validEmptyText('Tên', value),
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
                                controller: controller.lastName,
                                validator: (value) => Validator.validEmptyText('Họ', value),
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
                          controller: controller.userName,
                          validator: (value) => Validator.validEmptyText('Tên người dùng', value),
                          decoration: const InputDecoration(
                            labelText: 'Tên người dùng',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        const SizedBox(width: Sizes.defaultSpace),

                        //Email
                        TextFormField(
                          controller: controller.email,
                          validator: (value) => Validator.validEmail(value),
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        const SizedBox(width: Sizes.defaultSpace),

                        //Phone Number
                        TextFormField(
                          controller: controller.phoneNumber,
                          validator: (value) => Validator.validPhoneNum(value),
                          decoration: const InputDecoration(
                            labelText: 'Số điện thoại',
                            prefixIcon: Icon(Icons.phone),
                          ),
                        ),
                        const SizedBox(width: Sizes.defaultSpace),

                        //Password
                        Obx(() => TextFormField(
                          controller: controller.password,
                          validator: (value) => Validator.validPass(value),
                          obscureText: controller.hidePassword.value,
                          decoration: InputDecoration(
                            labelText: 'Mật khẩu',
                            prefixIcon: const Icon(Icons.password),
                            suffixIcon: IconButton(
                                onPressed: () => controller.hidePassword.value
                                = !controller.hidePassword.value,
                                icon: Icon(controller.hidePassword.value? Icons.remove : Icons.add),
                            ),
                          ),
                        )),
                        const SizedBox(width: Sizes.defaultSpace),

                        //Term & Condition
                        Row(
                          children: [
                            SizedBox(width: 24, height: 24,
                              child: Obx(() => Checkbox(
                                value: controller.privacyPolicy.value,
                                onChanged: (value) {},
                              ))
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
                            ElevatedButton(onPressed: () => controller.signup(),
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
        ),
    );
  }
}