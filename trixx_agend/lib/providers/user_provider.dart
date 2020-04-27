import 'package:app/models/user/user_model.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  UserModel user;

  Future<UserModel> findUser(context) async{
//    await API.getLoggedUser(context).then((UserModel user){
//      this.user = user;
//    });

    return this.user;
  }
}