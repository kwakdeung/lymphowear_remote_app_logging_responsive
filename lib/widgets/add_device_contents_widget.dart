// import 'package:flutter/material.dart';
// import 'package:lymphowear_remode_app_logging/models/add_device_model.dart';
// import 'package:lymphowear_remode_app_logging/pages/contents/loader_page.dart';

// class AdviceContentsWidget extends StatelessWidget {
//   const AdviceContentsWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     late PageController pageController;
//     pageController = PageController();
//     return PageView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       controller: pageController,
//       itemCount: adddeviceData.length,
//       onPageChanged: (index) {},
//       itemBuilder: (BuildContext context, int index) => LoaderPage(
//         name: adddeviceData[index].name,
//         model: adddeviceData[index].model,
//         loading: adddeviceData[index].loading,
//       ),
//     );
//   }
// }
