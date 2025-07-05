import 'package:confirmticket/Train_Availability_Screen/train_availability_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Train_Route/train_route_screen.dart';

class SecondScreen extends StatelessWidget {
  final String from;
  final String to;

  const SecondScreen({
    Key? key,
    required this.from,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Connect controller with the screen
    final controller = Get.put(
      SecondScreenController(fromStation: from, toStation: to),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('$from → $to'),
        centerTitle: true,
      ),
      body: Obx(() {
        // 🟡 Show message if no trains
        if (controller.trainList.isEmpty) {
          return const Center(child: Text('No trains available for this route.'));
        }

        // ✅ Show train list
        return ListView.builder(
          itemCount: controller.trainList.length,
          itemBuilder: (context, index) {
            final train = controller.trainList[index];

            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  '${train.number} - ${train.name}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '${train.departureTime} → ${train.arrivalTime}',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.bookTicket(train);
                      },
                      child: const Text('Book'),
                    ),
                    const SizedBox(width: 8),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Get.to(() => TrainRouteScreen(
                    //       trainNumber: train.number,
                    //       trainName: train.name,
                    //     ));
                    //   },
                    //   child: const Text('Schedule'),
                    // ),
                    InkWell(
                      onTap: () {
                        Get.to(() => TrainRouteScreen(
                                  trainNumber: train.number,
                                  trainName: train.name,
                                ));
                      },
                      child: Text(
                        "Schedule",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
