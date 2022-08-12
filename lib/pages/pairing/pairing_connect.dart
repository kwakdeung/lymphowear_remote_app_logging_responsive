import 'package:flutter/material.dart';
import 'package:lymphowear_remote_app_logging_responsive/pages/pairing/pairing_complete.dart';

class PairingConnect extends StatefulWidget {
  const PairingConnect({Key? key}) : super(key: key);

  @override
  State<PairingConnect> createState() => _PairingConnectState();
}

class _PairingConnectState extends State<PairingConnect> {
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
    pageController.dispose();
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
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
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
        child: Container(
          margin: const EdgeInsets.all(0.0),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(91, 56, 91, 16),
                padding: const EdgeInsets.all(0.0),
                // width: 178, // log
                // height: 20,
                child: Image.asset(
                  'assets/images/Pairing03_text.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(63, 0, 63, 0),
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                // width: 234, // log
                // height: 166,
                child: Image.asset(
                  'assets/images/Pairing03_image.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 174, 20, 80),
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(320, 48), // 왼쪽 width 미디어 쿼리 적용하기
                    primary: Colors.green[500],
                    onPrimary: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => showProgressDialog('Pairing...'),

                  // 페이지 중 앱바 유지 위젯만 바꾸기
                  child: const Text('Connect'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future showProgressDialog(String message) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 5), () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const PairingComplete())); // start
        });
        return Theme(
          data: ThemeData(dialogBackgroundColor: Colors.white),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            content: SizedBox(
              height: 90,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 25.0,
                      width: 25.0,
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.blue),
                          strokeWidth: 5.0),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      message,
                      style: const TextStyle(fontSize: 20, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
