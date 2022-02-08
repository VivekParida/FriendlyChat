import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friendly_chat/widgets/category_selector.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('ChatRoom'),
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
              decoration: BoxDecoration(),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: CircleAvatar(
                            radius: 32.0,
                          ),
                        ),
                        Column(
                          children: const <Widget>[
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.0),
                            ),
                            //StringCodec()
                            //  Message
                          ],
                        )
                      ],
                    ),
                  )
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
