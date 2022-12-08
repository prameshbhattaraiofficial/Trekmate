import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trekmate/Screen/Archive.dart';
import 'package:trekmate/Screen/Create_Community.dart';
import 'package:trekmate/Screen/Message_Request.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: const Center(child: Text('Messenger')),
       ),
      body: const Center(
        child: Text('Messenger'),
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: const Text('Archive'),
              onTap: () {
                Navigator.push((context), MaterialPageRoute(builder: (context)=> Archive()));
              },
            ),
            ListTile(
              leading: Icon(Icons.create),
              title: const Text(' Create Community'),
              onTap: () {
                Navigator.push((context), MaterialPageRoute(builder: (context)=> CreateCommunity()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: const Text(' Message Request'),
              onTap: () {
                Navigator.push((context), MaterialPageRoute(builder: (context)=> MessageRequest()));
              },
            ),
          ],
        ),
      ),


    );
  }
}