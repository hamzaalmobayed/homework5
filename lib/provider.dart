import 'package:flutter/material.dart';
import 'package:gsk_firebase/FireStore.dart';
import 'package:gsk_firebase/helper.dart';

class AuthProvider extends ChangeNotifier{
  TextEditingController emailCon=TextEditingController();
  TextEditingController passwordCon=TextEditingController();
  TextEditingController nameCon=TextEditingController();
  TextEditingController ageCon=TextEditingController();
  signUp() async{
    await Auth_Helper.authHelper.signUp(emailCon.text, passwordCon.text);
    await Auth_Helper.authHelper.checkVerification();
    await Auth_Helper.authHelper.logOut();

  }
  signIn()async{
    await Auth_Helper.authHelper.signUp(emailCon.text, passwordCon.text);
  }
  resetPassword()async{
    await Auth_Helper.authHelper.resetPassword(emailCon.text);
  }
  checkVerification()async{
    await Auth_Helper.authHelper.checkVerification();
  }
  add() async{
    await FireStore_Helper.FireStoreHelper.add("user", {
      "email":emailCon.text,
      "name":nameCon.text,
      "age":ageCon.text
    });
  }
}