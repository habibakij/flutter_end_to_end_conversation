import 'package:flutter/material.dart';

class MessageInputWidget extends StatelessWidget {
  final TextEditingController controller;
  const MessageInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(icon: const Icon(Icons.add, color: Colors.blue), onPressed: () {}),
          Expanded(
            child: Container(
              height: 40.0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E2A),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: controller,
                style: const TextStyle(color: Colors.white, fontSize: 12.0),
                decoration: const InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  hintText: 'Typing...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(icon: const Icon(Icons.send, color: Colors.blue), onPressed: () {}),
        ],
      ),
    );
  }
}
