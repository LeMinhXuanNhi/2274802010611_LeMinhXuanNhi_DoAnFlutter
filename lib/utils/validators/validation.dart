class Validator {
  static String? validEmptyText(String? fieldName, String? value) {
    if(value == null || value.isEmpty) {
      return '$fieldName không được để trống';
    }

    return null;
  }

  static String? validEmail(String? value) {
    if(value == null || value.isEmpty) {
      return 'Cần có Email';
    }

    final emailRegExp = RegExp(r'^[a-z.]+@[a-z]+\.[a-z]+');

    if(!emailRegExp.hasMatch(value)) {
      return 'Email không hợp lệ';
    }

    return null;
  }

  static String? validPass(String? value) {
    if(value == null || value.isEmpty) {
      return 'Cần có mật khẩu';
    }

    if(value.length < 6) {
      return 'Mật khẩu ít nhát 6 ký tự';
    }

    if(!value.contains(RegExp(r'[A-Z]'))) {
      return 'Mật khẩu phải có chữ hoa';
    }

    if(!value.contains(RegExp(r'[0-9]'))) {
      return 'Mật khẩu phải có số';
    }

    return null;
  }

  static String? validPhoneNum(String? value) {
    if(value == null || value.isEmpty) {
      return 'Cần có SĐT';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)) {
      return 'SĐT không hợp lệ (Cần có SĐT 10 số)';
    }
    
    return null;
  }
}