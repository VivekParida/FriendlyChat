import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friendly_chat/widgets/Chats.dart';
import 'package:friendly_chat/widgets/category_selector.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatRoom'),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              child: Column(
                children: const <Widget>[
                  Chats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context){
  //   return Container(

  //   )
  // }

}
