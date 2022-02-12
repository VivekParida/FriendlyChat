import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Expanded(
      child: ListView.builder(
        //scrollDirection: Axis.vertical,
        itemCount: Chat.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
            //padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Text(
                            'Hey there! I am using FriendlyChat',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '${now.hour} : ${now.minute}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: 40.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30.0)),
                      alignment: Alignment.center,
                      child: Text(
                        'NEW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

abstract class Chat {
  static var length = 10;
  final today = DateTime.now();
  // final fiftyDaysFromNow = today.add(const Duration(days: 50));
}
