import 'package:flutter/material.dart';
import 'navbar.dart';

class loan1 extends StatefulWidget {
  const loan1({super.key});

  @override
  State<loan1> createState() => _loan1State();
}

class _loan1State extends State<loan1> {
  List<String> text = ["Interest", "Eligibility", "Repayment Time", "Minimum"];
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
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/a.png",
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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
              itemCount: 4,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Container(
                    // height: 500,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    "23%", style: TextStyle(fontSize: 20),
                                    // 'description',
                                    // fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            )),
                            Text(
                              text[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
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
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 5,
                mainAxisExtent: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )),
              child: Text("Apply Now"),
            )
          ],
        ),
      ),
    );
  }
}
