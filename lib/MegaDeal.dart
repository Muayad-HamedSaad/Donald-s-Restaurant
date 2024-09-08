import 'package:flutter/material.dart';

class MegaDeal extends StatelessWidget {
  const MegaDeal({super.key});

  @override
  Widget build(BuildContext context) {
    final w =MediaQuery.of(context).size.width;
    final h =MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
          body:Stack(
            children: [
              Container(
                width:w,
                height:(h/3)-35,
                color: Colors.redAccent,
                child:Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 120,
                          child: Image.asset('assets/Pngtree—pizza.png',height: 200,width: 400),

                      ),
                      Positioned(
                        left: 50,
                        top: 50,
                        child: Column(
                            children: [
                              Text(
                                'Mega Deal     ',
                                style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Get mega deals here',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                              )
                            ]
                        ),
                      )
                    ]
              )),
              Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/3-70),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                width:MediaQuery.of(context).size.width,
                height: ((MediaQuery.of(context).size.height/3)*2)+40,

                child:Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical:2),
                      margin: EdgeInsets.only(top: 10,left: 15,right: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text("30% OFF" , style: TextStyle(color: Colors.white),),
                            Text("Ingoy 30% off on all categories", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) => Card(
                          elevation: 3,
                          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/pitzza.jpg', // Corrected 'pitzza' to 'pizza'
                                    width: 70,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Item Name',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 4),
                                        Text('Lorem ipsum dolor sit '),
                                        SizedBox(height: 4),
                                        Text(
                                          '* * * * *',
                                          style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'assets/heart.png',
                                      color: Colors.orange,
                                      width: 20,
                                      height: 20,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
