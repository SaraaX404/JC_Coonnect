final _email = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

/// Shape check only; the server decides whether the address exists.
bool isValidEmail(String value) => _email.hasMatch(value.trim());

/// "m.sterling@jc.edu.jm" -> "m***@jc.edu.jm": enough to recognise, not to
/// read. Anything that isn't an email is returned unchanged.
String maskEmail(String email) {
  final at = email.indexOf('@');
  if (at < 1) return email;
  return '${email[0]}***${email.substring(at)}';
}

/// "+1 876 555 0142" -> "+18765550142": the API takes E.164.
String toE164(String phone) => phone.replaceAll(RegExp(r'[\s\-().]'), '');

bool isValidPhone(String phone) =>
    RegExp(r'^\+[1-9]\d{6,14}$').hasMatch(toE164(phone));
