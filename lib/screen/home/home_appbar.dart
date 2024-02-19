import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';

AppBar buildHomeAppBar(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  var themeProvider = context.read<ThemeProvider>();
  return AppBar(
    backgroundColor:
        themeProvider.isLightTheme ? Light.background : Dark.background,
    elevation: 0.0,
    titleSpacing: 10,
    toolbarHeight: screenSize.height * .08,
    leading: Center(
      child: Text(
        "QuizCraft",
        style: TextStyle(
          color: themeProvider.isLightTheme ? Light.text : Dark.text,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          fontSize: 30,
        ),
      ),
    ),
    leadingWidth: 170,
    actions: [
      IconButton(
        onPressed: () {
          themeProvider.changeTheme();
        },
        icon: Icon(themeProvider.isLightTheme
            ? Icons.sunny
            : Icons.mode_night_outlined),
      ),
    ],
  );
}
