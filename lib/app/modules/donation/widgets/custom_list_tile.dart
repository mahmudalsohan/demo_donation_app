import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/dp.jpeg'),
            radius: 40,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Tem Tiagha',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1A5186),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.wifi,
                    color: CupertinoColors.activeGreen,
                  )
                ],
              ),
              const Text(
                'Verified Individual',
                style: TextStyle(
                  fontSize: 16,

                  //color: Color(0xff1A5186),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
