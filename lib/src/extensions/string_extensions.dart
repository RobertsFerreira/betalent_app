extension StringExt on String {
  String get phoneNumberBrl {
    final validNumber = int.tryParse(this);

    if (validNumber == null) throw Exception('Invalid phone number');

    final int size = length;

    String codeCountry = '';
    String stateCode = '';
    String number = '';

    if (size == 14) {
      codeCountry = substring(0, 2);
      stateCode = substring(2, 5);
      number = substring(5);
    }

    //5551234567890
    if (size == 13) {
      codeCountry = substring(0, 2);
      stateCode = substring(2, 4);
      number = substring(4);
    }

    if (size == 11) {
      stateCode = substring(0, 2);
      number = substring(2);
    }

    final firstNumber = number.substring(0, number.length == 9 ? 5 : 4);
    final secondNumber = number.substring(number.length == 9 ? 5 : 4);

    //+55 (51) 23456-7890
    return "+${codeCountry.isEmpty ? '' : codeCountry} ($stateCode) $firstNumber - $secondNumber";
  }
}
