import 'package:flutter/material.dart';

class AboutGithub extends StatelessWidget {
  // StatelessWidget แค่โชว์ข้อความเฉยๆ
  const AboutGithub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'github.com/wamphukhom',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '- coin_acceptor_old'
            '\n- esp32checktime'
            '\n- esp32_deep_sleep_wakeup'
            '\n- datajson'
            '\n- setstate-other-page'
            '\n- flutter-widget-tablet-coffee'
            '\n- exchange_thai_price'
            '\n- bitcoin',
            style: TextStyle(fontSize: 16),
          )),
    ]);
  }
}
