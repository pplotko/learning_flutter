import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2_appbar/model.dart';
import 'package:task_2_appbar/my_custom_app_bar.dart';
// import 'package:task_1_container/circular_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider(
        create: (context) => Model(),
        child: MaterialApp(
          title: 'task_2_appbar',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const TaskPage(),
        ),
      );
}
