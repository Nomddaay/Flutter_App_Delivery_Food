import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_button.dart';
// import 'package:food_delivery/common_widget/round_icon_button.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';
import 'package:food_delivery/view/login/new_password_view.dart';
// import 'package:food_delivery/view/login/sign_up_view.dart';

class ResetPasswordView extends StatefulWidget  {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewPage();
}

class _ResetPasswordViewPage extends State<ResetPasswordView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              const SizedBox(
                height: 64,
              ),
              
              Text(
                "Reset Password",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(
                height: 15,
              ),
          
              Text(
                "Please enter your email to receive a\n reset code to create a new password via email",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
          
              const SizedBox(
                height: 50,
              ),
              
              RoundTextfield(
                hintText: "Your email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 30,
              ),

              RoundButton(
                title: "Send",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  NewPasswordView()
                    )
                  );
                },
              )
                
            ],
          ),
        ),
      ),
    );
  }
}

