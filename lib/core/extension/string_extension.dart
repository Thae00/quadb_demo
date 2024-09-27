import 'package:intl/intl.dart';

extension StringExtension on String {
  String get dateFormat =>
      DateFormat("dd/MM/yyyy").format(DateTime.parse(this));
  String get requestDateFormat =>
      DateFormat("yyyy-MM-dd").format(DateTime.parse(this));
}
