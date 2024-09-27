
import 'package:intl/intl.dart';

extension MoneyFormatExtension on int? {
  String get moneyFormat => NumberFormat("#,###", "en_US").format(this);
}
