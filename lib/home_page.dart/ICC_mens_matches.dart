import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ICCMens extends StatefulWidget {
  const ICCMens({super.key});

  @override
  State<ICCMens> createState() => _ICCMensState();
}

class _ICCMensState extends State<ICCMens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "ICC Mens tournment page",
        ),
      ),
    );
  }
}
