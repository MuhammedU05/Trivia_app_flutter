import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';
import 'package:trivia_with_flutter/utils/strings/strings.dart';

import '../../utils/colours/colors.dart';

// ignore: must_be_immutable
class NavHomePage extends StatefulWidget {
  NavHomePage({super.key, this.themeProvider});

  ThemeProvider? themeProvider;

  @override
  State<NavHomePage> createState() => _NavHomePageState();
}

class _NavHomePageState extends State<NavHomePage> {
  @override
  Widget build(BuildContext context) {
    // var themeProvider = context.watch<ThemeProvider>();
    TextStyle textStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: widget.themeProvider!.isLightTheme ? Light.text : Dark.text,
    );
    Color colorBG =
        widget.themeProvider!.isLightTheme ? Light.background : Dark.background;
    var screenSize = MediaQuery.of(context).size;
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return SingleChildScrollView(
        child: Container(
          // height: screenSize.height * 2,
          color: colorBG,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  width: screenSize.width,
                  color: Colors.purple.shade600,
                  // child: Text("data"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                child: Text(
                  Home.recentFollowers,
                  style: textStyle,
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      radius: 40,
                      backgroundImage: Image.asset("assets/IMG_0001.JPG").image,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  width: screenSize.width,
                  color: Colors.blueAccent,
                  // child: Text("data"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  width: screenSize.width,
                  color: Colors.yellowAccent,
                  // child: Text("data"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  width: screenSize.width,
                  color: Colors.grey,
                  // child: Text("data"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  width: screenSize.width,
                  color: Colors.green,
                  // child: Text("data"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      );
    });
  }
}
