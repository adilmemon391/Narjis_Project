import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';

import 'package:login_singup_firebase/Models/userModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper {
  static Database? _db;

  static const String TableUser = 'user';
  static const String DB_Name = 'test.db';
  static const int Version = 1;

  static const String C_UserId = 'UserId';
  static const String C_UserName = 'UserName';
  static const String C_Email = 'Email';
  static const String C_Password = 'Password';

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();

    return _db;
  }

  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, DB_Name);

    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $TableUser("
        "$C_UserId Text,"
        "$C_UserName Text,"
        "$C_Email Text,"
        "$C_Password Text,"
        "PRIMARY KEY ($C_UserId)"
        ")");
  }

  Future<int?> saveData(UserModel user) async {
    var dbClint = await db;
    var res = await dbClint!.insert(TableUser, user.toMap());
    return res;
  }

  Future<UserModel?> getLoginUser(String UserId, String password) async {
    var dbClint = await db;
    var res = await dbClint!.rawQuery("SELECT * FROM $TableUser WHERE "
        "$C_UserId = '$UserId' AND "
        "$C_Password = '$password'");
    if (res.length > 0) {
      return UserModel.fromMap(res.first);
    }
    return null;
  }

  Future<int> updateUser(UserModel user) async {
    var dbClint = await db;
    var res = await dbClint!.update(TableUser, user.toMap(),
        where: '$C_UserId = ?', whereArgs: [user.UserId]);
    return res;
  }

  Future<int> deleteUser(String Userid) async {
    var dbClint = await db;
    var res = await dbClint!
        .delete(TableUser, where: '$C_UserId = ?', whereArgs: [Userid]);
    return res;
  }
}
