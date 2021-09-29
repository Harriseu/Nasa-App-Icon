/*//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

void main() async{
  //FirebaseFirestore firestore = FirebaseFirestore.instance;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
Future<void> fInitialise() async {
  await Firebase.initializeApp();
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Check In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/*
class TestScreen extends StatelessWidget{
  const TestScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text("hi"),
            ElevatedButton(onPressed: set, child: Text("Press"),),
          ],
        ),
      )
    );
  }
  
}
*/
class CheckedIn extends StatelessWidget {
  const CheckedIn({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        /*title: IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );}, icon: Icon(Icons.arrow_back_ios_new)),*/
      ),
      body: Container(
        color: Colors.grey[200],
        height: 1920,
        width: 1080,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              color: Colors.white
            ),
            height: 530,
            width: 320,
            child: Column(
              children: <Widget>[
                //Padding(padding: EdgeInsets.only(bottom: 50)),
                Container(height: 100, child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Checked In', style: TextStyle(fontSize: 30, color: Colors.white),),
                    Padding(padding: EdgeInsets.only(left:5.0)),
                    Icon(Icons.check_circle_sharp, color: Colors.white, size: 35,)
                  ],
                )),
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),),
                Container(
                  color: Colors.white, 
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 25.0)),
                      Text('Check In Info', style: TextStyle(fontSize: 22),),
                      Padding(padding: EdgeInsets.only(bottom: 25.0)),
                      Column(
                        //mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('Location', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                          Text('Name of Location', style: TextStyle(fontSize: 18,)),
                          Padding(padding: EdgeInsets.only(bottom: 25.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Name', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                              //Padding(padding: EdgeInsets.only(right:155.0)),
                              Text('Email', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 2.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Example User 1', style: TextStyle(fontSize: 14,)),
                              //Padding(padding: EdgeInsets.only(right:70.0)),
                              Text('example@gmail.com', style: TextStyle(fontSize: 14,)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 25.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Date', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                              Text('Time', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('DD/MM/yyyy', style: TextStyle(fontSize: 16,)),
                              Text('HH:MM:SS', style: TextStyle(fontSize: 16,)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Row(
                            //mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: 45,
                                width: 120,
                                color: Colors.blue[300],
                                margin: EdgeInsets.all(5.0), 
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Risk Status', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                                    Text('Low', style: TextStyle(fontSize: 14, color: Colors.white)),
                                  ]
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 140,
                                color: Colors.yellow[400],
                                margin: EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Vaccination Status', style: TextStyle(fontSize: 14, color: Colors.black)),
                                    Text('Fully Vaccinated', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),
                                  ]
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 25.0, left: 5.0)),
                      Text('Always be mindful of social distancing and the SOPs. Take care, stay safe.', 
                        textAlign: TextAlign.center, 
                        style: TextStyle(color: Colors.blue[800], fontSize: 15),
                      ),
                    ],
                  ),
                ), 
              ],
            )
          ),
        ),
      )
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String id;
  CollectionReference premise = FirebaseFirestore.instance.collection('premise');
    //premise.doc(id).get();
  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future: premise.doc(id).get().sna,
      builder: 
    )
  }
}

