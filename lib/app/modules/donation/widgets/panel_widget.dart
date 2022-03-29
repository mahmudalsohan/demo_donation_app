import 'package:demo_donation_app/app/modules/donation/widgets/custom_list_tile.dart';
import 'package:demo_donation_app/app/modules/donation/widgets/donate_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController scrollController;
  const PanelWidget({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        controller: scrollController,
        children: [
          const SizedBox(height: 4),
          Center(
            child: Container(
              width: 40,
              height: 5,
              decoration: const BoxDecoration(
                  color: CupertinoColors.systemGrey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          const SizedBox(height: 16),
          const CustomListTile(),
          const SizedBox(height: 30),
          const Text(
            'Mission Statement',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff1A5186),
            ),
          ),
          const SizedBox(
            height: 20,
            child: Divider(),
          ),
          Wrap(
            children: const [
              Text(
                  'My job starts in 6 weeks. I need to raise \$300 for grocery shopping only untill that time. Thank you for all you can spare.'),
            ],
          ),
          const SizedBox(height: 60),
          //const DonateButton(),
        ],
      ),
    );
  }
}
