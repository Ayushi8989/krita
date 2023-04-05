import 'package:flutter/material.dart';
import 'package:krita/constants.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:krita/provider/sign_in_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:krita/donate/profile.dart';

class UserFeed extends StatefulWidget {
  const UserFeed({Key? key}) : super(key: key);

  @override
  State<UserFeed> createState() => UserFeedState();
}

class UserFeedState extends State<UserFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: main_theme,
          iconSize: 30,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            child: IconButton(
              onPressed: () async {
                User? user =
                    await Authentication.signInWithGoogle(context: context);
                if (user != null) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Profile(user: user),
                    ),
                  );
                }
              },
              icon: const Icon(
                Bootstrap.person_fill,
                color: main_theme,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [Text('data')],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: main_theme,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_sharp,
              //Bootstrap.plus_circle,
              color: main_theme,
              size: 35,
            ),
            label: 'Add post',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Bootstrap.chat_dots,
              color: main_theme,
              size: 30,
            ),
            label: 'Chats',
          ),
        ],
        //currentIndex: ,
        //selectedItemColor: main_theme,
        //onTap: ,
      ),
    );
  }
}
