import 'package:dhan1/form.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';

class loan2 extends StatefulWidget {
  const loan2({super.key});

  @override
  State<loan2> createState() => _loan2State();
}

class _loan2State extends State<loan2> {
  List<String> text = ["Interest", "Eligibility", "Repayment Time", "Minimum"];
  List<IconData> symbols = [
    Icons.timeline,
    Icons.person_search,
    Icons.currency_rupee,
    Icons.access_time_filled
  ];
  List<String> integer = [
    "8%",
    "Required\n - Farad \n  ",
    "2 years",
    "80 thousand"
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // scrolledUnderElevation: 0.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          // backgroundColor: Colors.transparent,
          title: Container(
            margin: EdgeInsets.fromLTRB(0, 25, 0, 20),
            // mainAxisAlignment: MainAxisAlignment.center,
            child: Row(
              children: [
                Icon(
                  Icons.list,
                  size: 50,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(47, 5, 0, 0),
                  child: Image.asset(
                    'assets/images/abc.png',
                    width: 200,
                    height: 150,
                  ),
                ),
              ],
            ),
          )),
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.blue[50],
      // ),
      body: Container(
        // margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Card(
                // margin: EdgeInsets.fromLTRB(40, 10, 40, 20),
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                child: ClipRect(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/kisan.png",
                          )

                          // width: double.infinity,
                          // fit: BoxFit.cover,
                          ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: Text(
                  "Features",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              itemCount: 4,
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                    // height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[50],
                    ),
                    // margin: EdgeInsets.all(5),
                    // padding: EdgeInsets.all(5),

                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    // padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      integer[index],
                                      style: TextStyle(fontSize: 24),
                                      // 'description',
                                      // fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.grey[300]),
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                              child: Row(children: [
                                Icon(symbols[index]),
                                Text(
                                  text[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                            ),

                            // Row(
                            //   children: [
                            //     Text(
                            //       'Subtitle',
                            //       style: TextStyle(
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 15,
                            //       ),
                            //     ),
                            //   ],
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 150,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 150, 0),
              child: Text("Terms and conditions applied."),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              child: Text("Apply Now"),
            )
          ],
        ),
      ),
    );
  }
}
