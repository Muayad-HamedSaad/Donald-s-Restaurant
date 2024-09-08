import 'package:flutter/material.dart';

class Donalds extends StatelessWidget {
  const Donalds({super.key});

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
                height:(h/3)+20,
                color: Colors.blue,
                child:Image.asset('assets/pitzza.jpg',fit: BoxFit.cover,),
              ),
              Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/3-20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                width:MediaQuery.of(context).size.width,
                height: ((MediaQuery.of(context).size.height/3)*2)+20,

                child:Column(
                  children: [
                    ListTile(
                      title: Text("Mc Donald\'s",style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),
                      subtitle: Text('American cuisine, fast food', style: TextStyle(fontSize: 10,color: Colors.grey)),
                      trailing: Image(image: AssetImage('assets/heart.png'),color: Colors.orange,),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pitzza.jpg',
                          width: 50,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // SizedBox(height:4),

                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text('Daily times:', style: TextStyle(color: Colors.grey)),
                          Text('10:30 am to 11:00 pm', style: TextStyle(color: Colors.orange)),

                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 4),
                          Text('4.9', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 4),
                          Text('200+ Ratings', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_pin, color: Colors.orange),
                          SizedBox(width: 4),
                          Text('location', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Offer', style: TextStyle(color: Colors.orange)),
                          Text('Burgers', style: TextStyle(color: Colors.grey)),
                          Text('Pizza', style: TextStyle(color: Colors.grey)),
                          Text('Meals', style: TextStyle(color: Colors.grey)),
                          Text('Checkin', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
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
                                    'assets/ice-cream.jpeg', // Corrected 'pitzza' to 'pizza'
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
                                          '\$5.55',
                                          style: TextStyle(color: Colors.green),
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
