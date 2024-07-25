import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_button.dart';
// import 'package:food_delivery/common_widget/round_icon_button.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';
import 'package:food_delivery/view/login/login_view.dart';
import 'package:food_delivery/view/login/otp_view.dart';

class SignUpView extends StatefulWidget  {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewPage();
}

class _SignUpViewPage extends State<SignUpView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "Sign Up",
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
                "Add your details to sign up",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              
              RoundTextfield(
                hintText: "Your Name",
                controller: txtName,
              ),

              const SizedBox(
                height: 25,
              ),
              
              RoundTextfield(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 25,
              ),
              
              RoundTextfield(
                hintText: "Your Address",
                controller: txtAddress,
              ),

              const SizedBox(
                height: 25,
              ),
              
              RoundTextfield(
                hintText: "Your Mobile",
                controller: txtMobile,
                keyboardType: TextInputType.phone,
              ),        

              const SizedBox(
                height: 25,
              ),

              RoundTextfield(
                hintText: "Your password",
                controller: txtPassword,
                obscureText: true,
              ),  

              const SizedBox(
                height: 25,
              ),

              RoundTextfield(
                hintText: "Confirm your password",
                controller: txtConfirmPassword,
                obscureText: true,
              ),

              const SizedBox(
                height: 25,
              ),

              RoundButton(
                title: "Sign Up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPView(),
                    ),
                  );
                },
              ), 

              const SizedBox(
                height: 4,
              ),

              Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

