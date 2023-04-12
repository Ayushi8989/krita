import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

User? userr;
String? posttime;
int? days, time, hrs, minutes;

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
    final Users =
        FirebaseFirestore.instance.collection('Users').doc(userr!.uid);
    final userpost = Users.collection('userpost');

    final QuerySnapshot snapshot = await userpost.get();
    final List<QueryDocumentSnapshot> documents = snapshot.docs;
    final List<Map<String, dynamic>> userslist =
        documents.map((doc) => doc.data() as Map<String, dynamic>).toList();
    setState(() {
      _users = userslist;
    });
    print(_users);
  }

  time() {
    DateTime startDate = DateTime.now();
    DateTime endDate = DateTime.parse(posttime!);
    Duration timeLeft = endDate.difference(startDate);

    days = timeLeft.inDays;
    hrs = timeLeft.inHours % 24;
    minutes = timeLeft.inMinutes % 60;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (BuildContext context, int index) {
          final Map<String, dynamic> user = _users[index];
          posttime = user['date'];
          time();
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
                const Padding(padding: EdgeInsets.only(top: 15)),
                Container(
                    child: Image.network(
                  user['mediaurl'],
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.7,
                )),
                const Padding(padding: EdgeInsets.only(top: 15)),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 7, right: 7),
                      padding: const EdgeInsets.only(left: 7, right: 7),
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text(user['quantity'] + ' meals'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 7, right: 7),
                      padding: const EdgeInsets.only(left: 7, right: 7),
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.red),
                      ),
                      child: Text('Exp $days days $hrs hrs $minutes min'),
                    ),
                    Container()
                  ],
                )
              ]));
        },
      ),
    );
  }
}
