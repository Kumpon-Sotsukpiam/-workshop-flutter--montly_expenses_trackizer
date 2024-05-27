import 'package:flutter/material.dart';
import 'package:montly_expenses_trackizer/common_widget/round_textfield.dart';
import 'package:montly_expenses_trackizer/common_widget/secondary_button.dart';
import 'package:montly_expenses_trackizer/view/login/sign_in_view.dart';
import 'package:montly_expenses_trackizer/view/login/social_login.dart';

import '../../common/color_extension.dart';
import '../../common_widget/primary_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SocialLoginViewState();
}

class _SocialLoginViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: TColor.gray80,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              "assets/img/app_logo.png",
              width: media.width * 0.5,
              fit: BoxFit.contain,
            ),
            const Spacer(),
            RoundTextField(
                title: "E-mail address",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 15),
            RoundTextField(
              title: "Password",
              controller: txtPassword,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: TColor.gray70,
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: TColor.gray70,
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: TColor.gray70,
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: TColor.gray70,
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    "Use 8 or more characters with a mix of letters,\n number & symbols.",
                    style: TextStyle(color: TColor.gray50, fontSize: 12)),
              ],
            ),
            const SizedBox(height: 20),
            PrimaryButton(
                title: "Get started, it's free!",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SocialLoginView()));
                }),
            const Spacer(),
            Text(
              "Do you have already an account?",
              style: TextStyle(color: TColor.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SecondaryButton(
                title: "Sign in",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInView()));
                })
          ]),
        )));
  }
}
