import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/src/controller/CountController.dart';
import 'package:getex/src/controller/ReactCountController.dart';


class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  Widget _button(String id) {
    return ElevatedButton(
      onPressed: () {
        Get.find<CountController>().incremet(id);
      },
      child: Icon(Icons.plus_one, size: 30,),
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    Get.put(ReactCountController());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('GetX ', style: TextStyle(fontSize: 30),),
        GetBuilder<CountController>(
          id: 'first',
          builder: (controller) {
            return Text('${controller.count}', style: TextStyle(fontSize: 30),);
          },
        ),
        GetBuilder<CountController>(
          id: 'second',
          builder: (controller) {
            return Text('${controller.count}', style: TextStyle(fontSize: 30),);
          },
        ),
        _button('first'),
        _button('second'),
        Divider(
          color: Colors.black,
          height: 20,
          thickness: 3,
          indent: 20,
          endIndent: 20,
        ),
        Text('GetX 동적 상태 관리 ', style: TextStyle(fontSize: 30),),
        Obx(() => Text(
          '${Get.find<ReactCountController>().count.value}',
          style: TextStyle(fontSize: 30),
        )),
        ElevatedButton(
          onPressed: () {
            Get.find<ReactCountController>().increase();
          },
          child: Icon(Icons.plus_one, size: 30,),
        ),
      ],
    ),);
  }
}

