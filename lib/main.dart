import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/colors.dart';
import 'package:whatsapp_responsive/responsive/responsive_layout.dart';
import 'package:whatsapp_responsive/screens/mobile_screen_layout.dart';
import 'package:whatsapp_responsive/screens/web_screen_layout.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Responsive',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
