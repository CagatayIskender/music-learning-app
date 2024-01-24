import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minikonservatuar/CoursePage.dart';
import 'package:minikonservatuar/constants.dart';
import 'package:minikonservatuar/constants.dart';
import 'package:flutter_svg/svg.dart';
class dersScreen extends StatelessWidget {
String paramText;
String paramTitle;
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    paramText = arguments['paramtext'];
    paramTitle = arguments['paramtitle'];
    return Scaffold(
      backgroundColor: Color(0xfafff0d9),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 1),
              Text(
                paramTitle,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 1),
              Container(
                height: 400,
                width: 320,
                child: Text(
                paramText,                
                textAlign: TextAlign.left,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              )
,
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
                   Navigator.pop(context);
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
