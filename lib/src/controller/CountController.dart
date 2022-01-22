import 'package:get/get.dart';

class CountController extends GetxController{
  int count = 1;
  void incremet(String id){
    count++;
    update([id]);
  }
}