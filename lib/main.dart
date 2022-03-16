//W2 W3 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  var appTitle = const Text('Flutter App');
  var appBody = Row(
    children: const <Widget>[
      Expanded(
        child: Text('I like', textAlign: TextAlign.center),
      ),
      Expanded(
        child: Text('Mr.DoNothing', textAlign: TextAlign.center),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: Image(
            image: AssetImage('assets/images/DoNothing1.png'),
          ),
        ),
      ),
    ],
  );

  var appBar = AppBar(
    title: appTitle,
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
    ),
  );

  runApp(app);
}

// class App extends StatelessWidget{
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     var appTitle = const Text('Flutter App');
//
//     //W4 layout
//     final text1 = Container(
//       child: const Text('物件1', style: TextStyle(fontSize: 10),),
//       margin: const EdgeInsets.fromLTRB(15, 8, 15, 8),
//     );
//
//     final text2 = Container(
//       child: const Text('物件2', style: TextStyle(fontSize: 30),),
//       margin: const EdgeInsets.fromLTRB(15, 8, 15, 8),
//     );
//
//      final text3 = Container(
//        child: const Text('物件3', style: TextStyle(fontSize: 60),),
//        margin: const EdgeInsets.fromLTRB(15, 8, 15, 8),
//      );

    //const image1 = Image(image: AssetImage('assets/images/DoNothing1.png'),);

    // var appBody = Container(
    //   child: Row(
    //     children: <Widget>[text1, text2, text3],
    //     mainAxisAlignment: MainAxisAlignment.center,
    //   ),
    //   margin: const EdgeInsets.all(10),
    // );
//  }
//}

  //W2 建立appTitle和hiFlutter
  // var appTitle = const Text('我的第一個Flutter App'),
  //     hiFlutter = const Text(
  //       'Hi, Flutter.\n 今天是20220308',
  //       style: TextStyle( //利用Text類別的style參數設定字體大小為50
  //           fontSize: 50,
  //           color: Colors.red,
  //           decoration: TextDecoration.underline,
  //       ),
  //     );

  //W4
  // var appBody = Column(
  //   children: const <Widget>[
  //     Text('第一行文字'),
  //     Text('第二行文字'),
  //     Expanded(
  //       child: FittedBox(
  //         fit: BoxFit.contain,
  //         child: FlutterLogo(),
  //       )
  //     )
  //   ],
  // );

  //W4
  // var appBody = Row(
  //   children: const <Widget>[
  //     Expanded(
  //       child: Text('第一行字', textAlign: TextAlign.center),
  //     ),
  //     Expanded(
  //       child: Text('第二行字', textAlign: TextAlign.center),
  //     ),
  //     Expanded(
  //       child: FittedBox(
  //         fit: BoxFit.contain, //otherwise the logo will be tiny
  //         child: FlutterLogo(),
  //       ),
  //     ),
  //   ],
  // );

  //W3 var appBody = Center( //Center類別使物件顯示在畫面中央
  //  child: Container(
  //    margin: const EdgeInsets.all(10.0),
  //    color: Colors.amber[600],
  //    width: 48.0,
  //    height: 48.0,
  //  )
  //);

  //W4 建立appBody物件
  //var appBody = Container(
  //  child: hiFlutter,
  //  alignment: Alignment.topCenter,
  //  margin: const EdgeInsets.all(50.0), //Container邊緣距離上面邊緣的距離
  //  color: Colors.white,
  //  padding: const EdgeInsets.fromLTRB(170, 170, 170, 170), //內部物件與Container邊緣的距離
  //);

  //W3 建立appBody物件 放圖在正中間
  //var img = Image.network("data:image/png;base64,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");
  //var appBody = Center(
  //  child: img,
  //);

  //W3 建立appBar物件
  // var appBar = AppBar(
  //   title: appTitle,
  //   backgroundColor: const Color(0xff0000ff),
  // );

  //W3建立app物件
  // var app = MaterialApp(
  //   home: Scaffold(  //home參數是設定一個Scaffold類別的物件
  //     appBar: appBar,
  //     body: appBody,
  //     backgroundColor: Colors.yellow,),
  // );


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
