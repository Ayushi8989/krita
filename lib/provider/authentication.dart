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


//
// class Authentication extends GetxController {
//   static Authentication get instance => Get.find();
//
//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;
//
//   @override
//   void onReady() {
//     firebaseUser = Rx<User?>(_auth.currentUser);
//     firebaseUser.bindStream(_auth.userChanges());
//     ever(firebaseUser, _setInitialScreen);
//   }
//
//   _setInitialScreen(User? user) {
//     user == null ? Get.offAll(() => const userRole()) : Get.offAll(() => const MainPage());
//   }
//
//   Future<void> createUserWithEmailAndPassword(String email, String password) async {
//     try{
//       await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//     } on FirebaseAuthException catch(e) {
//       // e.code
//     } catch (_) {}
//   }
//
//   Future<void> loginWithEmailAndPassword(String email, String password) async {
//     try{
//       await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//     } on FirebaseAuthException catch(e) {
//       // e.code
//     } catch (_) {}
//   }
// }
//
