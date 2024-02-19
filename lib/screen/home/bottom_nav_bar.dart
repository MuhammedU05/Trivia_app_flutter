import 'package:flutter/material.dart';

import '../../utils/colours/colors.dart';
import '../../utils/providers/navigation/navigatorprovider.dart';
import '../../utils/providers/theme/themeprovider.dart';

// ignore: must_be_immutable
class MainBottomNavBar extends StatefulWidget {
  MainBottomNavBar(
      {super.key,
      required this.themeProvider,
      required this.navigatorProvider});
  ThemeProvider themeProvider;
  NavigatorProvider navigatorProvider;

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var backgroundColor =
        widget.themeProvider.isLightTheme ? Light.background : Dark.background;
    // bool lightTheme = widget.themeProvider.isLightTheme;
    return
    // SafeArea(
    //   child: Container(
    //     height: 80,
    //     padding: const EdgeInsets.all(12),
    //     width: MediaQuery.of(context).size.width - 10,
    //     // color: backgroundColor,
    //     decoration: BoxDecoration(color: lightTheme?Light.buttonLowerLayer:Dark.buttonUpperLayer.withOpacity(.95),
    //     borderRadius: const BorderRadius.all(Radius.circular(26))
    //     ,
    //     boxShadow: [BoxShadow(blurRadius: 20, offset: const Offset(0, 20), color: lightTheme?Light.background:Dark.background.withOpacity(.3))]
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       mainAxisSize:MainAxisSize.min,
    //       children: [
    //         IconButton(onPressed: (){
    //           widget.navigatorProvider.changeIndex(0);
    //         }, icon: Icon(Icons.home,color: lightTheme ? Light.icons : Dark.icons,)),
    //         IconButton(onPressed: (){
    //           widget.navigatorProvider.changeIndex(1);
    //         }, icon: Icon(Icons.collections,color: lightTheme ? Light.icons : Dark.icons,)),
    //         IconButton(onPressed: (){
    //           widget.navigatorProvider.changeIndex(2);
    //         }, icon: Icon(Icons.bolt,color: lightTheme ? Light.icons : Dark.icons,)),
    //         IconButton(onPressed: (){
    //           widget.navigatorProvider.changeIndex(3);
    //         }, icon: Icon(Icons.leaderboard,color: lightTheme ? Light.icons : Dark.icons,)),
    //         IconButton(onPressed: (){
    //           widget.navigatorProvider.changeIndex(4);
    //         }, icon: Icon(Icons.person,color: lightTheme ? Light.icons : Dark.icons,)),
    //         // ListView(
    //         //   scrollDirection: Axis.horizontal,
    //         //   shrinkWrap: true,
    //         //   children: [
    //         //               IconButton(onPressed: (){
    //         //   widget.navigatorProvider.changeIndex(0);
    //         // }, icon: Icon(Icons.home,color: lightTheme ? Light.icons : Dark.icons,)),
    //         // IconButton(onPressed: (){
    //         //   widget.navigatorProvider.changeIndex(1);
    //         // }, icon: Icon(Icons.collections,color: lightTheme ? Light.icons : Dark.icons,)),
    //         // IconButton(onPressed: (){
    //         //   widget.navigatorProvider.changeIndex(2);
    //         // }, icon: Icon(Icons.bolt,color: lightTheme ? Light.icons : Dark.icons,)),
    //         // IconButton(onPressed: (){
    //         //   widget.navigatorProvider.changeIndex(3);
    //         // }, icon: Icon(Icons.leaderboard,color: lightTheme ? Light.icons : Dark.icons,)),
    //         // IconButton(onPressed: (){
    //         //   widget.navigatorProvider.changeIndex(4);
    //         // }, icon: Icon(Icons.person,color: lightTheme ? Light.icons : Dark.icons,)),
    //         //   ],
    //         // )
    //       ],
    //     )
    //   ),
    // );
    BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      currentIndex: widget.navigatorProvider.currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections), label: 'Collection'),
        BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard), label: 'Leaderboard'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 40,
          color: widget.themeProvider.isLightTheme ? Light.selectedIcons : Dark.selectedIcons),
      unselectedItemColor: widget.themeProvider.isLightTheme ? Light.unselectedIcons : Dark.unselectedIcons,
      onTap: (value) {
        widget.navigatorProvider.changeIndex(value);
      },
    );
  }
}
