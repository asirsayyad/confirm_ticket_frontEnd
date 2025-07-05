import 'package:get/get.dart';

class Train {
  final String number;
  final String name;
  final String departureTime;
  final String arrivalTime;

  Train({
    required this.number,
    required this.name,
    required this.departureTime,
    required this.arrivalTime,
  });
}

class SecondScreenController extends GetxController {
  final String fromStation;
  final String toStation;

  SecondScreenController({
    required this.fromStation,
    required this.toStation,
  });

  var trainList = <Train>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTrains(); // 🔁 Call this to load dummy data
  }

  void loadTrains() {
    // 🧪 Dummy static data — replace with API later
    trainList.value = [
      Train(
        number: '22538',
        name: 'Kushinagar Express',
        departureTime: '00:35',
        arrivalTime: '07:20',
      ),
      Train(
        number: '11011',
        name: 'LTT Express',
        departureTime: '13:00',
        arrivalTime: '19:30',
      ),
    ];
  }

  void bookTicket(Train train) {
    Get.snackbar('Booked!', 'Ticket booked for ${train.name}');
  }
}
