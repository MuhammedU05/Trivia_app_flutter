import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/screen/collection/collection.dart';
import 'package:trivia_with_flutter/screen/home/bottom_nav_bar.dart';
import 'package:trivia_with_flutter/screen/leaderboard/leaderboard.dart';
import 'package:trivia_with_flutter/screen/nav_home/nav_home_page.dart';
import 'package:trivia_with_flutter/screen/profile/profile.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';
import 'package:trivia_with_flutter/utils/providers/navigation/navigatorprovider.dart';

import '../../utils/providers/theme/themeprovider.dart';
import 'home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var themeProvider =context.watch<ThemeProvider>();
    TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: themeProvider.isLightTheme ? Light.text : Dark.text,
  );

    List<Widget> widgetOptions = <Widget>[
    NavHomePage(themeProvider: themeProvider,),
    const CollectionPage(),
    Text(
      'Play',
      style: optionStyle,
    ),
    const LeaderboardPage(),
    const Profile()
  ];
    // final Color textColor =
    // context.read<ThemeProvider>().isLightTheme ? Light.text : Dark.text;
    // var screenSize = MediaQuery.of(context).size;
    return Consumer<NavigatorProvider>(
        builder: (context, navigatorProvider, child) {
      return Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return Scaffold(
              appBar: buildHomeAppBar(context),
              backgroundColor: themeProvider.isLightTheme
                  ? Light.background
                  : Dark.background,
              body: Builder(
                  builder: (context) =>
                      widgetOptions[navigatorProvider.currentIndex]),
              bottomNavigationBar: MainBottomNavBar(
                themeProvider: themeProvider,
                navigatorProvider: navigatorProvider,
              ));
        },
      );
    });
  }
}
// ListView(
//           children: [
//             Container(
//               height: screenSize.height * .35,
//               width: screenSize.width,
//               color: Colors.white10,
//               child: const Center(
//                 child: Text(
//                   "Welcome to Trivia!",
//                   style: TextStyle(
//                       fontFamily: "Rubik-Regular",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40),
//                 ),
//               ),
//             ),
//             Container(
//               height: screenSize.height * .35,
//               width: screenSize.width,
//               color: Colors.white38,
//               child: const Center(
//                 child: Text(
//                   "Welcome to Trivia!",
//                   style: TextStyle(
//                       fontFamily: "Rubik-Regular",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40),
//                 ),
//               ),
//             ),
//             Container(
//               height: screenSize.height * .35,
//               width: screenSize.width,
//               color: Colors.white10,
//               child: const Center(
//                 child: Text(
//                   "Welcome to Trivia!",
//                   style: TextStyle(
//                       fontFamily: "Rubik-Regular",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40),
//                 ),
//               ),
//             ),
//             Container(
//               height: screenSize.height * .35,
//               width: screenSize.width,
//               color: Colors.white38,
//               child: const Center(
//                 child: Text(
//                   "Welcome to Trivia!",
//                   style: TextStyle(
//                       fontFamily: "Rubik-Regular",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40),
//                 ),
//               ),
//             ),
//           ],
//         ),