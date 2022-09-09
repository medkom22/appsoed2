// import 'package:flutter/material.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';

// import '../../../widgets/back_button_widget.dart';

// class NotificationView extends StatefulWidget {
//   const NotificationView({Key? key}) : super(key: key);
//   static const String oneSignalAppId = 'd83fd836-b172-482f-9989-08b2909d1c1b';

//   @override
//   State<NotificationView> createState() => _NotificationViewState();
// }

// class _NotificationViewState extends State<NotificationView> {
//   Future initPlatformState() async {
//     OneSignal.shared.setAppId(NotificationView.oneSignalAppId);
//     OneSignal.shared.promptUserForPushNotificationPermission().then((value) {
//       print(value);
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             ///NOTE: Header Notification
//             Container(
//               margin: const EdgeInsets.only(
//                 top: 24,
//                 left: 16,
//                 right: 16,
//                 bottom: 50,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   BackButtonWidget(),
//                   Text(
//                     'Notification',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 40,
//                     width: 40,
//                   ),
//                 ],
//               ),
//             ),
//             Image.asset(
//               'assets/notification-home.png',
//               height: 300,
//               width: double.infinity - (24 * 2),
//               fit: BoxFit.contain,
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             const Text(
//               'Tidak ada notifikasi sekarang ini...',
//               style: TextStyle(fontSize: 16),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
