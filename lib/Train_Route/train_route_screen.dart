import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'train_route_controller.dart';

class TrainRouteScreen extends StatelessWidget {
  final String trainNumber;
  final String trainName;

  const TrainRouteScreen({
    Key? key,
    required this.trainNumber,
    required this.trainName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TrainRouteController());
    controller.loadRoute(trainNumber); // Load dynamic route

    return Scaffold(
      appBar: AppBar(
        title: Text('$trainNumber - $trainName'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Running Days: Mon Tue Wed Thu Fri Sat Sun",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Sun, 06 Jul", style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Obx(() => ListView.separated(
              itemCount: controller.stops.length,
              separatorBuilder: (_, __) => Divider(),
              itemBuilder: (context, index) {
                final stop = controller.stops[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green.shade100,
                    child: Text(stop.number.toString()),
                  ),
                  title: Text('${stop.stationName} (${stop.stationCode})'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Arr: ${stop.arrival}   |   Dep: ${stop.departure}'),
                      Text('Halt: ${stop.halt} min   |   ${stop.delay}',
                          style: TextStyle(color: Colors.green)),
                    ],
                  ),
                );
              },
            )),
          ),
        ],
      ),
    );
  }
}
