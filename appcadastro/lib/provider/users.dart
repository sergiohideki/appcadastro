import 'dart:math';

import 'package:flutter/material.dart';

import 'package:appcadastro/data/dummy_users.dart';
import 'package:appcadastro/models/user.dart';

class Users with ChangeNotifier {
  Map<String, User> _users = {...DUMMY_USERS};

  List<User> get all {
    return [..._users.values];
  }

  int get count {
    return _users.length;
  }

  User byIndex(int i) {
    return _users.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    //  Alterar
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _users.containsKey(user.id)) {
      _users.update(
          user.id,
          (_) => User(
                id: user.id,
                name: user.name,
                email: user.email,
                avatarUrl: user.avatarUrl,
              ));
    notifyListeners();
    }
    // Adicionar
    else {
      final id = Random().nextDouble().toString();
      _users.putIfAbsent(
          '1000',
          () => User(
                id: id,
                name: user.name,
                email: user.email,
                avatarUrl: user.avatarUrl,
              ));
    notifyListeners();
    }
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _users.remove(user.id);
      notifyListeners();
    }
  }
}
