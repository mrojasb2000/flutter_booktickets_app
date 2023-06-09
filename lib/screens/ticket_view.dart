import 'package:flutter/material.dart';
import 'package:flutter_booktickets_app/utils/app_layout.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(
            left: AppLayout.getHeight(16), right: AppLayout.getHeight(16)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          /* showing the blue part of the card/ticket */
          Container(
            decoration: BoxDecoration(
                color: Styles.blueGreyColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)))),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(children: [
              Row(
                children: [
                  Text("${ticket["from"]["code"]}",
                      style: Styles.headLineStyle3White),
                  Expanded(child: Container()),
                  const ThickContainer(),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  ),
                                ),
                              );
                            },
                          )),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: const Icon(Icons.local_airport_rounded,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )),
                  const ThickContainer(),
                  Expanded(child: Container()),
                  Text("${ticket["to"]["code"]}",
                      style: Styles.headLineStyle4White),
                ],
              ),
              const Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text("${ticket["from"]["name"]}",
                        style: Styles.headLineStyle3White),
                  ),
                  Text('${ticket["flying_time"]}',
                      style: Styles.headLineStyle3White),
                  Text("${ticket["to"]["name"]}",
                      style: Styles.headLineStyle3White),
                ],
              )
            ]),
          ),
          /* showing the orage part of the card/ticket */
          Container(
              color: Styles.orageColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getWidth(5),
                                height: 1,
                                child: const DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  )
                ],
              )),

          /* bottom part of the orage card/ticket */
          Container(
              decoration: BoxDecoration(
                  color: Styles.orageColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 19, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${ticket["date"]}",
                              style: Styles.headLineStyle3White),
                          const Gap(5),
                          Text("Date", style: Styles.headLineStyle4White)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${ticket["departure_time"]}",
                              style: Styles.headLineStyle3White),
                          const Gap(5),
                          Text("Departure time",
                              style: Styles.headLineStyle4White)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${ticket["number"]}",
                              style: Styles.headLineStyle3White),
                          const Gap(5),
                          Text("Number", style: Styles.headLineStyle4White)
                        ],
                      )
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
