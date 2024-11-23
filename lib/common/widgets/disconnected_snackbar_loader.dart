import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class DisconnectedSnackbarLoader extends StatelessWidget {
  const DisconnectedSnackbarLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SnackBar(
      backgroundColor: AppColors.error,
      content: Text(
        'Mất kết nối mạng rồi!!! Vui lòng kết nối lại!!!',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}