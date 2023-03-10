import 'package:flutter/material.dart';
import 'package:shopp_cart/Constants/global_variables.dart';
import 'package:shopp_cart/features/auth/screens/auth_screen.dart';
//import 'Constants/global_variables.dart';
import 'package:flutter/services.dart';
import 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop Cart',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          colorScheme: ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          )),
      initialRoute: '/',
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: GlobalVariables.secondaryColor,
          ),
          title: Text("Hi"),
        ),
        body: Column(
          children: [
            Center(
              child: Text("hi"),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreen.routname);
                  },
                  child: Text("click"));
            })
          ],
        ),
      ),
    );
  }
}
