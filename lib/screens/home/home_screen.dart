import 'package:e_vignette/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/vignette_container.dart';

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


