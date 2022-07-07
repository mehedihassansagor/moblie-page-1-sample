import 'package:flutter/material.dart';

const String PlaceholderImage =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz2eS-nLffjbd7N_wPoCBNiJylEz069IAL2w&usqp=CAU";
const String ImageUrl =
    "https://images.unsplash.com/photo-1656867722247-ec21deee1bfb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: Container(
                  child: Stack(children: [
        Image.network(
          ImageUrl,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      PlaceholderImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(height: 10),
              Text("MEHEDI HASSAN SAGOR",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              SizedBox(height: 10),
              Text("Flutter developer",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Positioned(
          top: 300,
          right: 0,
          left: 0,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: (MainAxisAlignment.spaceEvenly),
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.white,
                      ),
                      SizedBox(height: 7),
                      Text("245",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 7),
                      Text("Photos",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(height: 7),
                      Text("2356",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 7),
                      Text("followers",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      SizedBox(height: 7),
                      Text("245",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 7),
                      Text("Photos",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                )
              ]),
        ),
        Positioned(
          top: 450,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.add), Text("Follow")],
              ),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
            ),
          ),
        )
      ]))))));
}
