int convertRomanNumeral(String numeral) {
  Map<String, int> numeralValues = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
    'IV': 4,
    'IX': 9,
    'XL': 40,
    'XC': 90,
    'CD': 400,
    'CM': 900
  };
 

  int i = 0;
  int? number = 0;
  var pattern =   RegExp(r"^(?:M{1,4}(?:CM|CD|D?C{0,3})(?:XC|XL|L?X{0,3})(?:IX|IV|V?I{0,3})|M{0,4}(?:CM|C?D|D?C{1,3})(?:XC|XL|L?X{0,3})(?:IX|IV|V?I{0,3})|M{0,4}(?:CM|CD|D?C{0,3})(?:XC|X?L|L?X{1,3})(?:IX|IV|V?I{0,3})|M{0,4}(?:CM|CD|D?C{0,3})(?:XC|XL|L?X{0,3})(?:IX|I?V|V?I{1,3}))$");
  if (pattern.hasMatch(numeral)){
  try {
    while (i < numeral.length) {
      if (i + 1 < numeral.length &&
          numeralValues.containsKey(numeral.substring(i, i + 2))) {
        number = number! + numeralValues[numeral.substring(i, i + 2)]!.toInt();
        i += 2;
      } else {
        number = number! + numeralValues[numeral.substring(i, i + 1)]!.toInt();
        i += 1;
      }
    }
  } catch (e) {
    print("An error occured : $e");
  }
  } else {
    print("Not a Valid Roman Numeral");
  }
  return number!;
}
