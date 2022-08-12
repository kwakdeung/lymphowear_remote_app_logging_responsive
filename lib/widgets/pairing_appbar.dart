import 'package:flutter/material.dart';

class PairingAppbar extends StatelessWidget {
  const PairingAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(135, 18, 134, 18),
              child: const Text('Add Device'),
            ),
          ],
        ),
      ),
    );
  }
}
