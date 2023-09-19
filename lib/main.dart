import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hii'),
      ),
      body:
      Stack(
        children: [
          Center(child:Image(
            width: double.infinity,
            // height: double.infinity,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/photos.webp'))),
          Center(child: Text('Happy birthday Suchorit',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Cursive'),)),
        ],
      )
    );
  }
}

// =>Scaffold ,safearea


