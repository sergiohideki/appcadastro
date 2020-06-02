import 'package:flutter/material.dart';

import 'package:appcadastro/data/dummy_users.dart';
import 'package:appcadastro/components/user_tile.dart';

class UserList extends StatelessWidget {
  final users = DUMMY_USERS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de usuários'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
        ));
  }
}
