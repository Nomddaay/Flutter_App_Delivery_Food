import 'package:flutter/material.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/view/login/login_view.dart';
import 'package:food_delivery/view/login/sign_up_view.dart';
import '../../common/color_extension.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
                // width: media.width * 0.55,
                // height: media.width * 0.55,
                fit: BoxFit.contain,
              ),
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.55,
                height: media.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          // SizedBox(
          //   height: media.width * 0.1,
          // ),
          Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
          ),

          SizedBox(
            height: media.width * 0.1,
          ),

          Padding(
            // padding: const EdgeInsets.all(25),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: BorderRadius.circular(28),
              ),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                }
              )
            ),
          ),

          const SizedBox(
            // height: media.width * 0.05,
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Create an account",
              type: RoundButtonType.textPrimary,
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const SignUpView(),
                  ),
                );
              }
            ),
          ),

          SizedBox(
            height: media.width * 0.1,
          ),
        ]
      ),
    );
  }
}