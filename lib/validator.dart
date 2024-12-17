class FormValidator {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || !RegExp(r'^\d{9}$').hasMatch(value)) {
      return 'Phone number must be 9 digits';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || !RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
} 