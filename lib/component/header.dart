import 'package:flutter/material.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({Key? key}) : super(key: key);

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width - 304,
          color: Colors.red,
          child: Row(

          ),
        ),
      ],
    );
  }
}
