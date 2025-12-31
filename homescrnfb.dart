import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/chatsui.dart';
import 'package:flutter_application_1/facebook/profileui.dart';

class fbhome extends StatelessWidget {
  const fbhome({super.key});

  @override
  Widget build(BuildContext context) {
    final List names = [
      'Killian Carson',
      'Glyndon King',
      'Landon King',
      'Mia Sokolov',
      'Rook Van Doren',
      'Sage Donahue',
    ];

    final List prof = [
      'assets/images/profile1kc.jpeg',
      'assets/images/profile2gk.jpeg',
      'assets/images/profile3lk.jpeg',
      'assets/images/profile4ms.jpeg',
      'assets/images/prof19.jpg',
      'assets/images/prof15.jpg',
    ];

    final List time = [
      '15 mins ago',
      '1 hr ago',
      '2 hr ago',
      '6 hr ago',
      'Yesterday',
      '22nd Nov',
    ];

    final List com = ['12', '45', '1k', '566', '3k', '980'];
    final List like = ['45','899','1k','984','3.2k','5k'];

    final List images = [
      'https://images.unsplash.com/photo-1545569341-9eb8b30979d9?w=600',
      'https://images.unsplash.com/photo-1542051841857-5f90071e7989?w=600',
      'https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?w=600',
      'https://images.unsplash.com/photo-1490806843957-31f4c9a91c65?w=600',
      'https://images.unsplash.com/photo-1545569341-9eb8b30979d9?w=600',
      'https://images.unsplash.com/photo-1542051841857-5f90071e7989?w=600',
      'https://lookhuman.com/cdn/shop/articles/Romance_Aesthetics_1.jpg?v=1720182645&width=1100',
      'https://cdn.shopify.com/s/files/1/0525/8756/1126/files/i-hate-it-here-so-i-will-go-to-secret-gardens-in-my-mind---aesthetic-photos-spring-flowers-flower-bouquet-pinterest-girl-girly-things-girl-aesthetics-princess-vibes-modern-romance-rom_1000x.jpg?v=1737006973',
    ];

    final List img = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLwUmVLLfqf3wQFHWgDBg4Zvlqvusz3MnZTg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqxRHs0H30HhcjX5b29AC0lrD9KCp2g3Ay6g&s',
      'https://images.unsplash.com/photo-1519074069444-1ba4fff66d16?w=600',
      'https://images.unsplash.com/photo-1760809424275-563d6cb3baa0?w=600',
      'https://images.unsplash.com/photo-1585588985526-9459c1bb9e9e?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://lookhuman.com/cdn/shop/articles/Romance_Aesthetics_1.jpg?v=1720182645&width=1100',
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(6),
              child: Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profile()),
                      );
                    },
                    icon: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://plus.unsplash.com/premium_vector-1722702997982-65e7e47a13f0?w=600',
                      ),
                    ),
                  ),

                  SizedBox(width: 15),

                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "What's on your mind?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add, color: Colors.blue),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Create", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      );
                    }

                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                              border: BoxBorder.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Story", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            Column(
              children: List.generate(6, (index) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(prof[index]),
                          ),
                          title: Text(
                            names[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(time[index]),
                          trailing: Icon(Icons.more_horiz),
                        ),

                        Image.network(
                          img[index],
                          height: 400,
                          width: 400,
                          fit: BoxFit.fill,
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.thumb_up, color: Colors.red, size: 16),
                              SizedBox(width: 5),
                              Text(like[index]),
                              SizedBox(width: 20),
                              Icon(Icons.comment, size: 16),
                              SizedBox(width: 5),
                              Text(com[index]),
                              SizedBox(width: 20),
                              Icon(Icons.share, size: 16),
                              SizedBox(width: 5),
                              Text(com[index]),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text("Like"),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat),
                                ),
                                SizedBox(width: 5),
                                Text("Comment"),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share_sharp),
                                ),
                                SizedBox(width: 5),
                                Text("Share"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fbhome()),
                );
              },
              icon: Icon(Icons.home),
            ),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fbchat()),
                );
              },
              icon: Icon(Icons.chat),
            ),
            label: 'Chats',
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fbhome()),
                );
              },
              icon: Icon(Icons.auto_stories),
            ),
            label: 'Stories',
          ),
        ],
      ),
    );
  }
}
