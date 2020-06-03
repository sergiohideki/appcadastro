import 'package:flutter/material.dart';

import 'package:appcadastro/data/dummy_users.dart';
import 'package:appcadastro/models/user.dart';

class Users with ChangeNotifier{

  Map<String, User> _users = {...DUMMY_USERS};

  List<User> get all {
    return [..._users.values];
  }

  int get count {
    return _users.length;
  }
}