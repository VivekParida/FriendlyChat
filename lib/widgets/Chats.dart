import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //scrollDirection: Axis.vertical,
        itemCount: Chat.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: <Widget>[
              const CircleAvatar(
                radius: 35.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.0),
                  ),
                  Text('Hey there! I am using FriendlyChat'),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class Chat {
  static var length = 10;
}
