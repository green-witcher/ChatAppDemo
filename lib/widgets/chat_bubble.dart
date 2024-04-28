import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

class ChatBubble extends StatelessWidget {
  final String userName;
  final String message; // Add message property

  const ChatBubble({Key? key, required this.userName, required this.message, required MaterialColor color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RandomAvatar(
            userName,
            trBackground: false,
            height: 50,
            width: 50,
          ),

          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(message),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
