import 'package:get/get.dart';
class ReactCountController extends GetxController{
  RxInt count = 0.obs;
  void increase(){
    count++;
  }

  @override
  void onInit() {
    ever(count, (_) => print('매번호출됨'));
    once(count, (_) => print('딱 한번만 호출됨'));
    debounce(count, (_) => print('마지막 변i경 시 한번 만 호출됨'),
    time: Duration(seconds: 3));
    super.onInit();
  }
}