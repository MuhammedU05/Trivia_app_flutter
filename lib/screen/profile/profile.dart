import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colours/colors.dart';
import '../../utils/providers/theme/themeprovider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeProvider = context.watch<ThemeProvider>();

    var screenSize = MediaQuery.of(context).size;
    TextStyle optionStyle = TextStyle(
      fontSize: 18,
      // fontWeight: FontWeight.bold,
      color: themeProvider.isLightTheme ? Light.text : Dark.text,
    );
    TextStyle optionStyleTitle = TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: themeProvider.isLightTheme ? Light.text : Dark.text,
    );
    String bg =
        'assets/blur-background-design-template-838ec9f1bfdb26eabf22a5b5fa510dad_screen.jpg';
    String img = 'assets/IMG_20230825_091659_864.jpg';
    return Scaffold(
      backgroundColor:
          themeProvider.isLightTheme ? Light.background : Dark.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * .3,
              child: Stack(
                // alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    height: screenSize.height * 0.251,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                      image: DecorationImage(
                        image: AssetImage(bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * .345,
                        top: screenSize.height * .162),
                    child: const CircleAvatar(
                      radius: 57,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * .35,
                        top: screenSize.height * .163),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(img),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            Center(
              child: Text("Sabith",
                  style: optionStyle.copyWith(fontWeight: FontWeight.w700)),
              //   child: Text(
              //     '@sabith',
              //     style: optionStyle,
              //   ),
              //       top: screenSize.height * 0.30, left: screenSize.width * 0.42),
            ),

            // Padding(
            //   padding: EdgeInsets.only(
            // ),
            // const Divider(),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: screenSize.height * 0.08,
              child: Row(
                // scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   width: 80,
                  //   height: 50,
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         "34",
                  //         style: optionStyle,
                  //       ),
                  //       const SizedBox(height: 5),
                  //       Text(
                  //         "Quizer",
                  //         style: optionStyleTitle,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 80,
                  //   height: 50,
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         "45M",
                  //         style: optionStyle,
                  //       ),
                  //       const SizedBox(height: 5),
                  //       Text(
                  //         "Plays",
                  //         style: optionStyleTitle,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    width: 100,
                    // height: 70,
                    child: Column(
                      children: [
                        Text(
                          "8B",
                          style: optionStyle,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Followers",
                          style: optionStyleTitle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    // height: 70,
                    child: Column(
                      children: [
                        Text(
                          "594",
                          style: optionStyle,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Rank",
                          style: optionStyleTitle,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 100,
                    // height: 50,
                    child: Column(
                      children: [
                        Text(
                          "6352",
                          style: optionStyle,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Following",
                          style: optionStyleTitle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Container(
                  // color: Colors.red,
                  height: 35,
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: optionStyleTitle,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 156, 156, 156),
                          borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
            ),
            // const Divider(),

            // Padding(
            //     padding: EdgeInsets.only(
            //         top: screenSize.height * 0.45,
            //         left: screenSize.width * 0.0),
            //     child: TextButton(
            //         onPressed: () {},
            //         child: Container(
            //           height: 60,
            //             child: Text(
            //               'Edit Profile',
            //               style: optionStyle,
            //             ),
            //           child: Center(
            //           width: 450,
            //           decoration: BoxDecoration(
            //               color: Color.fromARGB(255, 156, 156, 156),
            //               borderRadius: BorderRadius.circular(50)),
            //   child: Text(
            //     'Attempts\n34',
            //     style: optionStyle,
            //   ),
            //       top: screenSize.height * 0.55, left: screenSize.width * 0.05),
            //           ),
            //         ))),
            // Padding(
            //   padding: EdgeInsets.only(
            // )
          ],
        ),
      ),
      // body: Column(
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     SizedBox(
      //       width: double.maxFinite,
      //       height: screenSize.height * 0.25,
      //       // color: Colors.red,
      //       child: Stack(children: [
      //         Container(
      //           height: screenSize.height * 0.17,
      //           width: screenSize.width * 13,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage(
      //                     "assets/blur-background-design-template-838ec9f1bfdb26eabf22a5b5fa510dad_screen.jpg"),
      //                 fit: BoxFit.fitWidth),
      //             color: Colors.black,
      //             borderRadius: BorderRadius.only(
      //               bottomLeft: Radius.circular(30),
      //               bottomRight: Radius.circular(30),
      //             ),
      //           ),
      //         ),
      //         Padding(
      //           padding: EdgeInsets.only(
      //               top: screenSize.height * 0.1,
      //               left: screenSize.width * 0.35),
      //           child: Container(
      //             width: 120,
      //             height: 120,
      //             decoration: BoxDecoration(
      //                 image: const DecorationImage(
      //                     image:
      //                         AssetImage("assets/IMG_20230825_091659_864.jpg")),
      //                 color: Colors.blueGrey,
      //                 borderRadius: BorderRadius.circular(50)),
      //           ),
      //         ),
      //         // Padding(
      //         //   padding: EdgeInsets.only(
      //         //     top: 40,
      //         //     right: 350,
      //         //   ),
      //         //   child: IconButton(
      //         //       onPressed: () {},
      //         //       icon: Icon(Icons.arrow_back, color: Colors.white70)),
      //         // ),
      //         // Padding(
      //         //   padding: EdgeInsets.only(
      //         //     top: 40,
      //         //     left: 350,
      //         //   ),
      //         //   child: IconButton(
      //         //       onPressed: () {},
      //         //       icon: Icon(
      //         //         Icons.send_sharp,
      //         //         color: Colors.white70,
      //         //       )),
      //         // ),
      //       ]),),
      //           Text(
      //             'sabith',
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: themeProvider.isLightTheme ? Light.text : Dark.text,
      //             child: Text(
      //               '@sabith',
      //               style: optionStyle,
      //             ),
      //                 top: screenSize.height * 0.30, left: screenSize.width * 0.42),
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(
      //           ),
      //           Padding(
      //         padding: EdgeInsets.only(
      //                 top: screenSize.height * 0.36, left: screenSize.width * 0.05),
      //         child: ListView(
      //         height: 50,
      //         child: Text("Quizer\n34",
      //         style: optionStyle,
      //         ),
      //         child: Text("Plays\n45M",
      //           scrollDirection: Axis.horizontal,
      //           shrinkWrap: true,
      //           children: [
      //         height: 50,
      //         style: optionStyle,
      //         width: 80,
      //       SizedBox(
      //         width: 80,
      //       ),
      //       SizedBox(
      //         height: 50,
      //         child: Text("Rank\n544",
      //         style: optionStyle,
      //         child: Text("Followers\n4B",
      //         ),

      //         ),
      //       ),
      //         height: 50,
      //         style: optionStyle,
      //         ),
      //         child: Text("Following\n544",
      //       SizedBox(
      //         width: 80,
      //       ),
      //         height: 50,
      //         style: optionStyle,
      //         ),
      //         width: 80,
      //       SizedBox(
      //         width: 100,
      //       ),
      //       SizedBox(
      //       ),
      //           ],
      //         ),
      //       ),
      //           Padding(
      //               padding: EdgeInsets.only(
      //                 top: screenSize.height * 0.45, left: screenSize.width * 0.0),
      //               child: TextButton(
      //                   onPressed: () {},
      //                   child: Container(
      //                     height: 60,
      //                       child: Text(
      //                         'Edit Profile',
      //                         style: optionStyle,
      //                     child: Center(
      //                     width: 450,
      //                     decoration: BoxDecoration(
      //                         color: Color.fromARGB(255, 156, 156, 156),
      //                         borderRadius: BorderRadius.circular(50)),

      //                       ),
      //                     ),
      //                   ))),
      //                   Padding(padding: EdgeInsets.only(
      //                 top: screenSize.height * 0.55, left: screenSize.width * 0.05),
      //                 child: Text('Attempts\n34',
      //                 style:
      //                optionStyle,),)
      //       //   ],
      //       // ),
      //     // ),
      //   ],
      // ),
    );
  }
}
