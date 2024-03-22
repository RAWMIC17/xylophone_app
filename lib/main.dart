import 'package:flutter/material.dart';
import 'package:xylophone_app/pages/playerpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XylophoneAppPage(),
      debugShowCheckedModeBanner: false,

      //initialRoute: ,

      routes: {
         // "/": (context) =>  XylophoneAppPage(),
          
          // MyRoutes.playerpageroute: (context) => XylophoneAppPage(),
        //   MyRoutes.notificationRoute:(context) => NotificationPage(),
      },
    );
  }
}
