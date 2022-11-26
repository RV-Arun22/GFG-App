import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Events Page',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
/////////////////////////////////////////////////////////////////////////my widgets//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////img widget///////////////////////////////////////////
class PicCard extends StatelessWidget{
  final String date;
  final String name;
  final String etype;
  final String iurl;

  PicCard({
    required this.date,required this.name , required this.etype ,required this.iurl
  });

  @override
  Widget build(BuildContext context){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>
            [
              Container(                                                    //container for date
                height: 80,
                width: 80,
                decoration:const BoxDecoration(color: Colors.green,shape: BoxShape.circle,),
                child: Center(child:  Text(
                  date,
                  textAlign: TextAlign.center,style: TextStyle(fontSize:11),
                ),
                ),
              ),
              Container(                                                   //container 2

                constraints: BoxConstraints(maxWidth: 300,minWidth: 300,maxHeight: 200),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(20),border: Border.all(width: 2,color: Colors.lightGreen)),
                padding: EdgeInsets.all(10.0),
                child: Column
                  (
                    children: <Widget>
                    [
                      Container(  padding: EdgeInsets.symmetric(vertical: 9.0),                    //2a..name and event type
                        child:Row
                          ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>
                            [
                              Text(name),
                              Text(etype,style:TextStyle(color: Colors.green)),
                            ]
                        ),
                      ),
                      Container( // padding: EdgeInsets.symmetric(vertical: 5.0),                    //2b..Image or video cover pic
                        height: 140,
                        width: 180,
                        // borderRadius:  BorderRadius.circular(20),
                        child: Image(image: NetworkImage(iurl),alignment: Alignment.bottomCenter,),
                      )  ,
                    ]
                ),
              ),

            ]

        ),
    );
  }
}
//////////////////////////////////////////////vid widget//////////////////////////////////////////////////////
class VidCard extends StatelessWidget {
  final String date;
  final String name;
  final String etype;

  //final String iurl;

  VidCard({
    required this.date, required this.name, required this.etype
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>
            [
              Container( //container for date
                height: 80,
                width: 80,
                decoration: const BoxDecoration(color: Colors.green,
                  shape: BoxShape.circle,),
                child: Center(child: Text(
                  date,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 11),
                ),
                ),
              ),
              Container( //container 2

                constraints: BoxConstraints(
                    maxWidth: 300, minWidth: 300, maxHeight: 80),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.lightGreen)),
                padding: EdgeInsets.all(10.0),
                child: Column
                  (
                    children: <Widget>
                    [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        //2a..name and event type
                        child: Row
                          (mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>
                            [
                              Text(name, style: TextStyle(
                                fontSize: 15.0,
                              )),
                              Text(etype, style: TextStyle(
                                color: Colors.green, fontSize: 15.0,)),
                            ]
                        ),
                      ),
                      /* Container( padding: EdgeInsets.symmetric(vertical: 5.0),                    //2b..Image or video cover pic
                        height: 30,
                        width: 50,
                        // borderRadius:  BorderRadius.circular(20),
                        child: ElevatedButton(onPressed: (){}, child: Text("Watch session"),)
                      )*/
                    ]
                ),
              ),

            ]

        )
    );
  }
}
///////////////////////////////////////////////////////////code combat widget////////////////////////////////////////////////////////
class Codecombat extends StatelessWidget{
  final String date;
  final String name;
  final String etype;


  Codecombat({
    required this.date, required this.name, required this.etype
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>
            [
              Container(                                                    //container for date
                height: 80,
                width: 80,
                decoration:const BoxDecoration(color: Colors.green,shape: BoxShape.circle,),
                child: Center(child:  Text(
                  date,
                  textAlign: TextAlign.center,style: TextStyle(fontSize:11),
                ),
                ),
              ),
              Container(                                                   //container 2

                constraints: BoxConstraints(maxWidth: 300,minWidth: 300,maxHeight: 200),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(20),border: Border.all(width: 2,color: Colors.lightGreen)),
                padding: EdgeInsets.all(10.0),
                child: Column
                  (
                    children: <Widget>
                    [
                      Container(  padding: EdgeInsets.symmetric(vertical: 9.0),                    //2a..name and event type
                        child:Row
                          ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>
                            [
                              Text(name),
                              Text(etype,style:TextStyle(color: Colors.green)),
                            ]
                        ),
                      ),
                      Container( // padding: EdgeInsets.symmetric(vertical: 5.0),                    //2b..Image or video cover pic
                        height: 140,
                        width: 180,
                        // borderRadius:  BorderRadius.circular(20),
                        child: Image(image: AssetImage('assets/ccomb.jpeg'),alignment: Alignment.bottomCenter,),
                      )  ,
                    ]
                ),
              ),

            ]

        )
    );
  }

}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Events Page"),
        backgroundColor: Colors.green,
      ),
      body:Container(
            child:  SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child:  Text(
                        textAlign: TextAlign.left,
                        "Events Timeline",
                        style: TextStyle(
                          fontSize: 30.0,
                        )),
                  ),
              Codecombat(date:"16/10/22",name:"Code Combat",etype:"Coding contest" ),
              VidCard(date: "18/07/21", name: "Geeks Inspire", etype: "ft.Saksham Bhat"),
              PicCard(date:"11/07/21",name:"Tech Trivia",etype:"Quiz contest",iurl:"https://gfg-sit-web.web.app/images/Events/techtrivia.jpg"),
              PicCard(date:"06/06/21",name:"Code Spark",etype:"Coding contest",iurl:"https://gfg-sit-web.web.app/images/Events/codespark.jpg"),
              VidCard(date: "16/05/21", name: "Geeks Inspire", etype: "ft.Shivam Gor"),
              VidCard(date: "24/04/21", name: "Geeks Inspire", etype: "ft. K Rahul Reddy"),

                ],
              ),
            ),
      ),
    );
  }
}
