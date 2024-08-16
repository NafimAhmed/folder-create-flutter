


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:permission_handler/permission_handler.dart';


class Home extends StatelessWidget{






  Future<String> createFolder(String cow) async {
    final folderName = cow;
    final path = Directory("/storage/emulated/0/Download/$folderName");
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    if ((await path.exists())) {
      return path.path;
    } else {
      path.create();
      return path.path;
    }
  }






  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      appBar: AppBar(
        title: Text(""),
      ),

      body: Column(
        children: [
          IconButton(onPressed: (){
            createFolder("Nafim");
          }, icon: Icon(Icons.folder))
        ],
      ),

    );
  }

}

