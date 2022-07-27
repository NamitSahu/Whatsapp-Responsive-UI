import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/widgets/contacts_list.dart';

import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          // webScreen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backgroundImage.png'),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
