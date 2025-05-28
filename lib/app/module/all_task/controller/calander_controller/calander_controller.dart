import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalanderController extends GetxController {
  RxInt selectedIndex = 0.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;

  /*List<DateTime> get weekDates => List.generate(30,  (index)=> DateTime.now().subtract(Duration(days: DateTime.now().weekday-1-index)));*/
  List<DateTime> get weekDates => List.generate(
    15,
    (index) => DateTime.now().subtract(Duration(days: 7 - index)),
  );

  void selectDate(int index) {
    selectedIndex.value = index;
    selectedDate.value = weekDates[index];
  }

  String getDayName(DateTime date) => DateFormat('E').format(date);
}
