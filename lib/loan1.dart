import 'package:flutter/material.dart';

class loan1 extends StatefulWidget {
  const loan1({super.key});

  @override
  State<loan1> createState() => _loan1State();
}

class _loan1State extends State<loan1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
      ),
      body: Container(
        // margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: Column(
          children: [
            Image.network(
                "https://th.bing.com/th/id/OIP.h-a9qrbZCeOip0S-p8aSagHaEK?w=311&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: 4,
              itemBuilder: (ctx, i) {
                return Card(
                  child: Container(
                    height: 100,
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
                              child: Text("Description"
                                  // 'description',
                                  // fit: BoxFit.fill,
                                  ),
                            ),
                            Text(
                              'Title',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Subtitle',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
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
                mainAxisExtent: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              child: Text("Apply Now"),
            )
          ],
        ),
      ),
    );
  }
}
