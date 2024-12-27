class ProHelperString {
  bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(
      {required String password,
      int minLength = 0,
      bool requireUppercase = false,
      bool requireLowercase = false,
      bool requireNumber = false,
      bool requireSpecialCharacter = false}) {
    if (password.length < minLength) return false;

    if (requireUppercase && !RegExp(r'[A-Z]').hasMatch(password)) return false;

    if (requireLowercase && !RegExp(r'[a-z]').hasMatch(password)) return false;

    if (requireNumber && !RegExp(r'[0-9]').hasMatch(password)) return false;

    if (requireSpecialCharacter && !RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
      return false;
    }

    return true;
  }
}
