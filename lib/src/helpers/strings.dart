String enumToString(dynamic input) {
  return input.toString().split('.').last;
}

String enumToStringSingle(dynamic input) {
  return enumToString(input).split(RegExp('[A-Z]')).first;
}

T stringToEnum<T>(String input, List<T> values) {
  return values.firstWhere((e) => input == enumToString(e), orElse: () => null);
}

bool isStringBlank(String input) {
  return input.trim().isEmpty;
}

///
/// Checks whether the given string [input] is a decimal number
///
bool isStringNumeric(String input, {bool allowDecimal = false}) {
  RegExp regExp;

  const regexWithoutDecimal = r'^[0-9]+$';
  const regexWithDecimal = r'^[0-9\.]+$';

  if (allowDecimal) {
    regExp = RegExp(regexWithDecimal);
  } else {
    regExp = RegExp(regexWithoutDecimal);
  }

  return regExp.hasMatch(input);
}

///
/// Checks whether the given string [input] is a valid email address
///
bool isStringEmail(String input) {
  const regex =
      '^([\\w\\d\\-\\+]+)(\\.+[\\w\\d\\-\\+%]+)*@([\\w\\-]+\\.){1,5}(([A-Za-z]){2,30}|xn--[A-Za-z0-9]{1,26})\$';
  final regExp = RegExp(regex);

  return regExp.hasMatch(input);
}

///
/// Checks whether the given string [input] contains only alphabets and spaces
///
bool isStringAlphaSpace(String input) {
  final regExp = RegExp(r'^[a-zA-Z\s]+$');

  return regExp.hasMatch(input);
}

///
/// Checks whether the given string [input] contains only alphabets and numbers
///
bool isStringAlphaNumeric(String input) {
  final regExp = RegExp(r'^[a-zA-Z0-9]+$');

  return regExp.hasMatch(input);
}

///
/// Checks whether the given string [input] contains only alphabets, numbers and spaces
///
bool isStringAlphaNumericSpace(String input) {
  final regExp = RegExp(r'^[a-zA-Z0-9\s]+$');

  return regExp.hasMatch(input);
}

///
/// Checks whether the given string [input] matches the [regex]
///
bool isStringRegexMatch(String input, String regex) {
  final regExp = RegExp(regex);

  return regExp.hasMatch(input);
}

///
/// Match the string length
///
bool isStringLength(String input, int length) {
  return input.length == length;
}

///
/// Match the minimum string length
///
bool isStringMinLength(String input, int length) {
  return input.length >= length;
}

///
/// Match the maximum string length
///
bool isStringMaxLength(String input, int length) {
  return input.length <= length;
}

String capitalize(String input) {
  return input[0].toUpperCase() + input.substring(1);
}

String plural({String text, int value}) {
  if (value == 1) {
    return text;
  } else {
    return '$value ${text}s';
  }
}
