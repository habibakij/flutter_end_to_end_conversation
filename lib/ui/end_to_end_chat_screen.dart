import 'package:flutter/material.dart';
import 'package:test_ui/widget/app_widgets.dart';
import 'package:test_ui/widget/message_input_widget.dart';

class EndToEndChatScreen extends StatelessWidget {
  EndToEndChatScreen({super.key});

  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            /// custom appbar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: const Color(0xFF0D0F1A),
              child: Stack(
                children: [
                  Positioned(
                    top: -2.0,
                    left: 16.0,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                      height: 20,
                      width: 20,
                      alignment: Alignment.center,
                      child: const Text('7', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 22),
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sandra Dorsett', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                            SizedBox(height: 2),
                            Text('Last seen 1 hour ago', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ),
                      const CircleAvatar(radius: 20, child: Icon(Icons.person, size: 32.0)),
                    ],
                  ),
                ],
              ),
            ),

            /// chat list
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      child: Text("May 7", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppWidgets().receivedMessage(context: context, time: '3:00PM', message: 'Who was that photographer you shared with me recently?'),
                  AppWidgets().sendMessage(context, 'Slim Aarons', '3:01PM'),
                  AppWidgets().receivedMessage(context: context, time: '3:04PM', message: "That's him!\nWhat was his vision statement?", isDouble: true),
                  AppWidgets().sendMessage(context, 'Attractive people doing attractive things in attractive places', '5:05PM', reply: AppWidgets().imageGrid()),
                  AppWidgets().sendMessage(context, 'Well what are you doing now. Well what are you doing now?', '3:01PM'),
                  AppWidgets().receivedMessage(context: context, time: '3:00PM', message: 'Who was that photographer you shared with me recently?'),
                ],
              ),
            ),

            /// input field
            MessageInputWidget(controller: messageController),
          ],
        ),
      ),
    );
  }
}
