import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minikonservatuar/MainPage.dart';
import 'package:minikonservatuar/ders.dart';
import 'package:minikonservatuar/dersicerik.dart';
import 'package:minikonservatuar/splashScreen.dart';
import 'package:minikonservatuar/screens/quiz/quiz_screen.dart';
class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  String chosenImg;
  String chosenTitle;
  Color categoryColor1;
  Color bgColor1;
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    chosenImg = arguments['img'];
    chosenTitle = arguments['title'];
    categoryColor1 = arguments['categoryColor'];
    bgColor1 = arguments['bgColor'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          child: IconButton(
            onPressed: (){navigator.push(MaterialPageRoute(builder: (context) => MainPage()));},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.red,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$chosenTitle', style: TextStyle(
              color: Colors.black,
              fontSize: 27,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.orange[200],
              ),
              child: Hero(
                tag: '$chosenImg',
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage('assets/image/$chosenImg.png'),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Dersler', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.brown[200],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 35,
                        child: IconButton(
                          icon: Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text("15dk", style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    productListing('Notalar', 'Nota Nedir?', 'active',1, text1, title1),
                    productListing('Porte', 'Porte (Dizek) Nedir?"', 'inactive',2,text2, title2),
                    productListing('Nota Vuruşları', 'Vuruş Nedir?', 'inactive',3,text3, title3),
                    productListing('Quiz\'e hazır mısın?', 'Hadi deneyelim', 'inactive',-1,text1, title1)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Column productListing(String title, String info, String activeOrInactive, int param, String paramText, String paramTitle)
  {
    return Column(
      children: <Widget>[
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            Container(
              width: 50,
                height: 50,
              decoration: BoxDecoration(
                color: (activeOrInactive == 'active') ? categoryColor1 : bgColor1,
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: (activeOrInactive == 'active') ? Colors.white : categoryColor1,
                ),
                
                onPressed: () {
                  switch (param) {
                    case 1:
                      Navigator.pushNamed(context, '/dersScreen', arguments: {'paramtext':paramText, 'paramtitle':paramTitle});
                      break;
                    case 2:
                    Navigator.pushNamed(context, '/dersScreen', arguments: {'paramtext':paramText, 'paramtitle':paramTitle});
                      break;
                    case 3:
                    Navigator.pushNamed(context, '/dersScreen', arguments: {'paramtext':paramText, 'paramtitle':paramTitle});
                      break;
                    case -1:
                      Get.to(QuizScreen());
                      break;
                    default:
                  }
                }
              ),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('$title', style: TextStyle(
                  fontSize: 20,
                ),),
                Text('$info', style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),)
              ],
            )
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width*0.85,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
