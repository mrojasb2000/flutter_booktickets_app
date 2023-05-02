import 'package:flutter/material.dart';
import 'package:flutter_booktickets_app/utils/app_layout.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are\nyou looking for?",
                style: Styles.headLineStyle1.copyWith(fontSize: 35))
          ],
        ));
  }
}
