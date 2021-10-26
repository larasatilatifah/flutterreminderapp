import 'package:flutterreminderapp/db/db_helper.dart';
import 'package:flutterreminderapp/models/task.dart';
import 'package:get/get.dart';

class TaskController extends GetxController{

  @override
  void onReady(){
    super.onReady();
  }

  Future<int> addTask({Task? task}) async{
    return await DBHelper.insert(task);
  }
}