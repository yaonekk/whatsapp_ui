import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor)),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
            ),
          ),
          SizedBox(
            // width: MediaQuery.of(context).size.width * 0.15,
          ), // Not the best approach (so we grouped the icons into row, and add mainAx.spaceB to the parent Row)
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
