import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:uzaar_market/completeprofile.dart';

class Verifyemail extends StatefulWidget {
  const Verifyemail({super.key});

  @override
  State<Verifyemail> createState() => _VerifyemailState();
}

class _VerifyemailState extends State<Verifyemail> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Verify Email',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'We have send a verification code to your email',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF808080),
                ),
              ),
              const Text('"example@gmail.com"',
                  style: TextStyle(fontSize: 16, color: Color(0xFF450e8b))),
              const Text(
                'Enter code below to verify',
                style: TextStyle(fontSize: 16, color: Color(0XFF808080)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 45),
                  child: PinCodeTextField(
                    textStyle: const TextStyle(
                      color: Color(0xFFA7A9B7),
                      fontSize: 16,
                    ),
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',

                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 4) {
                        return "Invalid Code";
                      } else {
                        return null;
                      }
                    },

                    pinTheme: PinTheme(
                      disabledColor: Colors.white,
                      inactiveColor: const Color(0xFFF3F3F3),
                      selectedColor: const Color(0xFFF3F3F3),
                      // inactiveFillColor: Color(0xFFF3F3F3),
                      //inactiveFillColor: Colors.white,
                      activeColor: const Color(0xFFF3F3F3),
                      shape: PinCodeFieldShape.box,

                      borderWidth: 2,
                      // activeFillColor: Colors.green.shade600,

                      //activeColor: Colors.green.shade600,

                      borderRadius: BorderRadius.circular(15),
                      fieldHeight: 65,
                      fieldWidth: 55,
                    ),

                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),

                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,

                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");

                      return true;
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Recieve?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Signup()));
                      },
                      child: const Text(
                        'Resend',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF450e8b)),
                      )),
                ],
              ),
              const SizedBox(
                height: 130,
              ),
              TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Signup()));
                  },
                  child: const Text(
                    'Skip for now',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF450e8b)),
                  )),
              // const SizedBox(
              //   height: 90,
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF450e8b),
                    shadowColor: Colors.black,
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
