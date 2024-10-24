import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uzaar_market/Screens/home.dart';
import 'package:uzaar_market/api_models/login_model.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/helper/custom_toast.dart';
import 'package:uzaar_market/main.dart';
import 'package:uzaar_market/navBar.dart';
import 'package:uzaar_market/resetpassword.dart';
import 'package:uzaar_market/signup.dart';
import 'package:uzaar_market/verifyemail.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginModel loginModel = LoginModel();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() async {
    var headersList = {'Accept': '*/*', 'Content-Type': 'application/json'};
    var url = Uri.parse('https://b1gpraiseel.net/portal/api/login_with_app');

    var body = {
      "one_signal_id": "12345",
      "email": emailController.text,
      "password": passwordController.text
    };

    var req = http.Request('POST', url);
    req.headers.addAll(headersList);
    req.body = json.encode(body);

    var res = await req.send();
    final resBody = await res.stream.bytesToString();
    print(resBody);
    if (res.statusCode == 200) {
      loginModel = loginModelFromJson(resBody);
      setState(() {});
      print(resBody);
    } else {
      print(res.reasonPhrase);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 150,
                        height: 100,
                      ),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        label: const Text(
                          'username@gmail.com',
                          style: TextStyle(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: ConstantColor.lightgreyColor)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 21, 21, 22),
                            width: 1.0,
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            ConstantIconPath.emailSvgPath,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Password',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text(
                          '*******',
                          style: TextStyle(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: ConstantColor.lightgreyColor)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 21, 21, 22),
                            width: 1.0,
                          ),
                        ),
                        suffixIcon: const Icon(Icons.visibility_off,
                            color: Color(0xFF450e8b)),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            "assets/images/passwordicon.svg",
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Forget Password?',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResetPassword()));
                            },
                            child: const Text(
                              'Reset',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF450e8b)),
                            ))
                      ],
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await login();
                        if (loginModel.status == "success") {
                          CustomToast.showToast(message: 'Login Successfully');
                          prefs = await SharedPreferences.getInstance();
                          // await prefs?.setString('userID',
                          //     "${loginUserModels.data?.passportHolderId}");
                          userID =
                              loginModel.data?.usersCustomersId.toString() ??
                                  "";
                          await prefs?.setString('userID', userID!);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Navbar()));
                        } else {
                          CustomToast.showToast(message: 'Login Failed');
                        }
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
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: double.infinity,
                    // ),

                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const SignInDemo()),
                        // );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF450e8b), // Purple color
                            width: 1, // 2px border width
                          ),
                          borderRadius: BorderRadius.circular(
                              80), // Optional: rounded corners
                        ),
                        child: SizedBox(
                          height: 54,
                          width: 330,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Login with Google",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF450e8b),
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                SvgPicture.asset(
                                    "assets/images/icons_google.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF450e8b), // Purple color
                          width: 1, // 2px border width
                        ),
                        borderRadius: BorderRadius.circular(
                            80), // Optional: rounded corners
                      ),
                      child: SizedBox(
                        height: 54,
                        width: 330,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Login with Facebook",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF450e8b),
                                ),
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              SvgPicture.asset(
                                  "assets/images/logos_facebook.svg"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF450e8b), // Purple color
                          width: 1, // 2px border width
                        ),
                        borderRadius: BorderRadius.circular(
                            80), // Optional: rounded corners
                      ),
                      child: const SizedBox(
                        height: 54,
                        width: 330,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Continue as Guest",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF450e8b),
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signup()));
                            },
                            child: const Text(
                              'Signup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF450e8b)),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
