import 'package:flutter/material.dart';

void main() => runApp(new FriendlyChatApp());


class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "FriendlyApp",
        home: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget{
  @override
  ChatScreenState createState()=>new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController textEditingController = new TextEditingController();

  Widget _buildTextComposer(){
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: textEditingController,
        onSubmitted: _handleSubmitted(),
        decoration: new InputDecoration.collapsed(hintText: "Send a message"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FriendlyChat"),
      ),
      body: _buildTextComposer(),
    );
  }

  _handleSubmitted() {
    textEditingController.clear();
  }
}