/*
class _MyHomePageState extends State<MyHomePage> {
  int positive = 0, contacts = 0, _selectedIndex = 0;
  
  // ignore: non_constant_identifier_names
  Map<String, dynamic> FFdata;
  final fieldText = TextEditingController();
  _checkedIn(){
    Navigator.pop(context, 'Yes, confirm'); 
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckedIn()),
    );
    /*showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog();
      } /*AlertDialog(
        //backgroundColor: Colors.blue,
        content: Column(
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(child: Center(child: Text('Checked In', style: TextStyle(fontSize: 22),)),),
            Container(
              //color: Colors.white, 
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 25.0)),
                  Text('Check In Info', style: TextStyle(fontSize: 16),),
                  Padding(padding: EdgeInsets.only(bottom: 10.0)),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text('Location', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                      Text('Name of Location', style: TextStyle(fontSize: 12,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Name', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                          Padding(padding: EdgeInsets.only(right:1.0)),
                          Text('Emel', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Example User 1', style: TextStyle(fontSize: 12,)),
                          Text('example@gmail.com', style: TextStyle(fontSize: 12,)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Date', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                          Text('Time', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('DD/MM/yyyy', style: TextStyle(fontSize: 12,)),
                          Text('HH:MM:SS', style: TextStyle(fontSize: 12,)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10.0)),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            color: Colors.blue[200],
                            margin: EdgeInsets.all(5.0), 
                            child: Column(
                              children: <Widget>[
                                Text('Risk Status', style: TextStyle(fontSize: 14, color: Colors.grey[300])),
                                Text('Low', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                              ]
                            ),
                          ),
                          Container(
                            color: Colors.yellow[300],
                            margin: EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Text('Vaccination Status', style: TextStyle(fontSize: 14, color: Colors.grey[300])),
                                Text('Fully Vaccinated', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                              ]
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ), 
          ],
          //mainAxisSize: MainAxisSize.min,
        )//here
      )*/
    );*/
  }
  void _onPressed(String id){
    fieldText.clear();
    CollectionReference premise = FirebaseFirestore.instance.collection('premise');
    premise.doc(id).get();
    FutureBuilder<DocumentSnapshot>(
      future: premise.doc(id).get(),
      builder:
        (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            FFdata = snapshot.data.data();
            return Center(child: Text('Cases: ${FFdata['positive_cases']}'),);
            /*showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                //title: const Text('AlertDialog Title'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Name of Store', style: TextStyle(fontSize: 25)),
                    Padding(padding: EdgeInsets.only(bottom: 40.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Positive Cases', style: TextStyle(fontSize: 15, color: Colors.red),),
                        Text('Close contacts', style: TextStyle(fontSize: 15, color: Colors.orange),)
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('${FFdata['positive_cases']}', style: TextStyle(fontSize: 18, color: Colors.black,),),
                        Text('${FFdata['close_contacts']}', style: TextStyle(fontSize: 18, color: Colors.black),),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 25.0)),
                    Text('NOTE: There has been ${FFdata['positive_cases']} positive case(s) and ${FFdata['close_contacts']} close contact(s) reported in this premise in the past 14 days. Check in anyway?')
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Take me back'),
                    child: const Text('Take me back'),
                  ),
                  TextButton(
                    onPressed: _checkedIn,
                    child: const Text('Yes, confirm'),
                  ),
                ],
              ),
            );*/
            //return Text("Full Name: ${data['full_name']} ${data['last_name']}");
          }

          return Text("loading");
      },
    );
    /*
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        //title: const Text('AlertDialog Title'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Name of Store', style: TextStyle(fontSize: 25)),
            Padding(padding: EdgeInsets.only(bottom: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Positive Cases', style: TextStyle(fontSize: 15, color: Colors.red),),
                Text('Close contacts', style: TextStyle(fontSize: 15, color: Colors.orange),)
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('${FFdata['positive_cases']}', style: TextStyle(fontSize: 18, color: Colors.black,),),
                Text('${FFdata['close_contacts']}', style: TextStyle(fontSize: 18, color: Colors.black),),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 25.0)),
            Text('NOTE: There has been ${FFdata['positive_cases']} positive case(s) and ${FFdata['close_contacts']} close contact(s) reported in this premise in the past 14 days. Check in anyway?')
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Take me back'),
            child: const Text('Take me back'),
          ),
          TextButton(
            onPressed: _checkedIn,
            child: const Text('Yes, confirm'),
          ),
        ],
      ),
    );*/
  }
  /*void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
    }
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Icon(Icons.flutter_dash, color: Colors.white, size: 150,),
      splashTransition: SplashTransition.fadeTransition,
      //pageTransitionType: PageTransitionType.scale,
      backgroundColor: Colors.blue,
      nextScreen: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter code to check-in',
                style: TextStyle(fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0),),
              Container(
                height: 70, width: 220,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Premise Code',
                  ),
                  controller: fieldText,
                  keyboardType: TextInputType.numberWithOptions(),
                  onSubmitted: _onPressed,  
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Check In',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Location',
              backgroundColor: Colors.blue,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        /*floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),*/ // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
    /*Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter code to check-in',
              style: TextStyle(fontSize: 18),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0),),
            Container(
              height: 70, width: 220,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Premise Code',
                ),
                controller: fieldText,
                keyboardType: TextInputType.numberWithOptions(),
                onSubmitted: _onPressed,  
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Check In',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );*/
  }
}*/

