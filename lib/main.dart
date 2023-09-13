import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // 2) Add Controller for each text field.
  var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Center(
            child: Column(
          children: [
            Text(
              "Hello World",
              style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(fontSize: 32, color: Colors.blue)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Welcome to my app!",
              style: GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 24, color: Colors.red)),
            ),
            SizedBox(
              height: 8,
            ),
            Text("I hope you enjoy it",
                style: TextStyle(fontSize: 16, color: Colors.green)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left"),
                SizedBox(width: 16),
                Text("This is right")
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Image.network(
                "https://ik.imagekit.io/tvlk/blog/2019/12/ma1.png?tr=dpr-2,w-675"),
            // 1) Add the textfield inside UI

            // 3) For each controller, link it to the TextField through controller property
            TextField(decoration: InputDecoration(hintText: "Enter your name"),
              controller: nameEditingController,),
            TextButton(
                onPressed: () {
                  // 4) Bring out the value of controller through .text property
                  Fluttertoast.showToast(
                    msg: "Hello ${nameEditingController.text}. Welcome to my app!",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
                child: Text("Press me!"))
          ],
        )),
      ),
    );
  }
}
