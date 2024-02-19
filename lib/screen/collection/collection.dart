import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colours/colors.dart';
import '../../utils/providers/theme/themeprovider.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = context.watch<ThemeProvider>();
    TextStyle titleStyle = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: themeProvider.isLightTheme ? Light.text : Dark.text,
    );
    TextStyle subTitleStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: themeProvider.isLightTheme ? Light.text : Dark.text,
    );
    return Scaffold(
      backgroundColor:
          themeProvider.isLightTheme ? Light.background : Dark.background,
      appBar: AppBar(
        backgroundColor:
            themeProvider.isLightTheme ? Light.background : Dark.background,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: themeProvider.isLightTheme ? Light.icons : Dark.icons,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: collections.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ),
              // );
            },
            child: Card(
              color: themeProvider.isLightTheme
                  ? Light.buttonUpperLayer
                  : Dark.buttonUpperLayer,
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                    //   child: Image.asset("assets/IMG_OOO1.JPG"),
                    // ),
                    const SizedBox(width: 10),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                index < collections.length
                                    ? collections[index]["name"]
                                    : "Coming soon",
                                style: titleStyle),
                            const SizedBox(height: 5),
                            Text(
                              index < collections.length
                                  ? collections[index]["name"]
                                  : "Coming soon",
                              style: subTitleStyle,
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          themeProvider.isLightTheme?Colors.black:Colors.white,
                        ),
                        value: index < collections.length
                            ? collections[index]["progress"]
                            : 0.1,
                        strokeWidth: 6,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List collections = [
  {"name": "Sports", "progress": 0.3},
  {"name": "English", "progress": 0.2},
  {"name": "Technology", "progress": 0.1},
  {"name": "Mathematics", "progress": 0.7},
  {"name": "General Knowledge", "progress": 0.5},
  // {"name" : "Sports",  "progress" : 0.3},
  // {"name" : "Sports",  "progress" : 0.3},
  // {"name" : "English",  "progress" : 0.2},
  // {"name" : "English",  "progress" : 0.2},
  // {"name" : "Technology",  "progress" : 0.1},
  // {"name" : "Technology",  "progress" : 0.1},
  // {"name" : "Mathematics",  "progress" : 0.7},
  // {"name" : "Mathematics",  "progress" : 0.7},
  // {"name": "General Knowledge", "progress": 0.5} ,
  // {"name": "General Knowledge", "progress": 0.5} ,
  // {"name" : "Sports",  "progress" : 0.3},
  // {"name" : "Sports",  "progress" : 0.3},
  // {"name" : "Sports",  "progress" : 0.3},
  // {"name" : "English",  "progress" : 0.2},
  // {"name" : "English",  "progress" : 0.2},
  // {"name" : "English",  "progress" : 0.2},
  // {"name" : "Technology",  "progress" : 0.1},
  // {"name" : "Technology",  "progress" : 0.1},
  // {"name" : "Technology",  "progress" : 0.1},
  // {"name" : "Mathematics",  "progress" : 0.7},
  // {"name" : "Mathematics",  "progress" : 0.7},
  // {"name" : "Mathematics",  "progress" : 0.7},
  // {"name": "General Knowledge", "progress": 0.5} ,
  // {"name": "General Knowledge", "progress": 0.5} ,
  // {"name": "General Knowledge", "progress": 0.5} ,
];
