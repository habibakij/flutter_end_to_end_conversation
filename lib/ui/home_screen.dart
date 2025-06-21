import 'package:flutter/material.dart';
import 'package:test_ui/model/contact_list_item_model.dart';
import 'package:test_ui/widget/home_screen_widget.dart';

import 'end_to_end_chat_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<ContactListItemModel> contactList = [
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/65.jpg', name: 'Tina Khan', lastMessage: 'How are you?', date: 'June 22'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/12.jpg', name: 'Rafiq Ahmed', lastMessage: 'Are we still on for tonight?', date: 'June 21'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/24.jpg', name: 'Tania Rahman', lastMessage: 'Call me when you’re free.', date: 'June 21'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/45.jpg', name: 'Sajid Hasan', lastMessage: 'Sent you the files.', date: 'June 20'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/33.jpg', name: 'Rina Akter', lastMessage: 'Got your message.', date: 'June 20'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/54.jpg', name: 'Arif Jamil', lastMessage: 'See you at 7 PM!', date: 'June 19'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/21.jpg', name: 'Nusrat Jahan', lastMessage: 'What’s your location?', date: 'June 18'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/19.jpg', name: 'Fahim Chowdhury', lastMessage: 'Join the Zoom call.', date: 'June 18'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/42.jpg', name: 'Shorna Haque', lastMessage: 'Thanks for your help!', date: 'June 17'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/30.jpg', name: 'Tanvir Alam', lastMessage: 'I’ll let you know.', date: 'June 16'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/50.jpg', name: 'Meherun Nesa', lastMessage: 'Received the parcel.', date: 'June 15'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/60.jpg', name: 'Shakib Noman', lastMessage: 'Going offline now.', date: 'June 15'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/35.jpg', name: 'Jannatul Firdous', lastMessage: 'That was amazing!', date: 'June 14'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/17.jpg', name: 'Mamun Islam', lastMessage: 'Call ended early.', date: 'June 14'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/28.jpg', name: 'Sabina Yasmin', lastMessage: 'Okay, noted.', date: 'June 13'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/36.jpg', name: 'Rasel Kabir', lastMessage: 'Did you eat?', date: 'June 12'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/10.jpg', name: 'Fariha Sultana', lastMessage: 'Waiting for reply...', date: 'June 12'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/23.jpg', name: 'Sohan Uddin', lastMessage: 'Let’s meet tomorrow.', date: 'June 11'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/women/17.jpg', name: 'Anika Ferdous', lastMessage: 'Sure! Will do.', date: 'June 11'),
    ContactListItemModel(avatar: 'https://randomuser.me/api/portraits/men/41.jpg', name: 'Nayeem Arafat', lastMessage: 'Heading to office now.', date: 'June 10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0F1A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0F1A),
        title: Text('connect messenger', style: TextStyle(fontSize: 24.0, color: Colors.white)),
        actions: [Padding(padding: const EdgeInsets.only(right: 16.0), child: CircleAvatar(radius: 14.0, backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/30.jpg')))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(color: const Color(0xFF1E1E2A), borderRadius: BorderRadius.circular(24)),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(hintText: 'Search', hintStyle: TextStyle(color: Colors.grey), border: InputBorder.none, isDense: true),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0),
            Divider(height: 12.0, color: Colors.white70.withValues(alpha: 0.2)),
            Text('Connection', style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 14.0, fontWeight: FontWeight.w400)),
            SizedBox(height: 12.0),
            Expanded(
              child: ListView.builder(
                itemCount: contactList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EndToEndChatScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: HomeScreenWidget().contactListItemWidget(contactList[index].avatar, contactList[index].name, contactList[index].lastMessage, contactList[index].date),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
