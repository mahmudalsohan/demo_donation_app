import 'package:demo_donation_app/app/modules/donation/widgets/donate_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widgets/panel_widget.dart';
import '../widgets/top_container.dart';

class DonationView extends StatelessWidget {
  const DonationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      ///backgroundColor: const Color(0xff1A5186),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xff1A5186),
        automaticallyImplyLeading: false,
        automaticallyImplyMiddle: false,
        border: null,
        leading: Icon(
          CupertinoIcons.back,
          color: CupertinoColors.white,
        ),
      ),
      child: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SlidingUpPanel(
              minHeight: Get.height * 0.4,
              maxHeight: Get.height * 0.9,
              body: const TopContainer(),
              parallaxEnabled: true,
              parallaxOffset: .5,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              panelBuilder: (ctrl) => PanelWidget(
                scrollController: ctrl,
              ),
            ),
            const Positioned(
              bottom: 10,
              child: DonateButton(),
            )
          ],
        ),
      ),
    );
  }
}
