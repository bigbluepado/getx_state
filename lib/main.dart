import 'package:flutter/material.dart';
import 'package:getex/src/page/WithGetX.dart';

void main() {
  runApp(const MaterialApp(
      home: GetX()
  )
  );
}

class GetX extends StatelessWidget {
  const GetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX State'),),
      body: WithGetX(),
    );
  }
}