class CustomFutureBuilder extends State<MyHomePage>{
  int positive = 0, contacts = 0, _selectedIndex = 0;
  
  // ignore: non_constant_identifier_names
  Map<String, dynamic> FFdata;
  final fieldText = TextEditingController();
  _checkedIn(){
    Navigator.pop(context, 'Yes, confirm'); 
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckedIn()),
    );
    /*showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog();
      } /*AlertDialog(
        //backgroundColor: Colors.blue,
        content: Column(
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(child: Center(child: Text('Checked In', style: TextStyle(fontSize: 22),)),),
            Container(
              //color: Colors.white, 
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 25.0)),
                  Text('Check In Info', style: TextStyle(fontSize: 16),),
                  Padding(padding: EdgeInsets.only(bottom: 10.0)),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text('Location', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                      Text('Name of Location', style: TextStyle(fontSize: 12,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Name', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                          Padding(padding: EdgeInsets.only(right:1.0)),
                          Text('Emel', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Example User 1', style: TextStyle(fontSize: 12,)),
                          Text('example@gmail.com', style: TextStyle(fontSize: 12,)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Date', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                          Text('Time', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('DD/MM/yyyy', style: TextStyle(fontSize: 12,)),
                          Text('HH:MM:SS', style: TextStyle(fontSize: 12,)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10.0)),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            color: Colors.blue[200],
                            margin: EdgeInsets.all(5.0), 
                            child: Column(
                              children: <Widget>[
                                Text('Risk Status', style: TextStyle(fontSize: 14, color: Colors.grey[300])),
                                Text('Low', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                              ]
                            ),
                          ),
                          Container(
                            color: Colors.yellow[300],
                            margin: EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Text('Vaccination Status', style: TextStyle(fontSize: 14, color: Colors.grey[300])),
                                Text('Fully Vaccinated', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                              ]
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ), 
          ],
          //mainAxisSize: MainAxisSize.min,
        )//here
      )*/
    );*/
  }
  void _onPressed(String id){
    fieldText.clear();
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        //title: const Text('AlertDialog Title'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Name of Store', style: TextStyle(fontSize: 25)),
            Padding(padding: EdgeInsets.only(bottom: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Positive Cases', style: TextStyle(fontSize: 15, color: Colors.red),),
                Text('Close contacts', style: TextStyle(fontSize: 15, color: Colors.orange),)
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('${FFdata['positive_cases']}', style: TextStyle(fontSize: 18, color: Colors.black,),),
                Text('${FFdata['close_contacts']}', style: TextStyle(fontSize: 18, color: Colors.black),),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 25.0)),
            Text('NOTE: There has been ${FFdata['positive_cases']} positive case(s) and ${FFdata['close_contacts']} close contact(s) reported in this premise in the past 14 days. Check in anyway?')
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Take me back'),
            child: const Text('Take me back'),
          ),
          TextButton(
            onPressed: _checkedIn,
            child: const Text('Yes, confirm'),
          ),
        ],
      ),
    );
    //CollectionReference premise = FirebaseFirestore.instance.collection('premise');
    //premise.doc(id).get();
    /*FutureBuilder<DocumentSnapshot>(
      future: premise.doc(id).get(),
      builder:
        (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            FFdata = snapshot.data.data();
            return Center(child: Text('Cases: ${FFdata['positive_cases']}'),);
            /*showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                //title: const Text('AlertDialog Title'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Name of Store', style: TextStyle(fontSize: 25)),
                    Padding(padding: EdgeInsets.only(bottom: 40.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Positive Cases', style: TextStyle(fontSize: 15, color: Colors.red),),
                        Text('Close contacts', style: TextStyle(fontSize: 15, color: Colors.orange),)
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('${FFdata['positive_cases']}', style: TextStyle(fontSize: 18, color: Colors.black,),),
                        Text('${FFdata['close_contacts']}', style: TextStyle(fontSize: 18, color: Colors.black),),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 25.0)),
                    Text('NOTE: There has been ${FFdata['positive_cases']} positive case(s) and ${FFdata['close_contacts']} close contact(s) reported in this premise in the past 14 days. Check in anyway?')
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Take me back'),
                    child: const Text('Take me back'),
                  ),
                  TextButton(
                    onPressed: _checkedIn,
                    child: const Text('Yes, confirm'),
                  ),
                ],
              ),
            );*/
            //return Text("Full Name: ${data['full_name']} ${data['last_name']}");
          }

          return Text("loading");
      },
    );*/
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
    }
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Icon(Icons.flutter_dash, color: Colors.white, size: 150,),
      splashTransition: SplashTransition.fadeTransition,
      //pageTransitionType: PageTransitionType.scale,
      backgroundColor: Colors.blue,
      nextScreen: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter code to check-in',
                style: TextStyle(fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0),),
              Container(
                height: 70, width: 220,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Premise Code',
                  ),
                  controller: fieldText,
                  keyboardType: TextInputType.numberWithOptions(),
                  onSubmitted: _onPressed,  
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Check In',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Location',
              backgroundColor: Colors.blue,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        /*floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),*/ // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
