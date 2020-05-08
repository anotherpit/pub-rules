import 'package:rules/rules.dart';

void main() {
  const _name = '';

  final _nameRule =
      Rules(_name, name: 'Name', isRequired: false, customErrorTexts: {});

  final _emailRule =
      Rules('', name: 'Email', isRequired: true, customErrorTexts: {});

  print(_nameRule.errorList);
  print(_emailRule.errorList);

  final _multiRules = MultiRules([_nameRule, _emailRule]);

  print(_multiRules.errorList);
}
