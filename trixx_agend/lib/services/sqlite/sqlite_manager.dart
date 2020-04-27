import 'dart:async';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteManager with ChangeNotifier {
  static Database database;

  SqliteManager(){
    _openDatabase();
  }

  _openDatabase() async{
    openDatabase(join(await getDatabasesPath(), "trixx_agend.db"),
      onCreate: (db, version) {
      return db.execute(
      "CREATE TABLE `user` (`id` int(10) unsigned NOT NULL AUTO_INCREMENT,`nick` varchar(255) NOT NULL,`role` varchar(255) DEFAULT NULL,`birthdate` date DEFAULT NULL,`orientation` varchar(255) DEFAULT NULL,`fetish` text DEFAULT NULL,`description` text DEFAULT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1"
      );
    }, version: 1).then((db) => {
      SqliteManager.database = db
    });
  }
}