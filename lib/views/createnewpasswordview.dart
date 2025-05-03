import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           SizedBox(
            height: 78,
            width: 331,
            child: Text('Hello! regester to get started'),
          ),
          Customtextfield(),
          Customtextfield(),
          Customelevatedbutton(),
        ],
      ),
    );
  }
}