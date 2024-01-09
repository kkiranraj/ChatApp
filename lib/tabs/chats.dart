import 'package:chatapp/model/chat_model.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context,i)=> Column(
        children:<Widget> [
          const Divider(height: 0.1,),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Text(
                  chatsData[i].name
                ),
                Text(
                    chatsData[i].time)
              ],
            ),
            subtitle: Text(
              chatsData[i].msg,
              style: const TextStyle(color: Colors.grey,fontSize: 11.0),
            ) ,
          ),
        ],
      ),
    );
  }}