import 'package:demo_donation_app/app/modules/donation/views/donation_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetCupertinoApp(
      title: 'Donation Demo App',
      home: DonationView(),
    );
  }
}
