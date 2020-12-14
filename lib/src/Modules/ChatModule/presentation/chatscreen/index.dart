// // import 'package:WhatsUpPak/src/Modules/ChatModule/presentation/chatscreen/camera.dart';
// // import 'package:camera/camera.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:flutterwhatsapp/pages/call_screen.dart';
// // // import 'package:flutterwhatsapp/pages/camera_screen.dart';
// // // import 'package:flutterwhatsapp/pages/chat_screen.dart';
// // // import 'package:flutterwhatsapp/pages/status_screen.dart';

// // class WhatsAppHome extends StatefulWidget {
// //   final List<CameraDescription> cameras;
// //   WhatsAppHome({this.cameras});

// //   @override
// //   _WhatsAppHomeState createState() => _WhatsAppHomeState();
// // }

// // class _WhatsAppHomeState extends State<WhatsAppHome>
// //     with SingleTickerProviderStateMixin {
// //   TabController _tabController;
// //   bool showFab = true;

// //   @override
// //   void initState() {
// //     super.initState();

// //     _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
// //     _tabController.addListener(() {
// //       if (_tabController.index == 1) {
// //         showFab = true;
// //       } else {
// //         showFab = false;
// //       }
// //       setState(() {});
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("WhatsApp"),
// //         elevation: 0.7,
// //         bottom: TabBar(
// //           controller: _tabController,
// //           indicatorColor: Colors.white,
// //           tabs: <Widget>[
// //             Tab(icon: Icon(Icons.camera_alt)),
// //             Tab(text: "CHATS"),
// //             Tab(
// //               text: "STATUS",
// //             ),
// //             Tab(
// //               text: "CALLS",
// //             ),
// //           ],
// //         ),
// //         actions: <Widget>[
// //           Icon(Icons.search),
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 5.0),
// //           ),
// //           Icon(Icons.more_vert)
// //         ],
// //       ),
// //       body: TabBarView(
// //         controller: _tabController,
// //         children: <Widget>[
// //           CameraScreen(widget.cameras),
// //         ],
// //       ),
// //       floatingActionButton: showFab
// //           ? FloatingActionButton(
// //               backgroundColor: Theme.of(context).accentColor,
// //               child: Icon(
// //                 Icons.message,
// //                 color: Colors.white,
// //               ),
// //               onPressed: () => print("open chats"),
// //             )
// //           : null,
// //     );
// //   }
// // }

// import 'package:WhatsUpPak/src/Components/Models/Chatscrenn_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';

// import '../../Module.dart';

// class ChatScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             color: Colors.teal[900],
//             height: height * 0.17,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "WhatsUpPak",
//                       style: TextStyle(fontSize: 23, color: Colors.white),
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                         Icon(Icons.more_vert, color: Colors.white),
//                       ],
//                     )
//                   ],
//                 ),
//                 Container(
//                   height: height * 0.07,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: width * 0.15,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Icon(
//                               Icons.camera_alt,
//                               size: 25,
//                               color: Colors.white,
//                             ),
//                             Container(
//                               height: 3,
//                               width: width * 0.15,
//                               color: Colors.teal[900],
//                             )
//                           ],
//                         ),
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             width: width * 0.25,
//                             child: Center(
//                               child: Text(
//                                 "Chats",
//                                 style: TextStyle(
//                                     fontSize: 20, color: Colors.white),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: width * 0.25,
//                             height: 3,
//                             color: Colors.white,
//                           )
//                         ],
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             width: width * 0.25,
//                             child: Center(
//                               child: Text(
//                                 "Stories",
//                                 style: TextStyle(
//                                     fontSize: 20, color: Colors.white),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: width * 0.25,
//                             height: 3,
//                             color: Colors.teal[900],
//                           )
//                         ],
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             width: width * 0.25,
//                             child: Center(
//                               child: Text(
//                                 "Calls",
//                                 style: TextStyle(
//                                     fontSize: 20, color: Colors.white),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: width * 0.25,
//                             height: 3,
//                             color: Colors.teal[900],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(padding: EdgeInsets.only(), child: MyApp()),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         elevation: 0.0,
//         child: new Icon(Icons.chat),
//         backgroundColor: Colors.teal[800],
//         onPressed: () {
//           // Modular.to.pushNamed(ChatModule.NEW_CHAT_SCREEN);
//         },
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   MyApp({Key key}) : super(key: key);

//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return currentMsg.length == 0
//         ? Center(
//             child: Text('Create a chat'),
//           )
//         : ListView.builder(
//             padding: EdgeInsets.all(0.0),
//             itemCount: currentMsg.length,
//             itemBuilder: (context, index) {
//               final chat = currentMsg[index];

//               return Dismissible(
//                 confirmDismiss: (direction) async {
//                   if (direction == DismissDirection.endToStart) {
//                     final bool res = await showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             content: Text("Are you sure you want to delete "),
//                             actions: <Widget>[
//                               FlatButton(
//                                 child: Text(
//                                   "Cancel",
//                                   style: TextStyle(color: Colors.black),
//                                 ),
//                                 onPressed: () {
//                                   Modular.to.pop();
//                                 },
//                               ),
//                               FlatButton(
//                                 child: Text(
//                                   "Delete",
//                                   style: TextStyle(color: Colors.red),
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     currentMsg.removeAt(index);
//                                   });
//                                   Modular.to.pop();
//                                 },
//                               ),
//                             ],
//                           );
//                         });
//                     return res;
//                   }
//                 },
//                 direction: DismissDirection.endToStart,
//                 key: Key(DateTime.now().millisecond.toString()),
//                 onDismissed: (direction) {
//                   setState(() {
//                     currentMsg.removeAt(index);
//                   });
//                 },
//                 background: Container(
//                   padding: EdgeInsets.only(right: 10),
//                   alignment: Alignment.centerRight,
//                   color: Colors.grey,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(10)),
//                     height: 50,
//                     width: 50,
//                     child: Icon(
//                       Icons.delete,
//                       size: 30,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 child: ListTile(
//                   onTap: () {
//                     Modular.to.pushNamed(ChatModule.CONVERSATION);
//                   },
//                   leading: GestureDetector(
//                     onLongPress: () {
//                       return AlertDialog(
//                         title: Text(chat.title),
//                       );
//                     },
//                     child: Container(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(25),
//                         child: Image.network(
//                           chat.imageUrl,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(25)),
//                       height: 50,
//                       width: 50,
//                     ),
//                   ),
//                   title: Text(chat.title),
//                   subtitle: Text(
//                     chat.msg,
//                     style: TextStyle(fontSize: 12),
//                   ),
//                   trailing: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text('9:23 pm'),
//                       Container(
//                         height: 15,
//                         width: 15,
//                         // color: Colors.red,
//                         child: CircleAvatar(
//                           backgroundColor: Colors.purple,
//                           minRadius: 7,
//                           child: Text(
//                             chat.nMsgs.toString(),
//                             style: TextStyle(color: Colors.white, fontSize: 10),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//   }

// }

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsUpPak'),
        centerTitle: true,
      ),
    );
  }
}
