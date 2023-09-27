import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
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
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final player=AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('hii'),
        // ),
        // body:
        // Stack(
        //   children: [
        //     Center(child:Image(
        //       width: double.infinity,
        //       // height: double.infinity,
        //         fit: BoxFit.fill,
        //         image: AssetImage('assets/images/photos.webp'))),
        //     Center(child: Text('Happy birthday Suchorit',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Cursive'),)),
        //   ],
        // )
        /*making clickable */
        // 1- gestureDetector
        // 2- inkWell

        body: Column(
          children: [
            // Expanded(
            //   child:InkWell(
            //     onTap: () async{
            //       await player.play(AssetSource('audio/gameOver1.wav'));
            //       print('pressing purple container');
            //     },
            //     child: Container(
            //       // height: 700,
            //       color: Colors.purple,
            //     ),
            //   ),
            // ),
            // Expanded(
            //   // flex: 1,
            //     child:InkWell(
            //       onTap: ()  async{
            //         await player.play(AssetSource('audio/gameOver2.wav'));
            //
            //         print('pressing red container');
            //       },
            //       child: Container(
            //         // height: 700,
            //         color: Colors.red,
            //       ),
            //     )),
            // Expanded(
            //   // flex: 1,
            //     child:InkWell(
            //       onTap: () async{
            //         await player.play(AssetSource('audio/rightLeftsound.wav'));
            //
            //         print('pressing yellow container');
            //       },
            //       child: Container(
            //         // height: 700,
            //         color: Colors.orange,
            //       ),
            //     )),
            // Expanded(
            //   // flex: 1,
            //     child:InkWell(
            //       onTap: () async{
            //         await player.play(AssetSource('audio/gameOver1.wav'));
            //
            //         print('pressing dark blue container');
            //       },
            //       child: Container(
            //         // height: 700,
            //         color: Color(0XFF2E4374),
            //       ),
            //     )),
            /*By using Gesture Detector*/
            // Expanded(
            //   // flex: 2,
            //   child: GestureDetector(
            //     onTap: () async{
            //       await player.play(AssetSource('audio/rotateSound.mp3'));
            //
            //       print('pressing green container');
            //     },
            //     child: Container(
            //       // height: 200,
            //       color: Colors.green.shade400,
            //     ),
            //   ),
            // )
            // Expanded(
            //   // flex: 2,
            //   child: GestureDetector(
            //     onTap: () async{
            //       await player.play(AssetSource('audio/rotateSound.mp3'));
            //
            //       print('pressing green container');
            //     },
            //     child: Container(
            //       // height: 200,
            //       color: Colors.green.shade400,
            //     ),
            //   ),
            // )

            expanedcontainer(sourceAsset: 'audio/gameOver1.wav', color:Colors.red),
            expanedcontainer(sourceAsset: 'audio/gameOver2.wav', color:Colors.blue),
            expanedcontainer(sourceAsset: 'audio/rightLeftsound.wav', color:Colors.purple),
            expanedcontainer(sourceAsset: 'audio/gameOver1.wav', color:Colors.green),
            expanedcontainer(sourceAsset: 'audio/rotateSound.mp3', color:Colors.yellow),
          ],
        ),
      ),
    );
  }
  Widget expanedcontainer({String sourceAsset='',Color color=Colors.black26}){
    return Expanded(
      // flex: 2,
      //
      child: GestureDetector(
        onTap: () async{
          await player.play(AssetSource(sourceAsset));

          // print('pressing green container');
        },
        child: Container(
          // height: 200,
          color: color,
        ),
      ),
    );

  }
}

// =>Scaffold ,safearea