*/





















//import 'dart:html';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Check In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/*
class TestScreen extends StatelessWidget{
  const TestScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text("hi"),
            ElevatedButton(onPressed: set, child: Text("Press"),),
          ],
        ),
      )
    );
  }
  
}
*/
class CheckedIn extends StatelessWidget {
  const CheckedIn({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        /*title: IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );}, icon: Icon(Icons.arrow_back_ios_new)),*/
      ),
      body: Container(
        color: Colors.grey[200],
        height: 1920,
        width: 1080,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              color: Colors.white
            ),
            height: 530,
            width: 320,
            child: Column(
              children: <Widget>[
                //Padding(padding: EdgeInsets.only(bottom: 50)),
                Container(height: 100, child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Checked In', style: TextStyle(fontSize: 30, color: Colors.white),),
                    Padding(padding: EdgeInsets.only(left:5.0)),
                    Icon(Icons.check_circle_sharp, color: Colors.white, size: 35,)
                  ],
                )),
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),),
                Container(
                  color: Colors.white, 
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 25.0)),
                      Text('Check In Info', style: TextStyle(fontSize: 22),),
                      Padding(padding: EdgeInsets.only(bottom: 25.0)),
                      Column(
                        //mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('Location', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                          Text('Name of Location', style: TextStyle(fontSize: 18,)),
                          Padding(padding: EdgeInsets.only(bottom: 25.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Name', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                              //Padding(padding: EdgeInsets.only(right:155.0)),
                              Text('Email', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 2.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Example User 1', style: TextStyle(fontSize: 14,)),
                              //Padding(padding: EdgeInsets.only(right:70.0)),
                              Text('example@gmail.com', style: TextStyle(fontSize: 14,)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 25.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Date', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                              Text('Time', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('DD/MM/yyyy', style: TextStyle(fontSize: 16,)),
                              Text('HH:MM:SS', style: TextStyle(fontSize: 16,)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Row(
                            //mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: 45,
                                width: 120,
                                color: Colors.blue[300],
                                margin: EdgeInsets.all(5.0), 
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Risk Status', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                                    Text('Low', style: TextStyle(fontSize: 14, color: Colors.white)),
                                  ]
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 140,
                                color: Colors.yellow[400],
                                margin: EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Vaccination Status', style: TextStyle(fontSize: 14, color: Colors.black)),
                                    Text('Fully Vaccinated', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),
                                  ]
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 25.0, left: 5.0)),
                      Text('Always be mindful of social distancing and the SOPs. Take care, stay safe.', 
                        textAlign: TextAlign.center, 
                        style: TextStyle(color: Colors.blue[800], fontSize: 15),
                      ),
                    ],
                  ),
                ), 
              ],
            )
          ),
        ),
      )
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int positive = 0, contacts = 0, _selectedIndex = 0;
  // ignore: non_constant_identifier_names
  //Map<String, dynamic> FFdata;
  final fieldText = TextEditingController();
  //CollectionReference premise = FirebaseFirestore.instance.collection('premise');
  //premise.doc(id).get();

  _checkedIn(){
    Navigator.pop(context, 'Yes, confirm'); 
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckedIn()),
    );
    /*showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog();
      } /*AlertDialog(
        //backgroundColor: Colors.blue,
        content: Column(
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(child: Center(child: Text('Checked In', style: TextStyle(fontSize: 22),)),),
            Container(
              //color: Colors.white, 
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 25.0)),
                  Text('Check In Info', style: TextStyle(fontSize: 16),),
                  Padding(padding: EdgeInsets.only(bottom: 10.0)),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text('Location', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                      Text('Name of Location', style: TextStyle(fontSize: 12,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Name', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                          Padding(padding: EdgeInsets.only(right:1.0)),
                          Text('Emel', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Example User 1', style: TextStyle(fontSize: 12,)),
                          Text('example@gmail.com', style: TextStyle(fontSize: 12,)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Date', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                          Text('Time', style: TextStyle(fontSize: 9, color: Colors.grey[400])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('DD/MM/yyyy', style: TextStyle(fontSize: 12,)),
                          Text('HH:MM:SS', style: TextStyle(fontSize: 12,)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10.0)),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            color: Colors.blue[200],
                            margin: EdgeInsets.all(5.0), 
                            child: Column(
                              children: <Widget>[
                                Text('Risk Status', style: TextStyle(fontSize: 14, color: Colors.grey[300])),
                                Text('Low', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                              ]
                            ),
                          ),
                          Container(
                            color: Colors.yellow[300],
                            margin: EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Text('Vaccination Status', style: TextStyle(fontSize: 14, color: Colors.grey[300])),
                                Text('Fully Vaccinated', style: TextStyle(fontSize: 14, color: Colors.grey[100])),
                              ]
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ), 
          ],
          //mainAxisSize: MainAxisSize.min,
        )//here
      )*/
    );*/
  }
  void onPressed2(String id){
    fieldText.clear();
    showDialog(
      context: context, 
      builder: (BuildContext context) => AlertDialog(
        content: Text('This is a test.'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Take me back'),
            child: const Text('Take me back'),
          ),
          TextButton(
            onPressed: _checkedIn,
            child: const Text('Yes, confirm'),
          ),
        ]
      ),
      
    );
  }
  void _onPressed(String id){
    fieldText.clear();
    //CollectionReference premise = FirebaseFirestore.instance.collection('premise');
    // FutureBuilder<DocumentSnapshot>(
    //   future: premise.doc(id).get(),
    //   builder:
    //     (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
    //     FFdata = snapshot.data.data();
    //   },
    // );

    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        //title: const Text('AlertDialog Title'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Name of Store', style: TextStyle(fontSize: 25)),
            Padding(padding: EdgeInsets.only(bottom: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Positive Cases', style: TextStyle(fontSize: 15, color: Colors.red),),
                Text('Close contacts', style: TextStyle(fontSize: 15, color: Colors.orange),)
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('0', style: TextStyle(fontSize: 18, color: Colors.black,),),
                Text('0', style: TextStyle(fontSize: 18, color: Colors.black),),
                //Text('${FFdata['positive_cases']}', style: TextStyle(fontSize: 18, color: Colors.black,),),
                //Text('${FFdata['close_contacts']}', style: TextStyle(fontSize: 18, color: Colors.black),),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 25.0)),
            Text('NOTE: There has been 0 positive case(s) and 0 close contact(s) reported in this premise in the past 14 days. Check in anyway?')
            // Text('NOTE: There has been ${FFdata['positive_cases']} positive case(s) and ${FFdata['close_contacts']} close contact(s) reported in this premise in the past 14 days. Check in anyway?')
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Take me back'),
            child: const Text('Take me back'),
          ),
          TextButton(
            onPressed: _checkedIn,
            child: const Text('Yes, confirm'),
          ),
        ],
      ),
    );
  }
  String func(String id){
    setState(() {
      contacts++;
    });
  }
  /*void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
    }
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Icon(Icons.flutter_dash, color: Colors.white, size: 150,),
      splashTransition: SplashTransition.fadeTransition,
      //pageTransitionType: PageTransitionType.scale,
      backgroundColor: Colors.blue,
      nextScreen: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter code to check-in $contacts',
                style: TextStyle(fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0),),
              Container(
                height: 70, width: 220,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Premise Code',
                  ),
                  controller: fieldText,
                  keyboardType: TextInputType.numberWithOptions(),
                  onSubmitted: onPressed2,  
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Check In',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Location',
              backgroundColor: Colors.blue,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        /*floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),*/ // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
    /*Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter code to check-in',
              style: TextStyle(fontSize: 18),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0),),
            Container(
              height: 70, width: 220,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Premise Code',
                ),
                controller: fieldText,
                keyboardType: TextInputType.numberWithOptions(),
                onSubmitted: _onPressed,  
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Check In',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );*/
  }
}
