import 'package:flutter/material.dart';

import '../model/call_model.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                const Divider(height: 0.1),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(callData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(callData[i].name,
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Icon(
                        i % 2 == 0 ? Icons.call : Icons.videocam,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  subtitle: Text(
                    callData[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                )
              ],
            ));
  }
}