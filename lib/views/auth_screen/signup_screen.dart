import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ease/consts/lists.dart';
import 'package:shop_ease/widgets_common/applogo_widget.dart';
import 'package:shop_ease/widgets_common/bg_widget.dart';
import 'package:shop_ease/widgets_common/custom_textfield.dart';
import 'package:shop_ease/widgets_common/our_button.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:shop_ease/consts/consts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck=false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child:Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight*0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Join the $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: nameHint,title: name),
                    customTextField(hint: emailHint,title: email),
                    customTextField(hint: passwordHint,title: password),
                    customTextField(hint: passwordHint,title: retypePassword),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: forgetpass.text.make())),


                    Row(
                      children: [
                        Checkbox(
                            checkColor:redColor,
                            value: isCheck, onChanged: (newValue) {
                             setState(() {
                               isCheck=newValue;
                             });
                        }),
                        10.widthBox,
                        Expanded(child:
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree to the",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )
                            ),
                            TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                )
                            ),
                            TextSpan(
                                text: "&",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )
                            ),
                            TextSpan(
                                text: "privacyPolicy",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                )
                            )
                          ]
                        )),
                        ),

                      ],
                    ),
                    5.heightBox,
                    // ourButton().box.width(context.screenWidth-50).make(),
                    ourButton((){},isCheck==true? redColor :lightGrey, whiteColor, signup).box.width(context.screenWidth-50).make(),
                    10.heightBox,
                    //wrapping into gesture detector of velocity X
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        alreadyHaveAccount.text.color(fontGrey).make(),
                        login.text.color(redColor).make().onTap(() {
                        Get.back();
                        }),
                      ],
                    )
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
              ],
            ),
          ),
        )
    );
  }
}