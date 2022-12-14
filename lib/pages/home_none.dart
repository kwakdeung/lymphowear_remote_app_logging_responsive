import 'package:flutter/material.dart';
import 'package:lymphowear_remote_app_logging_responsive/widgets/home/home_bluetooth.dart';

class HomeNone extends StatelessWidget {
  const HomeNone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Image.asset('assets/images/Appbar_Text_LymphoWear.png'),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              color: Colors.grey[200],
              height: 2.0,
            )),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.settings_outlined),
              color: Colors.grey[700],
              onPressed: () {}),
        ],
      ),
      body: Center(
        child: Container(
          color: const Color(0xffF3F3F3),
          child: Container(
            margin: const EdgeInsets.fromLTRB(35, 0, 35, 80),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 8),
                  child: Image.asset(
                    'assets/images/Home_none_title.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Image.asset(
                    'assets/images/Home_none_content.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/Home_none_image.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder:
                      //         ((context, animation, secondaryAnimation) =>
                      //             const HomeRefresh()),
                      //     transitionDuration: const Duration(seconds: 0),
                      //   ),
                      // ); // Home_BT?????? / ????????? ?????? ??????
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              ((context, animation, secondaryAnimation) =>
                                  const HomeBluetooth()),
                          transitionDuration: const Duration(seconds: 0),
                        ),
                      ); // Home_BT????????? ????????? ??????
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_outlined,
                      color: Colors.green,
                    ),
                    label: const Text(
                      'Add Device',
                      style: TextStyle(color: Colors.green),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                      primary: Colors.white,
                      // fixedSize: const Size(320, 48),
                      side: const BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
