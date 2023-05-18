import 'package:flutter/material.dart';

class AboutHome extends StatelessWidget {
  // StatelessWidget แค่โชว์ข้อความเฉยๆ
  const AboutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'เรียนทีมงานสรรหาบุคลากร',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'ขอสมัครตำแหน่ง Full Stack Developer ที่ บริษัท อี.แอนด์ วี. จำกัด ซึ่งได้ทราบว่าบริษัทมีความเชียวชาญด้านการผลิตสินค้าตกแต่งบ้าน ได้เปิดรับตำแหน่ง PHP Programmer ผมเชื่อว่าผมมีความสามารถและความคิดสร้างสรรค์ที่จำเป็นในการเป็น Full Stack Developer ที่ดีและสามารถทำงานร่วมกับทีมได้อย่างมีประสิทธิภาพ',
          style: TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(height: 16),
      Text(
        'ระดับการศึกษา',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
            '- ระดับมัธยมศึกษา โรงเรียนมัธยมวัดหนองแขม'
            '\n- ระดับบัณฑิต(ปริญญาตรี) มหาวิทยาลัยเอเชียอาคเนย์'
            '\n\t สาขา คอมพิวเตอร์ธุรกิจ',
            style: TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(height: 16),
      Text(
        'นี่คือบางสิ่งที่ฉันมีความเชี่ยวชาญ',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- ใช้ภาษา Javascript, Python, PHP, C++, Flutter, API, Mysql'
            '\n- มีความสามารถในการวิเคราะห์และออกแบบระบบ'
            '\n- สามารถทำงานเป็นทีมได้ดี'
            '\n- มีทักษะในการแก้ไขปัญหาและการตัดสินใจที่ดี',
            style: TextStyle(fontSize: 16),
          )),
      SizedBox(height: 16),
      Text(
        'ประสบการณ์การทำงานกับบริษัท',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Support and Developer ที่บริษัท Aristosoft 2549-2559',
            style: TextStyle(fontSize: 16),
          )),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'ประสบการณ์การทำธุรกิจ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- ขายสินค้าออนไลท์ (ดิวกับบริษัทจากจีนโดยตรง)'
            '\n- เขียนเว็ปแอพให้เช่าใช้งาน เช่น โปรแกรมอพาร์ทเม้นท์, โปรแกรมขายสินค้า'
            '\n- ทำระบบขายสินค้าบนมือถือ ร้านขายของ เช็คราคาสินค้า เช็คสต๊อกสินค้า'
            '\n- ทำระบบขาย Internet หยอดเหรียญ'
            '\n- เปิดคอร์สออนไลท์สร้างตู้ล้างรถหยอดเหรียญ',
            style: TextStyle(fontSize: 16),
          )),
    ]);
  }
}
