import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  final List<String> firstGridItems = ['CODE', 'LINUX', 'DEVOPS', 'AUTHENTICATION', 'BASH', 'SQL'];
  final List<String> secondGridItems = ['EASY', 'MEDIUM', 'HARD'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 171, 13, 244),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 350,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      'CHOOSE CATEGORY',
                      style: TextStyle(
                        color: Color.fromARGB(255, 167, 158, 158),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: firstGridItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1,
                          mainAxisExtent: 75,
                          mainAxisSpacing: 1,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 197, 105, 240),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  firstGridItems[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      'CHOOSE DIFFICULTY',
                      style: TextStyle(
                        color: Color.fromARGB(255, 179, 172, 172),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: secondGridItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 3,
                          mainAxisExtent: 80,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 197, 105, 240),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  secondGridItems[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text('START QUIZ'),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 244, 243, 241))),)
          ],
        ),
      ),

    );
  }
}
