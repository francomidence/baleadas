import 'package:baleadas/models/user.dart';
import 'package:baleadas/screens/auth/auth.dart';
import 'package:baleadas/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either home or auth widget

    final user = Provider.of<User>(context);

    if (user == null) {
      return Auth();
    } else {
      return Home();
    }
  }
}
