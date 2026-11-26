final _email = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

/// Shape check only; the server decides whether the address exists.
bool isValidEmail(String value) => _email.hasMatch(value.trim());
