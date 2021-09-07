import 'package:flutter/material.dart';

class TopBarMenuItemWidget extends StatelessWidget {
  final String? text;

  const TopBarMenuItemWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
