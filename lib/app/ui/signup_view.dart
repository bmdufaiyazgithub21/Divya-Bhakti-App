import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signup_view extends StatelessWidget {
  signup_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background 2.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        // backgroundColor:
        backgroundColor: Colors.transparent,
        // body: Container(
        //   width: Get.width,
        //   height: Get.height,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(
        //       20,
        //     ),
        //     gradient: LinearGradient(
        //       colors: [Colors.red],
        //     ),
        //   ),
        //   child: Column(

        //   ),
        // ),
        body: SafeArea(
          child: Opacity(
            opacity: 0.8,
            child: Container(
              height: Get.height,
              width: Get.width,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                // color: Colors.red,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(251, 14, 2, 1),
                    Color(0xffC7451B),
                  ],
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                    Container(
                      // width: Get.width * 0.4,
                      height: Get.height * 0.13,
                      child: Image(
                        image: AssetImage(
                          'assets/images/mata.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    textfield(hintText: 'Name'),
                    textfield(
                      hintText: 'Mobile Number',
                      keyboardType: TextInputType.number,
                      keyLength: 10,
                    ),
                    textfield(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    textfield(
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    textfield(
                      hintText: 'Confirm Password',
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffD91309,
                                  ),
                                  border: Border.all(
                                    color: Colors.yellow,
                                  ),
                                  // boxShadow: <BoxShadow>[
                                  //   BoxShadow(
                                  //       color: Colors.black54,
                                  //       blurRadius: 15.0,
                                  //       offset: Offset(0.0, 0.75))
                                  // ],
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                ),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(left: 15, right: 15),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                      'By signing up, you agree to Divya Bhakti’s\n '),
                              TextSpan(
                                text: 'Terms of Service',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.yellow,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                              TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.yellow,
                                  fontFamily: 'Imprica'
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                      'Have a Divya Bhakti account? '),
                              
                              TextSpan(
                                text: 'Log In',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.yellow,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.offAllNamed(Routes.LOGIN_VIEW);
                                  },
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ).paddingSymmetric(
                  horizontal: 5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget textfield(
    {String? hintText,
    TextEditingController? controller,
    TextInputType? keyboardType,
    int? keyLength}) {
  return Container(
    width: Get.width * 0.75,
    child: TextFormField(
      keyboardType: keyboardType,
      style: TextStyle(
        color: Colors.white,
      ),
      maxLength: keyLength,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        // counterStyle: TextStyle(color: Colors.white),
        counter: Offstage(),
        hintText: '${hintText}',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 0,
        ),
      ),
    ),
  );
}
