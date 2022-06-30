import 'package:intl/intl.dart';

///Utility class that defines some custom [DateFormat].
class Formats {
  static final fullDateFormat = new DateFormat('KK:mm:ss aa, yyyy/MM/dd');
  static final fullDateFormatNoSeconds = new DateFormat('KK:mm aa, yyyy/MM/dd');
  static final onlyDayDateFormat = new DateFormat('yyyy/MM/dd');
  static final onlyDayTimeFormat = new DateFormat('HH:mm:ss');
  static final onlyDayDateFormatTicks = new DateFormat('yyyy-MM-dd');
  static final onlyDayDateFormatSleep = new DateFormat('yyyy-MM-ddTHH:mm:ss');
} //Formats