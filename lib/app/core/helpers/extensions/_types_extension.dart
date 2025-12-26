import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../../../services/services.dart';

extension DateHelperExtension on DateTime {
  DateTime get getDateOnly => DateTime(year, month, day);

  String getFormatedString({String? pattern = 'dd MMM yyyy'}) {
    return intl.DateFormat(pattern).format(this);
  }

  String get dbFormat {
    return intl.DateFormat('yyyy-MM-dd').format(this);
  }

  String get backSlashDateFormat {
    return getFormatedString(pattern: 'dd/MM/yyyy');
  }
}

extension NumberFormatterExtension on num {
  bool get _isDouble => this != toInt();
  String quickCurrency({
    String? customCurrency,
    int decimalDigits = 2,
    String? locale,
  }) {
    final _symbol = customCurrency ?? currencyNotifier.value;
    // intl.NumberFormat.simpleCurrency().currencySymbol;
    return intl.NumberFormat.currency(
      symbol: _symbol,
      decimalDigits: _isDouble ? decimalDigits : 0,
      locale: locale,
    ).format(this);
  }

  String compactCurrency({
    String? customCurrency,
    int decimalDigits = 2,
    String? locale,
  }) {
    final _symbol = customCurrency ?? currencyNotifier.value;
    // intl.NumberFormat.simpleCurrency(locale: locale).currencySymbol;

    return intl.NumberFormat.compactCurrency(
      locale: locale,
      symbol: _symbol,
      decimalDigits: _isDouble ? decimalDigits : 0,
    ).format(this);
  }

  String compactNumber({
    bool explicitSign = false,
    String? locale,
  }) {
    return intl.NumberFormat.compact(
      explicitSign: explicitSign,
      locale: locale,
    ).format(this);
  }

  String commaSeparated({
    int decimalDigits = 2,
    String? locale,
  }) {
    return intl.NumberFormat.decimalPatternDigits(
      decimalDigits: _isDouble ? decimalDigits : 0,
      locale: locale,
    ).format(this);
  }

  num toFixedDecimal({int decimalDigits = 2}) {
    return num.parse(toStringAsFixed(decimalDigits));
  }
}

extension StringFormatterExtension on String {
  num get plainNumber {
    final _num = num.tryParse(replaceAll(',', '')) ?? 0;
    return _num;
  }

  DateTime? get parseDate {
    final RegExp regex = RegExp(
      r'(?:(\d{1,2})\s+([A-Za-z]{3}),\s+(\d{4}))|'
      r'(?:(\d{1,2})[-/](\d{1,2})[-/](\d{4}))|'
      r'(?:(\d{4})[-/](\d{1,2})[-/](\d{1,2}))',
    );

    final match = regex.firstMatch(this);
    if (match != null) {
      if (match.group(1) != null) {
        final day = int.parse(match.group(1)!);
        final month = intl.DateFormat('MMM').parse(match.group(2)!).month;
        final year = int.parse(match.group(3)!);
        return DateTime(year, month, day);
      } else if (match.group(4) != null) {
        final day = int.parse(match.group(4)!);
        final month = int.parse(match.group(5)!);
        final year = int.parse(match.group(6)!);
        return DateTime(year, month, day);
      } else if (match.group(7) != null) {
        final year = int.parse(match.group(7)!);
        final month = int.parse(match.group(8)!);
        final day = int.parse(match.group(9)!);
        return DateTime(year, month, day);
      }
    }

    return null;
  }

  String get obscure => '*' * length;
}

extension ValueNotifierX<T> on ValueNotifier<T> {
  void set(T newValue) => value = newValue;
}
