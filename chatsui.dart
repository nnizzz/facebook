import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/homescrnfb.dart';
import 'package:flutter_application_1/facebook/openscrnfb.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class fbchat extends StatelessWidget {
  const fbchat({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      'assets/images/profile1kc.jpeg',
      'assets/images/profile2gk.jpeg',
      'assets/images/profile3lk.jpeg',
      'assets/images/profile4ms.jpeg',
      'assets/images/prof5.jpg',
      'assets/images/prof6.jpg',
      'assets/images/prof7.jpg',
      'assets/images/prof8.jpg',
    ];

    final List names = [
      'Jeremy Volkov',
      'Mia Sokolov',
      'Killian Carson',
      'Glyndon King',
      'Brandon King',
      'Eli King',
      'Ava Nash',
      'Cecily Knigh',
    ];

    final List profileimages = [
      'assets/images/prof9.jpg',
      'assets/images/prof10.jpg',
      'assets/images/prof18.jpg',
      'assets/images/prof12.jpg',
      'assets/images/prof13.jpg',
      'assets/images/prof14.jpg',
      'assets/images/prof19.jpg',
      'assets/images/prof15.jpg',
      'assets/images/prof16.jpg',
      'assets/images/prof17.jpg',
    ];

    final List profnames = [
      'Tristan Caine',
      'Morana Vitalio',
      'Dante Maroni',
      'Amara Rossi',
      'Alessandro Alpha Villanova',
      'Zephyr de la Vega',
      'Dainn Blackthorne',
      'Lyla Blackthorne',
      'Olive Smith',
      'Adam Carlsen'
    ];

    final List msgs = [
      'It is when the subject is irritatingly fascinating.',
      "Why do all of you look like you're planning a crime?",
      "You haven't stopped talking, have you?",
      'What happened?',
      'Everyone got nervous.',
      'Yeah, that tracks.',
      "I don't chase. I conquer",
      "I'm not afraid of monsters. I live with one.",
      "An emperor kneels only once.",
      'That sounds like a you problem.',
    ];

    final List<Widget> icons = [
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.blue,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.grey,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.blue,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.grey,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.grey,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.blue,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.grey,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.blue,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.grey,size: 12,),
      FaIcon(FontAwesomeIcons.circleCheck, color: Colors.grey,size: 12,),
    ];

    final List time = [
      '.Just Now',
      '.5 Mins Ago',
      '.12:01AM', 
      '.12:24PM', 
      '.9:00AM', 
      '.5:30AM', 
      '.11:45PM',
      '.Yesterday,10PM',
      '.8 Nov,11PM',
      '.31 October'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fbopen()),
            );
          },icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt, color: Colors.black),
          ),
          SizedBox(width: 15),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit, color: Colors.black),
          ),
          SizedBox(width: 15),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 236, 236),
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),

          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1877F2),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(images[index]),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        names[index],
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: profnames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(profileimages[index]),
                  ),
                  title: Text(
                    profnames[index],
                    style: TextStyle(
                      color: const Color.fromARGB(221, 35, 27, 27),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        msgs[index],
                        style: TextStyle(fontSize: 11, color: Colors.black87),
                      ),
                      SizedBox(width: 5),
                      Text(time[index],style: TextStyle(fontSize: 12,color: Colors.black),)
                    ],
                  ),
                  trailing: icons[index],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: IconButton(onPressed: (){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fbchat()),
            );
          },
          icon: Icon(Icons.chat)),
          label: 'Chats'),

          BottomNavigationBarItem(icon: IconButton(onPressed: (){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fbhome()),
            );
          }, icon: Icon(Icons.home)),
          label: 'Home'),

          BottomNavigationBarItem(icon: IconButton(onPressed: (){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fbhome()),
            );
          }, icon: Icon(Icons.auto_stories)),
          label: 'Stories')

      ]
      ),
    );
  }
}
