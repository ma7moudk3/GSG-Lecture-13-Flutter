import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/router/app_router.dart';
import 'package:gsg_lec12assignment/view/widgets/CustomButton.dart';
import 'package:gsg_lec12assignment/view/widgets/DropDownList.dart';
import 'package:gsg_lec12assignment/view/widgets/TextField_.dart';

import 'home_screen.dart';

class CustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCustomTextField(lable: 'Name'),
        MyCustomTextField(lable: 'Password'),
        CustomDropDawn(),
        CustomElevatedButton(
          'SignUp as a customer',
          onPressed: () {
            AppRouter.appRouter.pushNewRoute(HomePage(
              message: 'This message from Customer Screen',
            ));
          },
        )
      ],
    );
  }
}
