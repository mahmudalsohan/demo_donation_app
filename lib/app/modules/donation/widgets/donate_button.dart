import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonateButton extends StatelessWidget {
  const DonateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        width: Get.width * 0.7,
        decoration: const BoxDecoration(
            color: Color(0xff1A5186),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/donate-icon.png',
                height: 40,
              ),
              const SizedBox(width: 10),
              const Text(
                'Donate',
                style: TextStyle(
                  fontSize: 30,
                  color: CupertinoColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
