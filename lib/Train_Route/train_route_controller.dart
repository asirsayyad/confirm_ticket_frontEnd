import 'package:get/get.dart';

class TrainRouteStop {
  final int number;
  final String stationName;
  final String stationCode;
  final String arrival;
  final String departure;
  final String halt;
  final String delay;

  TrainRouteStop({
    required this.number,
    required this.stationName,
    required this.stationCode,
    required this.arrival,
    required this.departure,
    required this.halt,
    required this.delay,
  });
}

class TrainRouteController extends GetxController {
  var stops = <TrainRouteStop>[].obs;

  void loadRoute(String trainNumber) {
    if (trainNumber == '22538') {
      stops.value = [
        TrainRouteStop(number: 1, stationName: "LOKMANYATILAK T", stationCode: "LTT", arrival: "Start", departure: "00:35", halt: "0", delay: "No Delay"),
        TrainRouteStop(number: 2, stationName: "THANE", stationCode: "TNA", arrival: "00:57", departure: "01:00", halt: "03:00", delay: "No Delay"),
        TrainRouteStop(number: 3, stationName: "KALYAN JN", stationCode: "KYN", arrival: "01:17", departure: "01:20", halt: "03:00", delay: "No Delay"),
        TrainRouteStop(number: 4, stationName: "NASHIK ROAD", stationCode: "NK", arrival: "03:55", departure: "04:00", halt: "05:00", delay: "No Delay"),
        TrainRouteStop(number: 5, stationName: "MANMAD JN", stationCode: "MMR", arrival: "04:55", departure: "05:00", halt: "05:00", delay: "No Delay"),
        TrainRouteStop(number: 6, stationName: "NANDGAON", stationCode: "NGN", arrival: "05:24", departure: "05:25", halt: "01:00", delay: "No Delay"),
        TrainRouteStop(number: 7, stationName: "CHALISGAON JN", stationCode: "CSN", arrival: "06:05", departure: "06:07", halt: "02:00", delay: "No Delay"),
        TrainRouteStop(number: 8, stationName: "PACHORA JN", stationCode: "PC", arrival: "06:33", departure: "06:35", halt: "02:00", delay: "No Delay"),
        TrainRouteStop(number: 9, stationName: "JALGAON JN", stationCode: "JL", arrival: "07:18", departure: "07:20", halt: "02:00", delay: "No Delay"),
      ];
    } else {
      // Load other train numbers if needed
      stops.value = [];
    }
  }
}
