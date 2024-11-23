import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class ErrorSnackbarLoader extends StatelessWidget {
  const ErrorSnackbarLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      backgroundColor: AppColors.error,
      content: Text(
          'Xảy ra lỗi rồi!!! Vui lòng thử lại!!!',
          style: TextStyle(color: Colors.white),
      ),
    );
  }
}