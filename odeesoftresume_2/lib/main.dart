import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odeesoftresume/Projects.dart';
import 'package:odeesoftresume/github.dart';
import 'package:odeesoftresume/googleplay.dart';
import 'package:odeesoftresume/home.dart';
import 'package:odeesoftresume/other.dart';
import 'package:odeesoftresume/skills.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;
  ValueNotifier<int> isButtonPressed = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        buildTop(),
        buildContent(),
      ],
    ));
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buidProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image.asset(
        'assets/top.jpg',
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ));

  Widget buidProfileImage() => Container(
        width: profileHeight,
        height: profileHeight,
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 6.0,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
      );

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'นาย วิศรุต แย้มผิวขำ',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Full Stack Developer',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialButton(FontAwesomeIcons.house, 0),
              const SizedBox(
                width: 12,
              ),
              buildSocialButton(FontAwesomeIcons.github, 1),
              const SizedBox(
                width: 12,
              ),
              buildSocialButton(FontAwesomeIcons.googlePlay, 2),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
            padding: EdgeInsets.only(top: 16),
            width: 200, // กำหนดความยาวของเส้นขีดเป็น 200 พิกเซล
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildButton(
                text: 'Projects',
                value: 9,
                vvax: 3,
                elevation: 4.0,
                color: Colors.blue.withOpacity(0.7),
              ),
              buildDivider(),
              buildButton(
                text: 'skills',
                value: 8,
                vvax: 4,
                elevation: 4.0,
                color: Colors.blue.withOpacity(0.7),
              ),
              buildDivider(),
              buildButton(
                text: 'other',
                value: 4,
                vvax: 5,
                elevation: 4.0,
                color: Colors.blue.withOpacity(0.7),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
            padding: EdgeInsets.only(top: 16),
            width: 200, // กำหนดความยาวของเส้นขีดเป็น 200 พิกเซล
          ),
          const SizedBox(height: 16),
          ValueListenableBuilder(
            valueListenable: isButtonPressed,
            builder: (context, value, child) {
              if (value == 0)
                return AboutHome();
              else if (value == 1)
                return AboutGithub();
              else if (value == 2)
                return Aboutgoogleplay();
              else if (value == 3)
                return AboutProject();
              else if (value == 4)
                return Aboutskills();
              else if (value == 5)
                return Aboutother();
              else
                return Container(); // แสดง Widget ว่างเปล่าถ้า isButtonPressed ไม่ตรงเงื่อนไขใดๆ
            },
          ),
        ],
      );

  Widget buildSocialButton(IconData icon, int vvax) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              isButtonPressed.value = vvax;
            },
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );

  Widget buildDivider() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 24.0,
          width: 1.0,
          color: Colors.white.withOpacity(0.6),
          child: VerticalDivider(
            color: Colors.grey,
          ),
        ),
      );

  Widget buildButton({
    required String text,
    required int value,
    required int vvax,
    double elevation = 0.0,
    Color color = Colors.blue,
    Color textColor = Colors.black,
  }) =>
      MaterialButton(
        elevation: elevation,
        onPressed: () {
          isButtonPressed.value = vvax;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '$value',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );
}
