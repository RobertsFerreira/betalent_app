import 'package:intl/intl.dart';

extension DateExt on DateTime {
  String get brl {
    final dateFormatter = DateFormat('dd/MM/y');
    return dateFormatter.format(this);
  }
}
