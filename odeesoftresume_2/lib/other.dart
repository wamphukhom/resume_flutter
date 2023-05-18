import 'package:flutter/material.dart';

class Aboutother extends StatelessWidget {
  // StatelessWidget แค่โชว์ข้อความเฉยๆ
  const Aboutother({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'ทักษะอื่นๆ',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- Affinity Photo'
            '\n- Wondershare Filmora'
            '\n- ถ่ายรูป จัดแสง อุปกรณ์ ทำ live สด'
            '\n- วิธีการติดต่อบริษัทจากจีน',
            style: TextStyle(fontSize: 16),
          )),
    ]);
  }
}
