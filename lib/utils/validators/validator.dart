
class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    final RegExp emailRegex = RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'
    );

    if(!emailRegex.hasMatch(value)){
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return "Password must be 6 character long";
    }

    if (value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one upper case letter.';
    }
    if (value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value ==  null || value.isEmpty){
      return "Phone number is required";
    }
    final phoneRegex=RegExp(r'^\d{10}$');

    if(!phoneRegex.hasMatch(value)){
      return "Invalid phone number format (10 digit required).";
    }
    return null;
  }
}