import 'package:flutter/material.dart';

class Aboutskills extends StatelessWidget {
  // StatelessWidget แค่โชว์ข้อความเฉยๆ
  const Aboutskills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'ทักษะภาษาที่ใช้เขียนโปรแกรม',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- html, css, '
            '\n- javascript'
            '\n- jquery'
            '\n- php'
            '\n- api (php) odeesoftware.com/wash/wash.php'
            '\n- python odeesoftware.com/saleeasy/OSE_Sale(E)_setup.zip'
            '\n- flutter'
            '\n- iot',
            style: TextStyle(fontSize: 16),
          )),
    ]);
  }
}
