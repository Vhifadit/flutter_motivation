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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MonApp(),
    );
  }
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          //positionnement au debut de la navbar
          backgroundColor: Colors.purple,
          radius: 10,
          child: Text('VH', style: TextStyle(color: Colors.white)),
        ),
        title: Text(
          'Hello, Vhifadit',
        ), //Positionnement apres le leading dans la appbar
        actions: [
          //positionnement a la fin de la appbar
          Icon(Icons.add_alert_sharp),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: .start,

          children: [
            Text('Total Balance', style: TextStyle(fontSize: 12)),
            Text('\$8 600', style: TextStyle(fontSize: 50, fontWeight: .bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CARDS", style: TextStyle(fontSize: 12)),
                Text("ADD +", style: TextStyle(color: Colors.blueAccent)),
              ],
            ),
            Container(
              height: 185,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, right: 10),
                    width: 170,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "VISA",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Container(width: 1, height: 30),
                        Text(
                          "Salary",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          "\$2230",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Container(width: 1, height: 10),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "**6917",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "01/04",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
