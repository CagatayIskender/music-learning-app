import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minikonservatuar/CoursePage.dart';
import 'package:minikonservatuar/constants.dart';
import 'package:minikonservatuar/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Skorunuz",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kBlackColor),
              ),
              Spacer(),
              Text(
                "${(_qnController.numOfCorrectAns/_qnController.questions.length*100).round()} / 100",                
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 2),
              Container(
                height: 70,
                width: 250,
                child:ElevatedButton(     
                         
                  style: ButtonStyle(
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                       side: BorderSide(color: Colors.red)
                     )
                  ),
                 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                  child: Text('Ders Sayfasına Dön', style: TextStyle(
                    fontSize: 20,
                   color: Colors.white,
                   fontWeight: FontWeight.w700
                 ),),
                 onPressed: () {
                   int count = 0;
                   Navigator.of(context).popUntil((_) => count++ >= 2);
                 },
                 
                ),
              ),
              
              Spacer(flex: 1),
            ],
          )
        ],
        
      ),
    );
  }
}
