import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class NotSavedSnackbarLoader extends StatelessWidget {
  const NotSavedSnackbarLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      backgroundColor: AppColors.warning,
      content: Text(
          'Dữ liệu chưa lưu, vui lòng thử lại!!!',
          style: TextStyle(color: Colors.black),
      ),
    );
  }
}