import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/openscrnfb.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(179, 219, 214, 214),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fbopen()),
            );
          },icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_sharp),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1432958576632-8a39f6b97dc7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhbnRhc3l8ZW58MHx8MHx8fDA%3D',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: -60,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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',
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 70),

            Text(
              "Malakai Azer",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SizedBox(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person_add,color: Colors.black,),
                      label: Text('Add Friend',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1877F2),
                      ),
                    ),
                  ),
                  SizedBox(width: 80),
                  SizedBox(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.message,color: Colors.black,),
                      label: Text('Message',style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: 80),
                  IconButton(onPressed: () {}, 
                  icon: Icon(Icons.more_horiz,
                   color: Colors.black,)),
                ],
              ),
            ),

            SizedBox(height: 30),

            ListTile(leading: Icon(Icons.work), title: Text('Prince of Ilya')),
            ListTile(leading: Icon(Icons.school), title: Text('Enforcer')),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Followed by 14,568 people of Ilya'),
            ),

            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text('See your About info'),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Edit public details"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
