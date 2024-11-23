import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_app/utils/formatters/formatter.dart';

class UserModel{
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  final String phoneNumber;
  final String profilePicture;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
  });

  //Get full name
  String get fullName => '$firstName $lastName';

  //Get formatted phone number
  String? get formattedPhoneNumber => Formatters.formatPhoneNumber(phoneNumber);

  //Split full name to first and last name
  static List<String> nameParts (fullName) => fullName.split(' ');

  //Generate user name from full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }

  //Create empty user model
  static UserModel empty() => UserModel(
    id: '',
    username: '',
    email: '',
    phoneNumber: '',
    firstName: '',
    lastName: '',
    profilePicture: '',
  );

  //Convert model to JSON for Firestore
  Map<String, dynamic> toJSON() {
    return {
      'FirstName' : firstName,
      'LastName' : lastName,
      'Username' : username,
      'Email' : email,
      'PhoneNumber' : phoneNumber,
      'ProfilePicture' : profilePicture,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      username: data['Username'] ?? '',
      email: data['Email'] ?? '',
      phoneNumber: data['PhoneNumber'] ?? '',
      firstName: data['FirstName'] ?? '',
      lastName: data['LastName'] ?? '',
      profilePicture: data['ProfilePicture'] ?? '',
    );
  }
}