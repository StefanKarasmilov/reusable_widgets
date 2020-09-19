import 'package:flutter/material.dart';
import 'package:reusable_widgets/widgets/custom_input.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: CustomInputField(
            height: 45,
            width: 350,
            controller: controller,
            icon: Icons.ac_unit,
            // iconColor: Colors.amber,
            // color: Colors.red,
            // shadowOn: false,
            hintText: 'Nuevo',
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      )
    );
  }
}