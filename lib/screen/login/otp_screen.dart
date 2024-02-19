import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/colours/colors.dart';
import '../../utils/providers/theme/themeprovider.dart';
import '../../utils/strings/strings.dart';
import '../signup/signup_appbar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodePassword = FocusNode();
  final FocusNode rememberMe = FocusNode();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  // final TextEditingController controllerConFirmPassword = TextEditingController();
  bool obscurePassword = true;
  bool rememeberMe = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: context.read<ThemeProvider>().isLightTheme
          ? Light.background
          : Dark.background,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * .02,
                ),
                // Text In First Page
                Text(
                  Otp.h1,
                  style: TextStyle(
                      fontFamily: "Lato",
                      color: context.read<ThemeProvider>().isLightTheme
                          ? Light.text
                          : Dark.text,
                      // color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 37),
                ),
                Text(
                  Otp.h2,
                  style: TextStyle(
                      fontFamily: "Lato",
                      color: context.read<ThemeProvider>().isLightTheme
                          ? Light.text
                          : Dark.text,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                SizedBox(
                  height: screenSize.height * .03,
                ),
                //*  Otp Code Input Fields
                Row(children: []),
                // Container(
                //   alignment: Alignment.centerRight,
                //   child: Obx(() => Visibility(
                //     visible: !controller.isLoading.value,
                //     child: CustomTextFieldWidget(
                //         hintText: "Enter the code sent to your email.",
                //         obscureText: false,
                //         textInputType: TextInputType.number,
                //         inputAction: TextInputAction.done,
                //         onChanged: (String value) {
                //           controller.code = value;
                //         },
                //         maxLength: 6,
                //         validator: (value) {
                //           if (value!.isEmpty || value.length != 6) {
                //             return "Please enter a 6 digit code.";
                //           } else {
                //             return null;
                //           }
                //         })),
                // ),
                // ),

                SizedBox(
                  height: screenSize.height * .015,
                ),

                Row(
                  children: [
                    Checkbox(
                      value: rememeberMe,
                      focusNode: rememberMe,
                      activeColor: context.read<ThemeProvider>().isLightTheme
                          ? Dark.background
                          : Light.background,
                      hoverColor: context.read<ThemeProvider>().isLightTheme
                          ? Dark.background
                          : Light.background,
                      focusColor: context.read<ThemeProvider>().isLightTheme
                          ? Dark.background
                          : Light.background,
                      checkColor: context.read<ThemeProvider>().isLightTheme
                          ? Dark.text
                          : Light.text,
                      onChanged: (v) {
                        setState(() {
                          rememeberMe = v!;
                        });
                      },
                    ),
                    GestureDetector(
                      child: Text(Login.rememberMe,
                          style: TextStyle(
                              fontSize: 18,
                              color: context.read<ThemeProvider>().isLightTheme
                                  ? Light.text
                                  : Dark.text)),
                      onTap: () {
                        setState(() {
                          rememeberMe = !rememeberMe;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .015,
                ),

                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      Login.forgotPass,
                      style: TextStyle(
                          fontSize: 16,
                          color: Light.urlBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // SizedBox(
                //   height: screenSize.height * .025,
                // ),
                //             IconButton(
                // onPressed: () {
                //   setState(() {
                //   context.read<ThemeProvider>().changeTheme();

                //   });
                // },
                // icon: Icon(context.read<ThemeProvider>().isLightTheme
                //     ? Icons.sunny
                //     : Icons.mode_night_outlined),
                //     ),
                const Spacer(),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.5, left: 4.5),
                      child: SizedBox(
                        // margin: EdgeInsets.only(top: screenSize.height * .04),
                        height: screenSize.height * .075,
                        width: screenSize.width * .95,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                context.read<ThemeProvider>().isLightTheme
                                    ? Light.buttonLowerLayer
                                    : Dark.buttonLowerLayer),
                          ),
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                    ),
                    SizedBox(
                      // margin: EdgeInsets.only(top: screenSize.height * .04),
                      height: screenSize.height * .075,
                      width: screenSize.width * .95,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              context.read<ThemeProvider>().isLightTheme
                                  ? Dark.buttonUpperLayer
                                  : Light.buttonUpperLayer),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // _boxAccounts.put(
                            //   _controllerUsername.text,
                            //   _controllerConFirmPassword.text,
                            // );
                            // context.read<LoginEXProvider>().createAccWithEmailPass(
                            //       _controllerUsername.text,
                            //       _controllerPassword.text,
                            //     );
                            // .then((_) => Navigator.pushReplacementNamed(context, "/login"))

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                width: 200,
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                behavior: SnackBarBehavior.floating,
                                content: const Text("SignIn Successfully"),
                              ),
                            );

                            _formKey.currentState?.reset();

                            // Navigator.pop(context);
                          }
                        },
                        child: Text(
                          Login.createAccount,
                          style: TextStyle(
                              color: context.read<ThemeProvider>().isLightTheme
                                  ? Dark.text
                                  : Light.text),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .015,
                ),
                SizedBox(
                  height: screenSize.height * .1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }
}
