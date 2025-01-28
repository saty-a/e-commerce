import '../../utils/app_regex/app_regex.dart';
/// All Validations here.

class AppValidations {
  static String? mobileValidation(String? mobile) {
    if (mobile == null || mobile.trim().isEmpty) {
      return 'Please enter mobile number.';
    } else if (mobile.length < 10) {
      return "Enter a valid mobile number";
    }
    return null;
  }

  /// Name Validation
  static String? nameValidation(String? name) {
    if (name == null || name.trim().isEmpty) {
      return 'Field cannot be empty.';
    }
    return null;
  }

  static String? passwordValidation(String? name) {
    if (name == null || name.trim().isEmpty) {
      return 'Field cannot be empty.';
    } else if (name.length < 8) {
      return "Must be atleast 8 characters";
    }
    return null;
  }

  /// Email Validation
  static String? emailValidation(String? email) {
    if (email?.trim().isEmpty ?? true) {
      return 'Please enter your email';
    } else if (!AppRegex.emailRegex.hasMatch(email!)) {
      return 'Enter a valid email address';
    }
    return null;
  }
}
