import 'package:intl/intl.dart';

class CustomDateFormatter {
  static String DDMMYYYYhhmm(DateTime date) {
    return DateFormat("dd/MM/yyyy 'at' h:mm a").format(date).toLowerCase();
  }
}
