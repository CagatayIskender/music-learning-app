import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minikonservatuar/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        iconTheme: IconThemeData(
          color: Colors.red, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Atla")),
        ],
      ),
      body: Body(),
    );
  }
}
