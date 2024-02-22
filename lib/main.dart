import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:trivia_with_flutter/screen/profile/profile.dart';
// ignore: unused_import
import 'package:trivia_with_flutter/screen/entry/entry_screen.dart';
import 'package:trivia_with_flutter/utils/providers/navigation/navigatorprovider.dart';
import 'package:trivia_with_flutter/utils/providers/theme/themeprovider.dart';

// ignore: duplicate_import
import 'screen/profile/profile.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (value) => runApp(const MainApp()),
  );
  // TestWidgetsFlutterBinding.ensureInitialized();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => NavigatorProvider()),
        // ChangeNotifierProvider(create: (_) => ""()),
        // ChangeNotifierProvider(create: (_) => ""()),
        // ChangeNotifierProvider(create: (_) => ""()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        title: 'QuizCraft',
        debugShowCheckedModeBanner: false,
        home: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return const Profile();
          },
        ),
      ),
    );
  }
}
