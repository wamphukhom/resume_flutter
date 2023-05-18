import 'package:flutter/material.dart';

class AboutProject extends StatelessWidget {
  // StatelessWidget แค่โชว์ข้อความเฉยๆ
  const AboutProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'โปรเจ็คที่สร้างมา',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- โปรแกรมขายอาหารผ่านมือถือ (บริษัท)'
            '\n- โปรแกรมพิมพ์สติ๊กเกอร์หางหนู (บริษัท)'
            '\n- web app โปรแกรมอพาร์ทเม้นท์'
            '\n- web app โปรแกรมขายสินค้า'
            '\n- mobile ขายสินค้าผ่านมือถือ'
            '\n- mobile เช็คสต๊อกสินค้า'
            '\n- mobile จดน้ำ-ไฟ อพาร์ทเม้น'
            '\n- ระบบขาย Internet ในห้องพัก (หยอดเหรียญ)'
            '\n- ตู้น้ำล้างรถหยอดเหรียญ ทั้งระบบ',
            style: TextStyle(fontSize: 16),
          )),
    ]);
  }
}
