import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/view/widgets/CustomButton.dart';

class HomePage extends StatelessWidget {
  final String message;

  const HomePage({this.message});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(message)),
          Center(
            child: CustomElevatedButton(
              'signOut',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
