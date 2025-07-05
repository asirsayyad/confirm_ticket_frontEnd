import 'package:get/get.dart';

/// Simple Train model
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

/// Controller to handle logic
class SecondScreenController extends GetxController {
  final String fromStation;
  final String toStation;

  SecondScreenController({
    required this.fromStation,
    required this.toStation,
  });

  // List of trains (reactive)
  var trainList = <Train>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTrains(); // Load when screen opens
  }

  /// Simulate fetching trains (Replace with API later)
  void loadTrains() {
    trainList.value = [
      Train(
        number: '20103',
        name: 'LTT – AMH SF Express',
        departureTime: '05:23',
        arrivalTime: '14:10',
      ),
      Train(
        number: '12165',
        name: 'LTT – GKP SF Express',
        departureTime: '06:00',
        arrivalTime: '08:55',
      ),
    ];
  }

  /// Handle ticket booking
  void bookTicket(Train train) {
    // Add your booking logic here
    Get.snackbar(
      'Booked!',
      'Ticket booked for ${train.name}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
