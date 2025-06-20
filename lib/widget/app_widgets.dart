import 'package:flutter/material.dart';

class AppWidgets {


  Widget receivedMessage({required BuildContext context, required String time, required String message, bool isDouble = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 20,
          child: Icon(Icons.person, size: 32.0),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      message,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    right: 12.0,
                    bottom: 2.0,
                    child: PhysicalShape(
                      color: Colors.grey,
                      elevation: 4,
                      clipper: ShapeBorderClipper(shape: CircleBorder()),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(Icons.heart_broken, color: Colors.red, size: 16.0),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(time, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 40),
      ],
    );
  }

  Widget sendMessage(String message, String time, {Widget? reply}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: reply == null ? Colors.blue : Colors.grey.shade900,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
                if(reply != null)...[
                  Divider(color: Colors.white10),
                  const SizedBox(height: 4.0),
                  reply
                ],
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(time, style: const TextStyle(fontSize: 10, color: Colors.grey)),
          ),
        ],
      ),
    );
  }


  Widget imageGrid() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.network(
            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
            height: 160,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                height: 79,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 2),
              Image.network(
                'https://images.unsplash.com/photo-1493558103817-58b2924bce98',
                height: 79,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ],
    );
  }



}

