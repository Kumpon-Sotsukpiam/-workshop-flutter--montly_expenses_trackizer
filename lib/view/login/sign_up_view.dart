import 'package:flutter/material.dart';
import 'package:montly_expenses_trackizer/common_widget/secondary_button.dart';

import '../../common/color_extension.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SocialLoginViewState();
}

class _SocialLoginViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: TColor.gray80,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/app_logo.png",
                      width: media.width * 0.5,
                      fit: BoxFit.contain,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/img/apple_btn.png")),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4))
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/img/apple.png", width: 15, height: 15,color: TColor.white),
                              const SizedBox(width: 8,),
                              Text(
                                "Sign up with Apple",
                                style: TextStyle(
                                    color: TColor.white, fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                      ),
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/img/google_btn.png")),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4))
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/img/google.png", width: 15, height: 15,color: TColor.gray),
                              const SizedBox(width: 8,),
                              Text(
                                "Sign up with Google",
                                style: TextStyle(
                                    color: TColor.gray, fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                      ),
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/img/fb_btn.png")),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue.withOpacity(0.2),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4))
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/img/fb.png", width: 15, height: 15),
                              const SizedBox(width: 8,),
                              Text(
                                "Sign up with Facebook",
                                style: TextStyle(
                                    color: TColor.white, fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "or",
                      style: TextStyle(color: TColor.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),
                    SecondaryButton(title: "Sign up with E-mail", onPressed: () {}),
                    const SizedBox(height: 20),
                    Text(
                      "By registering, you agree to our Terms of User. Learn how we collect, use and share your data",
                      style: TextStyle(color: TColor.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ))
    );
  }
}