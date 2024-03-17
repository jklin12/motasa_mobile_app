import 'package:intl/intl.dart';


class MyHelper {
  // fungsi enkripsi string untuk disimpan dilocal storage
   
  static String formatDateTime(DateTime? dateTime) {
    //DateTime date = DateTime.parse(dateTime);
    if (dateTime != null) {
      return DateFormat('y MMM d HH:mm').format(dateTime);
    } else {
      return '-';
    }
  }
}
