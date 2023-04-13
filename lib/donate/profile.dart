import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:krita/constants.dart';

class profile extends StatefulWidget {
  const profile({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  profileState createState() => profileState(this._user);
}

class profileState extends State<profile> {
  final User _user;

  profileState(this._user);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Krita',
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                color: main_theme,
                iconSize: 30,
                //replace with our own icon data.
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: bg_color,
            // resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.shortestSide * 0.1,
                      top: 60),
                ),
                Row(),
                _user.photoURL != null
                    ? ClipOval(
                        child: Material(
                          color: Colors.grey.withOpacity(0.3),
                          child: Image.network(
                            _user.photoURL!,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      )
                    : ClipOval(
                        child: Material(
                          color: Colors.grey.withOpacity(0.3),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Hello, ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: main_theme,
                        ),
                      ),
                      Text(
                        _user.displayName!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        '!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
