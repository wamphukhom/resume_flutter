import 'package:flutter/material.dart';

class Aboutgoogleplay extends StatelessWidget {
  // StatelessWidget แค่โชว์ข้อความเฉยๆ
  const Aboutgoogleplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'play.google.com/Vissarud Wamphukhom',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- ร้านจุดชวนชิม'
            '\n- ODES Check Stock'
            '\n- ODES POS'
            '\n- ode-iot'
            '\n- ODSoft รับเงิน'
            '\n- ODE จดมิเตอร์ น้ำ-ไฟ',
            style: TextStyle(fontSize: 16),
          )),
    ]);
  }
}
