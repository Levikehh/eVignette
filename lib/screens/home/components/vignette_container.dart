import 'package:flutter/material.dart';
import 'package:e_vignette/constants.dart';
import 'empty_vignette_container.dart';
import 'vignette_card.dart';


class VignetteContainer extends StatelessWidget {
  const VignetteContainer({
    Key? key,
    required this.width,
    required this.vignetteCount,
  }) : super(key: key);

  final double width;
  final int vignetteCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 450 + (2 * defaultPadding),
      child: ListView.builder(
          padding: EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
          scrollDirection: Axis.horizontal,
          itemCount: vignetteCount,
          itemBuilder: (BuildContext context, int index) {
            if (index == vignetteCount - 1) {
              return EmptyVignetteCard(
                count: vignetteCount,
                index: index,
              );
            }
            return VignetteCard(
              count: vignetteCount,
              index: index,
            );
          }),
    );
  }
}