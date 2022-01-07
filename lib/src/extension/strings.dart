import 'package:any_to_any_converter/src/const.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  /// for only first letter of string will capital example: "this is a boy".toFirstCapital() => "This is a boy".
  String toFirstCapital() =>
      "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  /// for every first letter of string will capital example: "this is a boy".toEveryFirstCapital() => "This Is A Boy".
  String toEveryFirstCapital() =>
      split(" ").map((str) => str.toFirstCapital()).join(" ");

  /// to camel case of string example: "this is a boy".toCamelCase() => "tHiS Is a bOy".
  String toCamelCase() {
    var _str = '';
    for (int i = 0; i < length; i++) {
      if (i.isOdd) {
        _str += this[i].toUpperCase();
      } else {
        _str += this[i].toLowerCase();
      }
    }
    return _str;
  }

  /// for use single letter of string example: "Rahul".toSingleLetter() => "R".
  String toSingleLetter() => replaceAll(substring(1), "");

  /// for use every single letter of string and join with [joinWith] you pass example: "Rahul Gandhi".toEverySingleLetter(".") => "R.G".
  String toEverySingleLetter({required String joinWith}) =>
      split(" ").map((str) => str.toSingleLetter()).join(joinWith);

  /// for convert into date with given format
  String toDate({required FormatDate format}) =>
      DateFormat(format.format).format(DateTime.parse(this)).toString();

  /// to double
  double toDouble() => double.parse(toString());

  /// to int
  int toInt() => int.parse(toString());
}

extension _FormatExtension on FormatDate {
  String get format {
    switch (this) {
      case FormatDate.dmyDash:
        return "dd-MM-yyyy";
      case FormatDate.mdyDash:
        return "MM-dd-yyyy";
      case FormatDate.ymdDash:
        return "yyyy-MM-dd";
      case FormatDate.ydmDash:
        return "yyyy-dd-MM";
      case FormatDate.dmy:
        return "dd/MM/yyyy";
      case FormatDate.mdy:
        return "MM/dd/yyyy";
      case FormatDate.ymd:
        return "yyyy/MM/dd";
      case FormatDate.ydm:
        return "yyyy/dd/MM";
      case FormatDate.dmyDash12:
        return "dd-MM-yyyy hh:mm a";
      case FormatDate.dmyDash12WithSec:
        return "dd-MM-yyyy hh:mm:ss a";
      case FormatDate.mdyDash12:
        return "MM-dd-yyyy hh:mm a";
      case FormatDate.mdyDash12WithSec:
        return "MM-dd-yyyy hh:mm:ss a";
      case FormatDate.ymdDash12:
        return "yyyy-MM-dd hh:mm a";
      case FormatDate.ymdDash12WithSec:
        return "yyyy-MM-dd hh:mm:ss a";
      case FormatDate.ydmDash12:
        return "yyyy-dd-MM hh:mm a";
      case FormatDate.ydmDash12WithSec:
        return "yyyy-dd-MM hh:mm:ss a";
      case FormatDate.dmy12:
        return "dd/MM/yyyy hh:mm a";
      case FormatDate.dmy12WithSec:
        return "dd/MM/yyyy hh:mm:ss a";
      case FormatDate.mdy12:
        return "MM/dd/yyyy hh:mm a";
      case FormatDate.mdy12WithSec:
        return "MM/dd/yyyy hh:mm:ss a";
      case FormatDate.ymd12:
        return "yyyy/MM/dd hh:mm a";
      case FormatDate.ymd12WithSec:
        return "yyyy/MM/dd hh:mm:ss a";
      case FormatDate.ydm12:
        return "yyyy/dd/MM hh:mm a";
      case FormatDate.ydm12WithSec:
        return "yyyy/dd/MM hh:mm:ss a";
      case FormatDate.dmyDash24:
        return "dd-MM-yyyy HH:mm";
      case FormatDate.dmyDash24WithSec:
        return "dd-MM-yyyy HH:mm:ss";
      case FormatDate.mdyDash24:
        return "MM-dd-yyyy HH:mm";
      case FormatDate.mdyDash24WithSec:
        return "MM-dd-yyyy HH:mm:ss";
      case FormatDate.ymdDash24:
        return "yyyy-MM-dd HH:mm";
      case FormatDate.ymdDash24WithSec:
        return "yyyy-MM-dd HH:mm:ss";
      case FormatDate.ydmDash24:
        return "yyyy-dd-MM HH:mm";
      case FormatDate.ydmDash24WithSec:
        return "yyyy-dd-MM HH:mm:ss";
      case FormatDate.dmy24:
        return "dd/MM/yyyy HH:mm";
      case FormatDate.dmy24WithSec:
        return "dd/MM/yyyy HH:mm:ss";
      case FormatDate.mdy24:
        return "MM/dd/yyyy HH:mm";
      case FormatDate.mdy24WithSec:
        return "MM/dd/yyyy HH:mm:ss";
      case FormatDate.ymd24:
        return "yyyy/MM/dd HH:mm";
      case FormatDate.ymd24WithSec:
        return "yyyy/MM/dd HH:mm:ss";
      case FormatDate.ydm24:
        return "yyyy/dd/MM HH:mm";
      case FormatDate.ydm24WithSec:
        return "yyyy/dd/MM HH:mm:ss";
      case FormatDate.time12:
        return "hh:mm a";
      case FormatDate.time12WithSec:
        return "hh:mm:ss a";
      case FormatDate.time24:
        return "HH:mm";
      case FormatDate.time24WithSec:
        return "HH:mm:ss";
    }
  }
}
