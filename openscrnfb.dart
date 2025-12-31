import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/chatsui.dart';
import 'package:flutter_application_1/facebook/frndreqscrn.dart';
import 'package:flutter_application_1/facebook/homescrnfb.dart';
import 'package:flutter_application_1/facebook/loginui.dart';
import 'package:flutter_application_1/facebook/notific.dart';
import 'package:flutter_application_1/facebook/profileui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class fbopen extends StatelessWidget {
  const fbopen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => logui()),
              );
            },
            icon: Icon(Icons.arrow_back_rounded),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Color(0xff1877F2),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_sharp, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fbchat()),
                );
              },
              icon: FaIcon(FontAwesomeIcons.facebookMessenger,color: Colors.blue,)
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_rounded),
                ),
              ),
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.people_alt_rounded),
                ),
              ),
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_add_rounded),
                ),
              ),
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle_sharp),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          fbhome(),
          fbfrnds(),
          fbnot(),
          profile(),
      ]
      ),
      ),
    );
  }
}
