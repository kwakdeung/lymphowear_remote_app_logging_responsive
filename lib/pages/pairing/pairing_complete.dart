import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lymphowear_remote_app_logging_responsive/constants.dart';
import 'package:lymphowear_remote_app_logging_responsive/pages/home_none.dart';

class PairingComplete extends StatefulWidget {
  const PairingComplete({Key? key}) : super(key: key);

  @override
  State<PairingComplete> createState() => _PairingCompleteState();
}

class _PairingCompleteState extends State<PairingComplete> {
  bool isButtonActive = true;
  late PageController pageController;
  int pageIndex = 0;
  int curIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    pageController = PageController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            exit(0);
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Add Device',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              color: Colors.grey[200],
              height: 2.0,
            )),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(72.5, 40, 71.5, 24),
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
              // width: 216, // log
              // height: 160,
              child: Image.asset(
                'assets/images/Pairing04_image.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(104, 0, 103, 8),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              // width: 153, // log
              // height: 20,
              child: Image.asset(
                'assets/images/Pairing04_title.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(97, 0, 96, 160),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              // width: 167, // log
              // height: 20,
              child: Image.asset(
                'assets/images/Pairing04_content.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 80), // 이놈이 문제
              padding: bottombuttonpadding,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 48), // 왼쪽 width 미디어 쿼리 적용하기
                  primary: Colors.green[500],
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) =>
                            const HomeNone()), // Home_name 페이지로
                      ));
                },

                // 페이지 중 앱바 유지 위젯만 바꾸기
                child: const Text('Start'),
              ),
            ),
          ],
        ),
      ), // Start Button
    );
  }
}
