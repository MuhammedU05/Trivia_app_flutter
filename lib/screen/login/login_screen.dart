import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/screen/home/home_page.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';
import '../../utils/colours/colors.dart';
import '../../utils/strings/strings.dart';
import '../signup/signup_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    return Consumer<ThemeProvider>(
      builder: (context,themeProvider,child) {
        return Scaffold(
          appBar: buildAppBar(context),
          backgroundColor: themeProvider.isLightTheme
              ? Light.background
              : Dark.background,
          // resizeToAvoidBottomInset: false,
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
                      Login.h1,
                      style: TextStyle(
                          fontFamily: "Lato",
                          color: themeProvider.isLightTheme
                              ? Light.text
                              : Dark.text,
                          // color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 37),
                    ),
                    SizedBox(
                      height: screenSize.height * .05,
                    ),
                    // SizedBox(
                    //   height: screenSize.height * .01,
                    // ),
                    // SizedBox(
                    //   height: screenSize.height * .01,
                    // ),
                    TextFormField(
                      controller: controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: themeProvider.isLightTheme
                            ? Light.text
                            : Dark.text,
                      ),
                      onChanged: (value) {
                        setState(() {
                          // password = value;
                          _formKey.currentState?.validate();
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: themeProvider.isLightTheme
                              ? Light.text
                              : Dark.text,
                        ),
                        prefixIcon: Icon(Icons.email_outlined,
                            color: themeProvider.isLightTheme
                                ? Light.icons
                                : Dark.icons),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: themeProvider.isLightTheme
                                ? Light.text
                                : Dark.text,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: themeProvider.isLightTheme
                                ? Light.text
                                : Dark.text,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter email.";
                        } else if (!(value.contains('@') && value.contains('.'))) {
                          return "Invalid email";
                        }
                        return null;
                      },
                      onEditingComplete: () => focusNodeEmail.requestFocus(),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    TextFormField(
                      controller: controllerPassword,
                      obscureText: obscurePassword,
                      focusNode: focusNodePassword,
                      onChanged: (value) {
                        setState(() {
                          // password = value;
                          _formKey.currentState?.validate();
                        });
                      },
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: themeProvider.isLightTheme
                            ? Light.text
                            : Dark.text,
                      ),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: themeProvider.isLightTheme
                              ? Light.text
                              : Dark.text,
                        ),
                        prefixIcon: Icon(Icons.password_outlined,
                            color: themeProvider.isLightTheme
                                ? Light.icons
                                : Dark.icons),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscurePassword = !obscurePassword;
                              });
                            },
                            icon: obscurePassword
                                ? Icon(Icons.visibility_outlined,
                                    color:
                                        themeProvider.isLightTheme
                                            ? Light.icons
                                            : Dark.icons)
                                : Icon(Icons.visibility_off_outlined,
                                    color:
                                        themeProvider.isLightTheme
                                            ? Light.icons
                                            : Dark.icons)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: themeProvider.isLightTheme
                                ? Light.text
                                : Dark.text,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: themeProvider.isLightTheme
                                ? Light.text
                                : Dark.text,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password.";
                        } else if (value.length < 8) {
                          return "Password must be at least 8 character.";
                        }
                        return null;
                      },
                      // onEditingComplete: () =>
                      //     focusNodePassword.requestFocus(),
                    ),
                    // SizedBox(
                    //   height: screenSize.height * .025,
                    // ),
                    // // const Spacer(),
                    // Divider(
                    //   color: themeProvider.isLightTheme  ? Light.text : Dark.text,
                    //   indent: 10,
                    //   endIndent: 10,
                    // ),
                    SizedBox(
                      height: screenSize.height * .015,
                    ),
                    // Text(
                    //   Login.anotherOption,
                    //   style: TextStyle(
                    //       fontSize: 20,
                    //       color: themeProvider.isLightTheme  ? Light.text : Dark.text),
                    // ),
                    Row(
                      children: [
                        Checkbox(
                          value: rememeberMe,
                          focusNode: rememberMe,
                          onChanged: (v) {
                            setState(() {
                              rememeberMe = v!;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Text(
                            Login.rememberMe,
                            style: TextStyle(
                                fontSize: 18,
                                color: themeProvider.isLightTheme
                                    ? Light.text
                                    : Dark.text),
                          ),
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
                        onTap: () {
                          //! Temp Navigation to next page
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Text(Login.forgotPass,
                            style: TextStyle(fontSize: 16, color: Light.urlBlue)),
                      ),
                    ),
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
                                    themeProvider.isLightTheme
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
                                  themeProvider.isLightTheme
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
                                  color: themeProvider.isLightTheme
                                      ? Dark.text
                                      : Light.text),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: screenSize.height * .015,
                    // ),
                    // SizedBox(
                    //   height: screenSize.height * .1,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
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
