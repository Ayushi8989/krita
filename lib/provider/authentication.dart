import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:krita/ngo/mainPage.dart';
import 'package:krita/ngo/userRole.dart';

class Authentication {
  Future<User?> signInWithGoogle() async {
    GoogleSignIn? googleSignIn;

    // For Android platform
    googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
    await googleSignInAccount!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential credentials =
    await FirebaseAuth.instance.signInWithCredential(credential);
    return credentials.user;
  }


  Future<void> logout() async => await FirebaseAuth.instance.signOut();
}