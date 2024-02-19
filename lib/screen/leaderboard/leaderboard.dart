import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/utils/colours/colors.dart';

import '../../utils/providers/theme/themeprovider.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = context.watch<ThemeProvider>();
    Size screenSize = MediaQuery.of(context).size;
    TextStyle titleStyle = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: themeProvider.isLightTheme ? Light.text : Dark.text,
    );
    return Scaffold(
      body: Container(
          height: screenSize.height * 2,
          color:
              themeProvider.isLightTheme ? Light.background : Dark.background,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    // width: screenSize.width / 1.5,
                    height: screenSize.height / 3.8,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: themeProvider.isLightTheme
                            ? Colors.white
                            : Colors.grey.shade800),
                    child:
                        // Center(
                        //   child: Text(
                        //     "LeaderBoard",
                        //     style: titleStyle,
                        //   ),
                        // ),
                        topPlayers(screenSize),
                  ),
                ),
                Expanded(child: _buildTable(screenSize)),
              ])),
    );
  }
}

// buildTable
Widget _buildTable(Size screenSize) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: DataTable(
        showCheckboxColumn: false,
        columnSpacing: screenSize.width * .3,
        columns: [
          DataColumn(
            label: Text(
              "Rank",
              style: TextStyle(fontSize: 18),
            ),
          ),
          DataColumn(
            label: Text("Name"),
          ),
          DataColumn(
            label: Text("Score"),
          )
        ],
        rows:
            // List.generate(
            //   _leaderboardDataList.length,
            //   (index) => _getRow(
            //     _leaderboardDataList[index],
            //   ),
            // ),
            []),
  );
}

Widget topPlayers(Size screenSize) {
  return Container();
}
