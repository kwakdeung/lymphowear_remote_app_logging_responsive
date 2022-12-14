import 'package:flutter/material.dart';
import 'package:lymphowear_remote_app_logging_responsive/components/circularindicator.dart';

class LymphoWearState extends StatelessWidget {
  const LymphoWearState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(53, 0, 53, 8), // 113, 20, 113, 8
          child: const FittedBox(
            child: Text(
              'Manual Mode',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        FittedBox(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 96, 0, 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Color(0xff212121)),
                        shape: const CircleBorder(), //<-- SEE HERE
                        padding: const EdgeInsets.all(10),
                        surfaceTintColor: Colors.white),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: CircularIndicator(),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 96, 0, 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Color(0xff212121)),
                        shape: const CircleBorder(), //<-- SEE HERE
                        padding: const EdgeInsets.all(10),
                        surfaceTintColor: Colors.white),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
