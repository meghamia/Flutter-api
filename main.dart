import 'package:flutter/material.dart';
import 'package:test1/BMI.dart';
import 'package:test1/Drawerseries.dart';
import 'package:test1/GridSeries.dart';
import 'package:test1/PostModel.dart';
import 'package:test1/cart_model.dart';
import 'package:test1/imagecropper.dart';
import 'package:test1/response_model.dart';
import 'package:test1/series5.dart';

import 'EditGrid.dart';
import 'MyBottomSheet.dart';
import 'gridSeries1.dart';

void main() {
  runApp(
      MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });





  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

          child: Column(
              children:[
                ElevatedButton(
                  child: Text("click here"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Imagecropper()),
                  ),
                ),
                ElevatedButton(
                  child: Text("Calculate BMI"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BMIcalculator()),
                  ),
                ),
                ElevatedButton(
                  child: Text("PostModel Grid view"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostModel1()),

                  ),
                ),
                ElevatedButton(
                  child: Text("Sheet view"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImageSelectionScreen()),

                  ),
                ),
                ElevatedButton(
                  child: Text("grid"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridImage()),

                  ),
                ),
               /* ElevatedButton(
                  child: Text("Edit"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridConcept2()),

                  ),
                ),*/
                ElevatedButton(
                  child: Text("EditPic"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyApp5()),

                  ),
                ),
                ElevatedButton(
                  child: Text("drawer"),
                  onPressed:
                      ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>flutterdemo()

                  ),
                )
                ),
                ElevatedButton(
                    child: Text("store App"),
                    onPressed:
                        ()=> Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Laundrystore()

                      ),
                    )
                ),
                ElevatedButton(
                    child: Text("api"),
                    onPressed:
                        ()=> Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Flutterapi()
                      ),
                    )
                ),
                ElevatedButton(
                    child: Text("Cart"),
                    onPressed:
                        ()=> Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cartapi()
                      ),
                    )
                ),
              ]

          )


      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}









