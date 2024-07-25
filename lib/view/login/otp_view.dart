import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_button.dart';
// import 'package:food_delivery/common_widget/round_icon_button.dart';
// import 'package:food_delivery/common_widget/round_textfield.dart';
// import 'package:food_delivery/view/login/new_password_view.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
// import 'package:food_delivery/view/login/sign_up_view.dart';

class OTPView extends StatefulWidget  {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                "We have sent an OTP to your email ",
                textAlign: TextAlign.center,
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
                "Please check your mobile number",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
          
              const SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 60, 
                child: OtpPinField(
                  key: _otpPinFieldController,
                  autoFillEnable: true,
                  textInputAction: TextInputAction.done,

                  onSubmit: (newCode) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },

                  onChange: (newCode) {
                   
                  },

                  onCodeChanged: (newCode) {
                   
                  },

                  otpPinFieldStyle: OtpPinFieldStyle(
                    defaultFieldBorderColor: Colors.transparent,
                    activeFieldBorderColor: Colors.transparent,
                    defaultFieldBackgroundColor: TColor.textfield,
                    activeFieldBackgroundColor: TColor.textfield,
                  ),
                  maxLength: 4,

                  /// no of pin field
                  showCursor: true,

                  /// bool to show cursor in pin field or not
                  cursorColor: TColor.placeholder,

                  /// to choose cursor color
                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),
                  otpPinFieldDecoration: 
                    OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              RoundButton(
                title: "Next",
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Didn't Receive?",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Click Here",
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

