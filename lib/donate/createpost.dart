import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:krita/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:krita/donate/SignUp.dart';

class createpost extends StatefulWidget {
  const createpost({super.key});
  @override
  postState createState() => postState();
}

class postState extends State<createpost> {
  XFile? file;

  handletakephoto() async {
    Navigator.pop(context);

    var img = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 675,
      maxWidth: 960,
    );
    setState(() {
      file = img;
    });
    uploadFile(img as File);
  }

  fromgallery() async {
    Navigator.pop(context);

    var image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 675,
      maxWidth: 960,
    );
    setState(() {
      file = image;
    });
    uploadFile(image as File);
  }

  selectImage(parentContext) {
    return showDialog(
        context: parentContext,
        builder: (context) {
          return SimpleDialog(
            title: Text('Upload Image'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("Camera"),
                onPressed: handletakephoto,
              ),
              SimpleDialogOption(
                child: Text("Gallery"),
                onPressed: fromgallery,
              ),
            ],
          );
        });
  }

  Future<String> uploadFile(File image) async {
    String downloadURL;
    String postId = DateTime.now().millisecondsSinceEpoch.toString();
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("images")
        .child("post_$postId.jpg");
    await ref.putFile(image);
    downloadURL = await ref.getDownloadURL();
    print(downloadURL);
    return downloadURL;
  }

// uploadToFirebase()async
// {
// String url=await uploadFile(image); // this will upload the file and store url in the variable 'url'
// await users.doc(uid).update({  //use update to update the doc fields.
// 'url':url
// });
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Krita',
        home: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Donate Food Details',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: main_theme,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "PickUp Where?",
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Food Item(s)",
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Prefered Time",
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "PickUp Date",
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Quantity",
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Add Photos',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  file != null
                      ? Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              File(file!.path),
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ),
                        )
                      : DottedBorder(
                          padding: const EdgeInsets.all(20),
                          color: const Color.fromRGBO(158, 158, 158, 1),
                          strokeWidth: 1,
                          child: IconButton(
                            icon: const Icon(
                              Icons.add_box_rounded,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              selectImage(context);
                            },
                          )),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 1,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(main_theme),
                        ),
                        child: const Text('Post')),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
