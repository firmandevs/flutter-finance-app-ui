import 'package:avatar_glow/avatar_glow.dart';
import 'package:finance_ui/presentation/consts.dart';
import 'package:finance_ui/presentation/widgets/container/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/label.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(110.0),
          child: Center(
            child: AvatarGlow(
              glowColor: softPurple,
              endRadius: 90.0,
              duration: const Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: const Duration(milliseconds: 100),
              child: Material(
                // Replace this child with your own
                elevation: 0,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: softGreen,
                  radius: 30.0,
                  child: Text(
                    "fa",
                    style: montserrat(
                        textStyle: h5(context),
                        fontWeight: extraBold,
                        color: white.withOpacity(1)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
