import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/router/app_router.dart';
import 'package:gsg_lec12assignment/view/screens/home_screen.dart';
import 'package:gsg_lec12assignment/view/widgets/CustomButton.dart';
import 'package:gsg_lec12assignment/view/widgets/DropDownList.dart';
import 'package:gsg_lec12assignment/view/widgets/TextField_.dart';

class MershatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCustomTextField(lable:'Name'),
        MyCustomTextField(lable:'Password'),
        MyCustomTextField(lable:'ShopName'),
        MyCustomTextField(lable:'ShopCatg'),
        MyCustomTextField(lable:'Bio'),
        CustomDropDawn(),
        CustomElevatedButton(
          'SignUp as a mershat',
          onPressed: () {
            AppRouter.appRouter.pushNewRoute(HomePage(
              message: 'This message from Mershat Screen',
            ));
          },
        )
      ],
    );
  }
}
