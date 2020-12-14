import 'package:WhatsUpPak/src/Modules/ChatModule/presentation/ConversationScreen/index.dart';
import 'package:WhatsUpPak/src/Modules/ChatModule/presentation/chatscreen/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends ChildModule {
  static const CHATSCREEN = '/chatscreen';
  static const CONVERSATION = '/conversationscreen';
  @override
  // TODO: implement binds
  List<Bind> get binds => [];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
        ModularRouter(CHATSCREEN, child: (_, args) => ChatScreen()),
        ModularRouter(CONVERSATION, child: (_, args) => ConversationScreen()),
      ];
}
