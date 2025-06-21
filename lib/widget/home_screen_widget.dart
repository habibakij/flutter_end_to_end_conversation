import 'package:flutter/material.dart';

class HomeScreenWidget {
  Widget contactListItemWidget(String avatar, String name, String lastMessage, String dateTime) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 24.0, backgroundImage: NetworkImage(avatar)),
            SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 18.0, fontWeight: FontWeight.w400)),
                Text(lastMessage, style: TextStyle(color: Colors.white60, fontSize: 14.0, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        Padding(padding: const EdgeInsets.only(top: 8.0), child: Text(dateTime, style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 14.0, fontWeight: FontWeight.w400))),
      ],
    );
  }
}
