import 'package:flutter/material.dart';

import 'dimesnsion.dart';

class PageViewContainer extends StatefulWidget {
  final double containerHeight;
  final double containerWidth;
  final double viewPortSize;
  PageViewContainer({
    required this.containerHeight,
    required this.containerWidth,
    this.viewPortSize = 0.55,
  });
  @override
  State<PageViewContainer> createState() => _PageViewContainerState();
}

class _PageViewContainerState extends State<PageViewContainer> {
  final PageController _pageViewController = PageController(
    viewportFraction: 0.7,
  );
  var _currPagevalue = 0.0;
  double _scaleFactor = 0.7;
  var _height = getHeight(198);
  @override
  void initState() {
    // TODO: implement ianitState
    super.initState();
    // add listenser
    _pageViewController.addListener(() {
      setState(() {
        _currPagevalue = _pageViewController.page!;
        // print(_currPagevalue);
      });
    });
    @override
    void dispose() {
      super.dispose();
      _pageViewController.dispose();
    }
  }

  Widget _buildPageContainer(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPagevalue.floor()) {
      var curScale = 1 - (_currPagevalue - index) * (1 - _scaleFactor);
      var curTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else if (index == _currPagevalue.floor() + 1) {
      var curScale =
          _scaleFactor + (_currPagevalue - index + 1) * (1 - _scaleFactor);
      var curTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else if (index == _currPagevalue.floor() - 1) {
      var curScale = 1 - (_currPagevalue - index) * (1 - _scaleFactor);
      var curTrans = _height * (1 - curScale) / 2;

      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curTrans, 0);
    } else {
      var curScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, _height * (1 - curScale) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Container(
        margin: EdgeInsets.only(
          left: getWidth(20),
          right: getWidth(20),
        ),
        height: getHeight(widget.containerHeight),
        width: getHeight(widget.containerHeight),
        color: Color(0xffC9B7B9),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(widget.containerHeight),
      child: PageView.builder(
        controller: _pageViewController,
        itemCount: 10,
        itemBuilder: (context, index) => _buildPageContainer(index),
      ),
    );
  }
}
