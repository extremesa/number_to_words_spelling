import 'package:intl/intl.dart';

class ar {
  static String toWord(String pnumber) {
    int number = int.parse(pnumber);
// 0 to 999 999 999 999
    if (number == 0) {
      return "صفر";
    }
// pad with "0"
    String mask = "000000000000";
    final df = new NumberFormat(mask);
    String snumber = df.format(number);
// XXXnnnnnnnnn
    int billions = int.parse(snumber.substring(0, 3));
// nnnXXXnnnnnn
    int millions = int.parse(snumber.substring(3, 6));
// nnnnnnXXXnnn
    int hundredThousands = int.parse(snumber.substring(6, 9));
// nnnnnnnnnXXX
    int thousands = int.parse(snumber.substring(9, 12));

    String tradBillions;

    switch (billions) {
      case 0:
        tradBillions = "";
        break;
      case 1:
        tradBillions = _convertLessThanOneThousand(billions) + " مليار ";
        break;
      default:
        tradBillions = _convertLessThanOneThousand(billions) + " مليار ";
    }
    String result = tradBillions;

    String tradMillions;

    switch (millions) {
      case 0:
        tradMillions = "";
        break;
      case 1:
        tradMillions = _convertLessThanOneThousand(millions) + " مليون ";
        break;
      default:
        tradMillions = _convertLessThanOneThousand(millions) + " مليون ";
    }
    result = result + tradMillions;

    String tradHundredThousands;
    switch (hundredThousands) {
      case 0:
        tradHundredThousands = "";
        break;
      case 1:
        tradHundredThousands = "الف";
        break;
      default:
        tradHundredThousands =
            _convertLessThanOneThousand(hundredThousands) + " آلاف ";
    }
    result = result + tradHundredThousands;

    String tradThousand;
    tradThousand = _convertLessThanOneThousand(thousands);
    result = result + tradThousand;
    return result;
  }

  static String _convertLessThanOneThousand(int number) {
    List<String> tensNames = [
      "",
      " عشرة",
      " عشرون",
      " ثلاثون",
      " اربعون",
      " خمسون",
      " ستون",
      " سبعون",
      " ثمانون",
      " تسعون"
    ];
    List<String> numNames = [
      "",
      " واحد",
      " اثنان",
      " ثلاثة",
      " اربعة",
      " خمسة",
      " ستة",
      " سبعة",
      " ثمانية",
      " تسعة",
      " عشرة",
      " الحادي عشر",
      " الثاني عشر",
      " ثلاثة عشر",
      " اربعة عشر",
      " خمسة عشر",
      " ستة عشر",
      " سبعة عشر",
      " ثمانية عشر",
      " تسعة عشر"
    ];
    List<String> numNamesOrder = [
      "",
      " الأول",
      " الثاني",
      " الثالث",
      " الرابع",
      " الخامس",
      " السادس",
      " السابع",
      " ثمانية",
      " تسعة",
      " عشرة",
      " الحادي عشر",
      " الثاني عشر",
      " ثلاثة عشر",
      " اربعة عشر",
      " خمسة عشر",
      " ستة عشر",
      " سبعة عشر",
      " ثمانية عشر",
      " تسعة عشر"
    ];
    String soFar;
    if (number % 100 < 20) {
      soFar = numNames[number % 100];
      number = number ~/ 100;
    } else {
      soFar = numNames[number % 10];
      number = number ~/ 10;
      soFar = tensNames[number % 10] + soFar;
      number = number ~/ 10;
    }
    if (number == 0) return soFar;
    return numNames[number] + " مائة " + soFar;
  }

  static String toWordOrder(String pnumber) {
    int number = int.parse(pnumber);
// 0 to 999 999 999 999
    if (number == 0) {
      return "صفر";
    }
// pad with "0"
    String mask = "000000000000";
    final df = new NumberFormat(mask);
    String snumber = df.format(number);
// XXXnnnnnnnnn
    int billions = int.parse(snumber.substring(0, 3));
// nnnXXXnnnnnn
    int millions = int.parse(snumber.substring(3, 6));
// nnnnnnXXXnnn
    int hundredThousands = int.parse(snumber.substring(6, 9));
// nnnnnnnnnXXX
    int thousands = int.parse(snumber.substring(9, 12));

    String tradBillions;

    switch (billions) {
      case 0:
        tradBillions = "";
        break;
      case 1:
        tradBillions = _convertLessThanOneThousand_order(billions) + " مليار ";
        break;
      default:
        tradBillions = _convertLessThanOneThousand_order(billions) + " مليار ";
    }
    String result = tradBillions;

    String tradMillions;

    switch (millions) {
      case 0:
        tradMillions = "";
        break;
      case 1:
        tradMillions = _convertLessThanOneThousand_order(millions) + " مليون ";
        break;
      default:
        tradMillions = _convertLessThanOneThousand_order(millions) + " مليون ";
    }
    result = result + tradMillions;

    String tradHundredThousands;
    switch (hundredThousands) {
      case 0:
        tradHundredThousands = "";
        break;
      case 1:
        tradHundredThousands = "الف";
        break;
      default:
        tradHundredThousands =
            _convertLessThanOneThousand_order(hundredThousands) + " آلاف ";
    }
    result = result + tradHundredThousands;

    String tradThousand;
    tradThousand = _convertLessThanOneThousand_order(thousands);
    result = result + tradThousand;
    return result;
  }

  static String _convertLessThanOneThousand_order(int number) {
    List<String> tensNames = [
      "",
      " عشرة",
      " عشرون",
      " ثلاثون",
      " اربعون",
      " خمسون",
      " ستون",
      " سبعون",
      " ثمانون",
      " تسعون"
    ];

    List<String> numNames = [
      "",
      " الأول",
      " الثاني",
      " الثالث",
      " الرابع",
      " الخامس",
      " السادس",
      " السابع",
      " الثامن",
      " التاسع",
      " العاشر",
      " الحادي عشر",
      " الثاني عشر",
      " ثلاثة عشر",
      " اربعة عشر",
      " خمسة عشر",
      " ستة عشر",
      " سبعة عشر",
      " ثمانية عشر",
      " تسعة عشر"
    ];
    String soFar;
    if (number % 100 < 20) {
      soFar = numNames[number % 100];
      number = number ~/ 100;
    } else {
      soFar = numNames[number % 10];
      number = number ~/ 10;
      soFar = tensNames[number % 10] + soFar;
      number = number ~/ 10;
    }
    if (number == 0) return soFar;
    return numNames[number] + " مائة " + soFar;
  }
}
