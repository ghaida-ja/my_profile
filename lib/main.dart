import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 217, 130, 238),
        centerTitle: true,
        title: Text('My Profile'),
      ),
      body: Center(
        child: Container(
          height: 580,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaKqhapEPdmv1v7dDDhQ0iffDLa7qQYuM39fJNzt-W_g&s=10",
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ghaida Almukhlifi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  height: 100,
                  width: 390,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 149, 235),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'I am a CS student at Qassim University, and I am passionate about developing mobile applications using Flutter. I enjoy learning new technologies and improving my skills in software development.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 17, 17, 17)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton ( 
                 style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 209, 108, 234),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                ), onPressed: (){
              },
             
               child: Text("Contact Me",
                style: TextStyle(fontSize: 15, color: Colors.white),)
              
              ),
            ],
              ),
        ),
    ),
    );
  }
}











