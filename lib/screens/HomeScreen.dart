import 'package:flutter/material.dart';

import '../di/setupLocator.dart';
import '../view_models/HomeViewModel.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel viewModel = getIt<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            viewModel.navigateToSecondScreenWithMessage("Hello from HomeScreen!");
          },
          child: Text("Go to Second Screen with Message"),
        ),
      ),
    );
  }
}
