import 'package:architecture_demo/global/color.dart';
import 'package:architecture_demo/global/drawble.dart';
import 'package:architecture_demo/login/ui/widget/login_widget.dart';
import 'package:architecture_demo/movie/ui/popular_movies_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.colorWhite,
      appBar: AppBar(
        backgroundColor: CommonColor.colorWhite,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: const Text(
          "Đăng nhập",
          style: TextStyle(color:  Colors.red),
        ),
      ),
      body: const SafeArea(
        child: LoginWidget(),
      ),
    );
  }
}
