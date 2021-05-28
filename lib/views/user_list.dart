import 'package:flutter/material.dart';
import 'package:flutter_cunha/components/user_tile.dart';
import 'package:flutter_cunha/data/dummy_users.dart';

class Userlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      )
    );
  }
}