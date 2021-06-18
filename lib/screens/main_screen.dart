import 'package:e_vignette/components/header.dart';
import 'package:flutter/material.dart';
import 'package:e_vignette/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:dotted_border/dotted_border.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var vignetteCount = 1 + 1;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(width: width),
            VignetteContainer(width: width, vignetteCount: vignetteCount),
          ],
        ),
      ),
    );
  }
}

class VignetteContainer extends StatelessWidget {
  const VignetteContainer({
    Key key,
    @required this.width,
    @required this.vignetteCount,
  }) : super(key: key);

  final double width;
  final int vignetteCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 450 + (2 * defaultPadding),
      /* child: new ListView(
        scrollDirection: Axis.horizontal,
        children: new List.generate(vignetteCount, (int index) {
          return VignetteCard(
            index: index,
            count: vignetteCount,
          );
        }),
      ), */
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

class EmptyVignetteCard extends StatelessWidget {
  const EmptyVignetteCard({
    Key key,
    @required this.index,
    @required this.count,
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
        color: Colors.black,
        strokeWidth: 2,
        dashPattern: [12, 12],
        radius: Radius.circular(20),
        strokeCap: StrokeCap.round,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            padding: EdgeInsets.all(defaultPadding),
            alignment: Alignment.topLeft,
            child: Text(
              "Új",
              style: TextStyle(
                  fontSize: 34,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class VignetteCard extends StatelessWidget {
  const VignetteCard({
    Key key,
    @required this.index,
    @required this.count,
  }) : super(key: key);

  final int index;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: defaultPadding,
              right: index == (count - 1) ? defaultPadding : 0),
          padding: EdgeInsets.all(defaultPadding),
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
                Color.fromRGBO(34, 34, 34, .4),
                Color.fromRGBO(34, 34, 34, .1)
              ],
            ),
          )
        ),
        Container(
          margin: EdgeInsets.only(
              left: defaultPadding,
              right: index == (count - 1) ? defaultPadding : 0),
          padding: EdgeInsets.all(defaultPadding),
          width: 250,
          height: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage("images/noise.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(.3), BlendMode.dstATop)
            ),
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
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
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
                              fontSize: 18, fontWeight: FontWeight.bold),
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
      ],
    );
  }
}
