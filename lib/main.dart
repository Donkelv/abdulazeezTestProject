import 'package:abdulazeez/views/pages/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Abdulazeez',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: BottomBar(),
        );
      },
    );
  }
}
