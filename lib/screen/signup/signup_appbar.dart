import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
<<<<<<< HEAD
// ignore: unused_import
import 'package:trivia_with_flutter/main.dart';
=======
>>>>>>> b62d1e575b89108fef04b5d77a5ed9073c977e8a
import 'package:trivia_with_flutter/utils/colours/colors.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';

AppBar buildAppBar(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  var themeProvider =context.read<ThemeProvider>();
  return AppBar(
    backgroundColor:themeProvider.isLightTheme
        ? Light.background
        : Dark.background,
    elevation: 0.0,
    titleSpacing: 12.0,
    toolbarHeight: screenSize.height * .08,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color:themeProvider.isLightTheme
            ? Light.icons
            : Dark.icons,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    actions: [
      IconButton(
          onPressed: () {
           themeProvider.changeTheme();
          },
          icon: Icon(themeProvider.isLightTheme
              ? Icons.sunny
              : Icons.mode_night_outlined)),
    ],
  );
}
