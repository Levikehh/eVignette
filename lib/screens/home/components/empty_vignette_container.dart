import 'package:e_vignette/constants.dart';
import 'package:e_vignette/screens/custom_dotted_border/test_border.dart';
import 'package:flutter/material.dart';

class EmptyVignetteCard extends StatelessWidget {
  const EmptyVignetteCard({
    Key? key,
    required this.index,
    required this.count,
  }) : super(key: key);

  final int index;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: defaultPadding,
          right: index == (count - 1) ? defaultPadding : 0),
      width: 250,
      height: 450,
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: Theme.of(context).colorScheme.background,
        strokeWidth: 2,
        dashPattern: [12, 12],
        radius: Radius.circular(22),
        strokeCap: StrokeCap.round,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            padding: EdgeInsets.all(defaultPadding),
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Text(
                  "Új",
                  style: TextStyle(
                      fontSize: 34,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.add,
                    size: 48,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
