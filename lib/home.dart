import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
class OnBoardering extends StatefulWidget {
  @override
  _OnBoarderingState createState() => _OnBoarderingState();
}

class _OnBoarderingState extends State<OnBoardering> {
 /* List<String>image=[
    'assets/images/library.png',
    'assets/images/previous-track.png',
    'assets/images/quiz.png',];*/
  List<String>te=["images/learn.jpg","images/vedio.jpg","images/quiz.jpg"];
  List<String>text=["تعلم ببساطه","فيديوهات للتوضيح","اختبار"];
 // int _currentindex=0;
  ValueNotifier<int>_valueNotifier=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context,index){
              //pageview has stack has img and icon and
              return Stack(
                children: <Widget>[
                  Container(
                    /* decoration: BoxDecoration(
                    //add imag take all space of container
                    image: DecorationImage(image: ExactAssetImage('images/th.jpg'),fit: BoxFit.cover,
width:600,               ),*/
height:600,
                    width:1000,
                    padding: EdgeInsets.only(top: 30.0,bottom: 30.0),
              // padding: EdgeInsets.symmetric(vertical: 100,horizontal: 100),

              decoration: BoxDecoration(

              border: Border(top: BorderSide(color: Colors.greenAccent),right: BorderSide(color: Colors.greenAccent),left: BorderSide(color: Colors.greenAccent),bottom: BorderSide(color: Colors.greenAccent))
              ),


              // child: Center(
              child: Column(

              children: <Widget>[







              Text(
                text[index],
             // 'تعلم ببساطه',
              style: TextStyle(fontSize: 32.0,color: Colors.white),
              ),
              Text(
              '',
              style: TextStyle(fontSize: 16.0),
              ),

              Row(


              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              <Widget>[

              /* border: BorderRadius.circular(32);
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                left: 10, top: 15, right: 10, bottom: 15),
            hintText: 'اضافة منشور',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32)))),*/
              // borderRadius: BorderRadius.circular(20),
              Column(
              children: <Widget>[

             /* Image.asset(
              'images/girl.png',
              width: 150.0,
              height: 320.0,
              fit: BoxFit.cover,
              ),*/
              SizedBox(
              height: 10.0,
              ),
              // Text('Followers')
              ],
              ),
              Column(
              children: <Widget>[
              /* CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 32,
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),*/
              SizedBox(
              height: 10.0,
              ),

              Image.asset(
             // 'images/library.png',
                te[index],
               // images[index],
              width: 356.0,
              height: 300.0,
              fit: BoxFit.cover,
              )
                    /*  Text('omr yehia')
          ,*/         ],
              )
              ],
              ),




              /*Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
    Column(
    children: <Widget>[

    // ),
    SizedBox(
    height: 10.0,
    ),
//backgroundColor:Colors.pink,

     FlatButton(
    /* child: new Icon(
                      Icons.add_a_photo,
                      color: Colors.pink,
                      size: 50.0,
                    ),*/
    child: Text('تابع معانا',style: TextStyle(color: Colors.white),),
      color: Colors.black12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
          side:BorderSide(color:Colors.greenAccent)),
       padding: const EdgeInsets.all(10.0),
    // backgroundColor:Colors.pink,
    onPressed: () => Navigator.pop(context),
    ),
    ],
    ),
    Column(
    children: <Widget>[

    // ),
    SizedBox(
    height: 10.0,
    ),

    /*  FlatButton(

            ],
                    )
                  ],
                ),*/

                // Container(
                //height: 400.0,
                // width: double.infinity,


                //color: Colors.pinkAccent[300],

                //
                //
              ]),
    ],
    ),*/ Divider(height: 40, color: Colors.black),
              FlatButton(
              /* child: new Icon(
                      Icons.add_a_photo,
                      color: Colors.pink,
                      size: 50.0,
                    ),*/
              child: Text('تابع معانا',style: TextStyle(color: Colors.white),),
              color: Colors.black12,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side:BorderSide(color:Colors.greenAccent)),
              padding: const EdgeInsets.all(10.0),
              // backgroundColor:Colors.pink,
              onPressed: () => Navigator.pop(context),
              ),
              ],
              ),

              ),
                  //),
                 /* Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // new Image()
                      //new Image.asset('images/th.jpg'),
                      // Text('Welcome',style: TextStyle(color: Colors.black),),
                      //  new Image.asset('images/th.jpg'),
                      // Icon(Icons.accessibility,size: 200,color: Colors.black,),
                      Text('Welcome',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
                    ],
                  ),*/
                ],
              )
              ;
            },// this mean 4 itembuilder
            itemCount: 3,
            onPageChanged: (index){
              _valueNotifier.value= index;
            },


          ),
          //alt and enter anb chose wrap new widgt
         Align(
            alignment: Alignment.bottomCenter,
            child:_displayin(3),
            /* RaisedButton(

              color: Colors.black,
              child: Text('start',style: TextStyle(color: Colors.white),),
              onPressed: (){

              },
            ),*/
          ),
        ],

      ),
    );
  }
 Widget _displayin(int length){
   return PageViewIndicator(
     //مراقبه فق
     pageIndexNotifier: _valueNotifier,
     length:length ,

     normalBuilder: (animationController, index) => Circle(

       size: 8.0,

         color: Colors.white,
     ),
     highlightedBuilder: (animationController, index) => ScaleTransition(
       scale: CurvedAnimation(
         parent: animationController,
         curve: Curves.ease,
       ),
       child: Circle(
         size: 12.0,
         color: Colors.greenAccent,
       ),
     ),
   );
 }
}
