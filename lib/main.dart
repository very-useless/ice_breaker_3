import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Explore")),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("home"),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("search"),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                title: Text("camera"),
                backgroundColor: Colors.blue
            ),
          ],
        ),
          body: MyHomePage()
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:

        Container(

            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                width: double.infinity,
                height: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                color: Colors.white,
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_pic.png',),
                ),
                title: Text('Mark Zukerburg'),
                subtitle: Text('Designer/Developer at MDG IITR'
                    '                   '
                    'Looking for friends'
                    '                                              '
                    'Hate Whatsapp and Facebook'),
              ),
            ],
            ),
        )
                ),



              new SizedBox(
                  width: 300.0,
                  height: 100.0,
                  //   child: Padding(child: ,)
                  child: TextButton(onPressed: null, child: Text("Level 1 info")

                      , style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black),

                              )
                          )
                      )
                  ))
              ,new SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child:  TextButton(onPressed: null, child: Text("Level 2 info")

                      , style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black),

                              )
                          )
                      )
                  ))



            ]
        )

        )

    );

  }
}

