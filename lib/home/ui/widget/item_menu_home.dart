import 'package:flutter/cupertino.dart';

class ItemMenuHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/image/icon_demo.png"),
        const Text('Menu 1')
      ],
    );
  }
}
