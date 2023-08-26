import 'package:dhan1/loan1.dart';
import 'package:dhan1/loan2.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> images = [
    "https://th.bing.com/th/id/OIP.h-a9qrbZCeOip0S-p8aSagHaEK?w=311&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.3IpTDJHFyZGcJHrJ2As-AwHaEK?w=311&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.h-a9qrbZCeOip0S-p8aSagHaEK?w=311&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.h-a9qrbZCeOip0S-p8aSagHaEK?w=311&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
  ];
  List page = [
    loan1(),
    loan2(),
    loan1(),
    loan1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Loans Available'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.circle,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page[index]));
                },
                child: Card(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0.0,
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          )),
                      // Positioned(
                      //     left: 0,
                      //     right: 0,
                      //     bottom: 0,
                      //     child: Container(
                      //         padding: EdgeInsets.symmetric(
                      //             vertical: 5, horizontal: 10),
                      //         decoration: BoxDecoration(color: Colors.black26),
                      //         child: Text(
                      //           //  reciepelist[index].applabel,
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold),
                      //         ))),
                      // Positioned(
                      //   right: 0,
                      //   height: 40,
                      //   width: 80,
                      //   child: Container(
                      //       decoration: BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.only(
                      //               topRight: Radius.circular(10),
                      //               bottomLeft: Radius.circular(10))),
                      //       child: Center(
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Icon(
                      //               Icons.local_fire_department,
                      //               size: 15,
                      //             ),

                      //           ],
                      //         ),
                      //       )),
                      // )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
