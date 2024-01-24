import 'package:flutter/material.dart';
import 'package:minikonservatuar/CoursePage.dart';
import 'package:minikonservatuar/ders.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/coursePage' : (context)=>CoursePage(),
        '/dersScreen' : (context)=>dersScreen(),
      },
    );
  }
}
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfafff0d9),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Merhaba \nGeleceğin Müzisyeni", style: TextStyle(
                  fontSize: 20,
                  color: Colors.red
                ),),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/image/profilePic.png')
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Text('Bugün \nne öğrenmek \nistersin?', style: TextStyle(
              fontSize: 35,
              height: 1.3,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('İlk adımlar', 'Temel Kavramlar', 'Nota', Colors.green, Colors.green[100], 75),
                          SizedBox(height: 20,),
                          courseWidget('Ritim', 'Ritimlere Giriş', 'metronome', Colors.purple, Colors.purple[100], 30),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(height: 50,),
                          courseWidget('Kulak', 'Kulak Çalışması', 'ear', Colors.brown, Colors.brown[100], 45),
                          SizedBox(height: 20,),
                          courseWidget('Ölçüler', 'Ölçü Nedir?', 'simple-meter', Colors.red, Colors.red[100], 15),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container courseWidget(String category, String title, String img, Color categoryColor, Color bgColor, double progress)
  {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: (){openCoursePage('$img', '$title', categoryColor, bgColor);},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),

              ),
              child: Text('$category', style: TextStyle(
                color: (categoryColor == Color(0xffe9eefa) ? Color(0xff2657ce) : Colors.white)
              ),),
            ),
            SizedBox(height: 10,),
            Text('$title', style: TextStyle(
              color: (bgColor == Color(0xffff5954)) ? Colors.white : Colors.black,
              fontSize: 20,
              height: 1,
            ),),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: progress,
                  color: (bgColor == Color(0xffff5954)) ? Colors.red : Colors.blue,
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == Color(0xffff5954)) ? Colors.white.withOpacity(0.5) : Colors.blue[100],
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/$img.png'),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void openCoursePage(String img, String title, Color categoryColor, Color bgColor)
  {
    Navigator.pushNamed(context, '/coursePage', arguments: {'img':'$img', 'title':'$title', 'categoryColor': categoryColor, 'bgColor': bgColor});
  }
}
