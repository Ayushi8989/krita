import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:krita/provider/sign_in_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

User? userr;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> _users = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    userr = FirebaseAuth.instance.currentUser;

    final CollectionReference users =
        FirebaseFirestore.instance.collection('Users');
    final QuerySnapshot snapshot = await users.get();
    final List<QueryDocumentSnapshot> documents = snapshot.docs;
    final List<Map<String, dynamic>> userslist =
        documents.map((doc) => doc.data() as Map<String, dynamic>).toList();
    setState(() {
      _users = userslist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (BuildContext context, int index) {
          final Map<String, dynamic> user = _users[index];
          return Container(
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    color: Color.fromARGB(34, 0, 0, 0),
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      maxRadius: 20,
                      minRadius: 20,
                      backgroundImage:
                          CachedNetworkImageProvider(userr!.photoURL!),
                    ),
                    Text(
                      user['displayName'],
                    ),
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                    IconButton(onPressed: null, icon: Icon(Icons.more_horiz))
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                    child: Image.network(
                  user['mediaurl'],
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.7,
                )),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey),
                      child: Text(user['fooditem']),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey),
                      child: Text(user['fooditem']),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey),
                      child: Text(user['fooditem']),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey),
                      child: Text(user['fooditem']),
                    ),
                  ],
                )
              ]));
        },
      ),
    );
  }
}
