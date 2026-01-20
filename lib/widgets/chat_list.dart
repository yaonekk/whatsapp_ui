import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/my_message_card.dart';
import 'package:whatsapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          // MyMessage -> card
          return MyMessageCard(
            date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString(),
          );
        }

        // SenderMessage -> card
        return SenderMessageCard(
          date: messages[index]['time'].toString(),
          message: messages[index]['text'].toString(),
        );
      },
    );
  }
}
