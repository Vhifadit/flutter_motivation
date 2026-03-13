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
      debugShowCheckedModeBanner:false,
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
        leading: CircleAvatar(//positionnement au debut de la navbar
          backgroundColor:Colors.purple ,radius: 10,
          child: Text('VH',style: TextStyle(color:Colors.white)),
        ),
        title:Text('Hello, Vhifadit') ,//Positionnement apres le leading dans la appbar
        actions: [//positionnement a la fin de la appbar
          Icon(Icons.add_alert_sharp)
        ],
      ),
      body:Column(
        crossAxisAlignment:.start ,
        children: [
          Text('Total Balance'),
          Text('\$8 600',style: TextStyle(fontSize:30,fontWeight:.bold ),)
        ],
      ) ,
    );
  }
}

