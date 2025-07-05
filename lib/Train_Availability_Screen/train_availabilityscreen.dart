import 'package:confirmticket/Train_Availability_Screen/train_availability_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: Text('$from → $to'), // Show route in title
        centerTitle: true,
      ),
      body: Obx(() {
        // Show loading if train list is empty
        if (controller.trainList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        // Show train list
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
                trailing: ElevatedButton(
                  onPressed: () => controller.bookTicket(train),
                  child: const Text('Book'),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
