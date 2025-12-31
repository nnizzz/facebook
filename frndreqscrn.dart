import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/openscrnfb.dart';

class fbfrnds extends StatelessWidget {
  const fbfrnds({super.key});

  @override
  Widget build(BuildContext context) {

    final List names = [
      'Ares Windsor',
      'Raven Rose',
      'Luca Windsor',
      'Valentina Vitalleo',
      'Zane Windsor',
      'Celeste Zane ',
    ];

    final List images = [
      'assets/images/profile1kc.jpeg',
      'assets/images/profile2gk.jpeg',
      'assets/images/profile3lk.jpeg',
      'assets/images/profile4ms.jpeg',
      'assets/images/prof5.jpg',
      'assets/images/prof6.jpg',
    ];

    final List time = [
      '2h',
      '4h',
      '1d',
      '3d',
      '1w',
      '4w',
    ];

    final List mutual = [
      '3 mutual friends',
      '5 mutual friends',
      '1 mutual friend',
      '8 mutual friends',
      '4 mutual friend',
      '2 mutual friends',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fbopen()),
            );
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'Friends',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: Colors.black),
          ),
          SizedBox(width: 12),
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Friend Requests ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("See all", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Column(
            children: List.generate(names.length, (index) {
              return Padding(padding: EdgeInsets.all(10),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(images[index]),
                ),
              SizedBox(width: 12,),

              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(names[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(time[index],style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                SizedBox(height: 4,),
                Text(mutual[index],style: TextStyle(color: Colors.grey),),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Expanded(child: 
                    ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      )
                     ),child: Text('Confirm'),
                     )),
                    SizedBox(width: 8,),
                    Expanded(child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      )
                    ),
                    
                     child: Text('Delete')))
                  ],
                )
                ],
              ))
              ],),);
            }),
          ),
        ],
      ),
    );
  }
}
