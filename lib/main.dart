import 'package:get/get.dart';
import 'package:shop_ease/consts/consts.dart';
import 'package:shop_ease/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //we are using getX so we have to change this material app into getmaterial app
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHOPEASE',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        appBarTheme: const AppBarTheme(
          // to set app bar icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
            elevation: 0.0,
            backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}

