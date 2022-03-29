import 'package:demo_donation_app/app/modules/donation/widgets/pi-chart-widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: const Color(0xff1A5186),
      child: Column(
        children: const [
          PiChartWidget(),
          SizedBox(height: 20),
          Text(
            'Lifetime Expense Catagories',
            style: TextStyle(
              fontSize: 20,
              color: CupertinoColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
