import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routesapp/util/constantes.dart';

class Feed extends StatelessWidget {

  final String data;

  Feed(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            child: FloatingActionButton(
              onPressed: (){
                printIps();
                Navigator.pushNamed(context, homeRoute, arguments: 'Data from Gustavo');
            },)
            //Text('Feed: $data')
      )),
    );
  }

  Future printIps() async {
    for (var interface in await NetworkInterface.list()) {
      print('== Interface: ${interface.name} ==');
      for (var addr in interface.addresses) {
        print(
            '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
      }
    }
  }

}