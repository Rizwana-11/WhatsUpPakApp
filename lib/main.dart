import 'package:WhatsUpPak/src/Modules/AuthModule/Module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/Modules/ChatModule/Module.dart';

main() {
  runApp(ModularApp(module: WhatsUpPak()));
}

class WhatsUpPak extends MainModule {
  final authModule = AuthModule();
  final chatModule = ChatModule();
  // final profileModule = ProfileModule();
  // final groupModule = GroupModule();

  @override
  List<Bind> get binds => [
        ...authModule.binds,
        ...chatModule.binds,
        //   ...profileModule.binds,
        //   ...groupModule.binds,
      ];

  @override
  Widget get bootstrap => App();

  @override
  List<ModularRouter> get routers => [
        ...authModule.routers,
        ...chatModule.routers,
        // ...profileModule.routers,
        // ...groupModule.routers,
      ];
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsUpPak',
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
      initialRoute: '/',
    );
  }
}
