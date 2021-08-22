import 'package:firebase_auth/firebase_auth.dart';
class Auth_Helper{
  Auth_Helper._();
  static Auth_Helper authHelper=Auth_Helper._();
  FirebaseAuth fireAuth=FirebaseAuth.instance;
  signUp(String email,String password) async{
    try {
      UserCredential userCredential = await fireAuth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
  signIn(String email,String password) async{
    try {
      UserCredential userCredential = await fireAuth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  User getCurrentUser(){
    User user=fireAuth.currentUser;
    print(user.email);
    print(user.uid);
    user.getIdToken().then((value) => print(value));
    return user;
  }
  resetPassword(String email){
    fireAuth.sendPasswordResetEmail(email: email);
  }
  checkVerification(){
    return fireAuth.currentUser?.emailVerified??false;
  }
  logOut(){
    fireAuth.signOut();
  }
}