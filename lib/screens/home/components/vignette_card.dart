import 'package:e_vignette/constants.dart';
import 'package:e_vignette/screens/custom_dotted_border/test_border.dart';
import 'package:e_vignette/screens/vignette_details/vignette_details.dart';
import 'package:flutter/material.dart';

class VignetteCard extends StatelessWidget {
  const VignetteCard({
    Key? key,
    required this.index,
    required this.count,
  }) : super(key: key);

  final int index;
  final int count;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VignetteDetails(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: defaultPadding,
                right: index == (count - 1) ? defaultPadding : 0),
            width: 250,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.background.withOpacity(.4),
                  Theme.of(context).colorScheme.background.withOpacity(.1)
                ],
              ),
            ),
            child: DottedBorder(
              borderType: BorderType.RRect,
              color: Colors.red,
              strokeWidth: 2,
              dashPattern: [1, 0],
              radius: Radius.circular(22),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.background.withOpacity(.4),
                  Theme.of(context).primaryColor.withOpacity(.6),
                ],
              ),
              strokeCap: StrokeCap.round,
              child: ClipRRect(
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/noise.png"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(.3), BlendMode.dstATop)),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "AAA-000",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lejárat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "2022. június 10.",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
