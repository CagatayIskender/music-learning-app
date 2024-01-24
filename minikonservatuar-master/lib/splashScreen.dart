import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MainPage.dart';

class SplashScreen extends StatelessWidget {
  @override
  ImageProvider children = AssetImage("assets/image/splash-min.png");
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5900),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Müzik", style:  TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    height: 1
                  ),),
                ),
                Container(
                  child: Text("dersi", style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    height: 1
                  ),),
                ),
                Container(
                  child: Text("hiç bu kadar", style:  TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1
                  ),),
                ),
                Container(
                  child: Text("eğlenceli", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      height: 1
                  ),),
                ),
                Container(
                  child: Text("olmamıştı", style:  TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1
                  ),),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: children,
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: (){navigator.push(MaterialPageRoute(builder: (context) => MainPage()));},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text('Devam edelim...', style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange[900],
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
