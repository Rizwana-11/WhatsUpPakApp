import 'package:WhatsUpPak/src/Modules/AuthModule/presentation/Number_register_screen/index.dart';
import 'package:WhatsUpPak/src/Modules/AuthModule/presentation/Profile_screen/index.dart';
import 'package:WhatsUpPak/src/Modules/AuthModule/presentation/Welcome_screen/index.dart';
import 'package:WhatsUpPak/src/Modules/ChatModule/Module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => WelcomeScreen()),
        ModularRouter(NUM_REGISTER_SCREEN,
            child: (_, args) => NumberRegisterScreen()),
        ModularRouter(PROFILE_AUTH_SCREEN,
            child: (_, args) => ProfileAuthScreen()),
        ModularRouter(CHATS, module: ChatModule()),
      ];
  static const WELCOME_SCREEN = '/welcome';
  static const NUM_REGISTER_SCREEN = '/numberregisterscreen';
  static const PROFILE_AUTH_SCREEN = '/profileAuthenticationScreen';
  static const CHATS = '/chats';
}
