import 'package:flutter/material.dart';
import 'package:lymphowear_remote_app_logging_responsive/pages/pairing/pairing_complete.dart';

class PairingConnect extends StatefulWidget {
  const PairingConnect({Key? key}) : super(key: key);

  @override
  State<PairingConnect> createState() => _PairingConnectState();
}

class _PairingConnectState extends State<PairingConnect> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.grey[700],
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
          margin: const EdgeInsets.fromLTRB(35, 0, 35, 80),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(91, 56, 91, 16),
                child: Image.asset(
                  'assets/images/Pairing03_text.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(63, 0, 63, 0),
                child: Image.asset(
                  'assets/images/Pairing03_image.png',
                  fit: BoxFit.fill,
                ),
              ),
              const Spacer(),
              Container(
                // margin: const EdgeInsets.fromLTRB(0, 156, 0, 0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // fixedSize: const Size(320, 48),
                    padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                    primary: const Color(0xff008A40),
                    onPrimary: Colors.white,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onPressed: () => showProgressDialog('Pairing...'),
                  child: const Text(
                    'Connect',
                  ),
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
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const PairingComplete()));
        });
        return Theme(
          data: ThemeData(dialogBackgroundColor: Colors.white),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            content: Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              width: 178,
              height: 96,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(77, 8, 77, 4),
                      height: 24.0,
                      width: 24.0,
                      child: const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.blue),
                          strokeWidth: 5.0),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(56, 8, 56, 8),
                      child: Text(
                        message,
                        style: const TextStyle(fontSize: 16),
                      ),
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
