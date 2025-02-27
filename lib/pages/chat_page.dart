import 'dart:html';

import 'package:chatappv2/components/my_textfield.dart';
import 'package:chatappv2/services/auth/auth_service.dart';
import 'package:chatappv2/services/chat/chat_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  final String receiverEmail;
  final String receiverID;

   ChatPage({
    super.key,
    required this.receiverEmail,
    required this.receiverID,
  });

final TextEditingController _messageController = TextEditingController();

final ChatService _chatService = ChatService();
final AuthServices _authService = AuthServices();


void sendMessage () async {
  if(_messageController.text.isNotEmpty)
  {
    await _chatService.sendMessage(receiverID,_messageController.text);


    _messageController.clear();
  }
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(receiverEmail),),
      body: Column(
        children: [
          Expanded(child:_buildMessageList(),

          ),
          _buildUserInput(),
        ],

      ),
    );
  }
  Widget _buildMessageList()
  {
    String senderID = _authService.getCurrentUser()!.uid;
    return StreamBuilder(
      stream: _chatService.getMessages(receiverID,senderID),
     builder:(context, snapshot){

      if(snapshot.hasError)
      {
        return const Text("ERROR");
      }

      if(snapshot.connectionState == ConnectionState.waiting)
      {
        return const Text("Loading....");

      }
      return ListView(
children:snapshot.data!.docs.map((doc)=>_buildMessageItem(doc)).toList(),
      );

     },
     );
  }

     Widget _buildMessageItem(DocumentSnapshot doc)
     {
      Map<String, dynamic> data = doc.data() as Map<String> , dynamic>;
      bool isCurrentUser = data['senderID']== _authService.getCurrentUser()!.uid;
      var alignment = isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;

      return Container(
        alignment: alignment,
        child: Text(data['message']),
      );
     }


     Widget _buildUserInput()
     {
      return Row(
        children: [
          Expanded(child: MyTextField(
            controller: _messageController,
            hintText: "Type a message",
            obscureText: false,

          ),),
          IconButton(onPressed: sendMessage, icon: Icon(Icons.arrow_upward),),
        ],

      );
     }
  
}