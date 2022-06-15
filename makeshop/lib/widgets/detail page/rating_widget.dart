import 'package:flutter/material.dart';

import '../utils/dimesnsion.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        5,
        (index) => Icon(
          Icons.star_border,
          size: getHeight(28),
          color: Colors.amber,
        ),
      ),
    );
  }
}
