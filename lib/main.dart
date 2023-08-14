import 'package:flutter/material.dart';
import 'package:deneme/navbar.dart';
import 'package:flutter/services.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[400],
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,
          title: Text(''),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[600],
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Find Your', style: TextStyle(color: Colors.white, fontSize: 22),),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Way', style: TextStyle(color: Colors.white, fontSize: 34),),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(55)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black87,),
                          hintText: 'Search where you want to go',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget> [
                    Text('Popular Cities', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget> [
                          cityCard1('assets/images/one.jpg'),
                          cityCard2('assets/images/three.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget> [
                          cityCard3('assets/images/two.jpg'),
                          cityCard4('assets/images/four.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget cityCard1(image) {
  return AspectRatio(
      aspectRatio: 3.85 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1, 0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ]
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('Istanbul',style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.grey, size: 15,),
                    ),
                    Text('4.0', style: TextStyle(color: Colors.white, fontSize: 14),),
                    Text('(3100)', style: TextStyle(color: Colors.white, fontSize: 13),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget cityCard2(image) {
  return AspectRatio(
    aspectRatio: 3.85 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
          )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ]
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('Antalya',style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Text('5.0', style: TextStyle(color: Colors.white, fontSize: 14),),
                    Text('(4400)', style: TextStyle(color: Colors.white, fontSize: 13),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget cityCard3(image) {
  return AspectRatio(
    aspectRatio: 3.85 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
          )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ]
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('Ankara',style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.grey, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.grey, size: 15,),
                    ),
                    Text('3.0', style: TextStyle(color: Colors.white, fontSize: 14),),
                    Text('(2100)', style: TextStyle(color: Colors.white, fontSize: 13),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget cityCard4(image) {
  return AspectRatio(
    aspectRatio: 3.85 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
          )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ]
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('Izmir',style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      child: Icon(Icons.star, color: Colors.grey, size: 15,),
                    ),
                    Text('4.0', style: TextStyle(color: Colors.white, fontSize: 14),),
                    Text('(2000)', style: TextStyle(color: Colors.white, fontSize: 13),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}














