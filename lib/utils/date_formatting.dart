import 'package:intl/intl.dart';

String getMonthName(int month) {
  DateTime date = DateTime(0, month);
  return DateFormat.MMM().format(date);
}
