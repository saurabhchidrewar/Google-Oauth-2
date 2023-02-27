import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'login_page.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    try {
      print(user.displayName);
      print(user.email);
    } catch (e) {
      print(e);
    }
    if (user == null) {
      return LoginPage();
    }
    return HomePage();
  }
}
