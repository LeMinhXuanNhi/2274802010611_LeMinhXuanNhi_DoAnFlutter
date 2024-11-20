import 'package:intl/intl.dart';

class Formatters {
  Formatters._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'vi_VN', symbol: '\đ').format(amount);
  }

  static String? formatPhoneNumber(String phoneNumber) {
    if(phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)} ${
          phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)})';
    }
    if(phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)} ${
          phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)})';
    }
    return phoneNumber;
  }

  static String? interFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formatterNumber = StringBuffer();
    formatterNumber.write('($countryCode)');

    int i = 0;
    while(i < digitsOnly.length) {
      int groupLength = 2;
      if(i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formatterNumber.write(digitsOnly.substring(1, end));

      if(end < digitsOnly.length) {
        formatterNumber.write(' ');
      }
      i = end;
    }
  }
}