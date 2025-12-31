import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/openscrnfb.dart';

class fbnot extends StatelessWidget {
  const fbnot({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notifyList = [
      {
        "img":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrn5ke26jumSgM8Pwe2Wecgxuk3lf5iNHGRQ&s",
        "title": "Rook Van Doren liked your post",
        "time": "Just now",
        "unread": true,
      },
      {
        "img":
            "https://images.unsplash.com/photo-1766039132515-ea88dc3950bd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Sage Donahue commented on your photo",
        "time": "5 min ago",
        "unread": true,
      },
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1766012368337-79db0ff101bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDExfHhIeFlUTUhMZ09jfHxlbnwwfHx8fHw%3D",
        "title": "Lyra Abbott sent you a friend request",
        "time": "1 hr ago",
        "unread": true,
      },
      {
        "img":
            "https://images.unsplash.com/photo-1613376023733-0a73315d9b06?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
        "title": "James mentioned you in a comment",
        "time": "16 hr ago",
        "unread": false,
      },
      {
        "img":
          'https://plus.unsplash.com/premium_photo-1760308095913-53512a86dd5b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmljdGlvbmFsJTIwY2hhcmFjdGVyJTIwZnJvbSUyMGJvb2tzfGVufDB8fDB8fHww',
        "title": "Thatcher Pierson liked your story",
        "time": "22 hr ago",
        "unread": false,
      },
      {
        "img":
          'https://lookhuman.com/cdn/shop/articles/Romance_Aesthetics_1.jpg?v=1720182645',
        "title": "Olive Smith mentioned you in a comment",
        "time": "Yesterday",
        "unread": true,
      },
      {
        "img":
          'https://cdn.shopify.com/s/files/1/0767/5032/3991/files/Softboy_480x480.jpg?v=1736039411',
        "title": "Adam Carlsen liked your post",
        "time": "Yesterday",
        "unread": false,
      },
      {
        "img":
          'https://cdn.shopify.com/s/files/1/0525/8756/1126/files/i-hate-it-here-so-i-will-go-to-secret-gardens-in-my-mind---aesthetic-photos-spring-flowers-flower-bouquet-pinterest-girl-girly-things-girl-aesthetics-princess-vibes-modern-romance-rom_1000x.jpg?v=1737006973',
        "title": "Lucy Hutton commented on your post",
        "time": "1 week ago",
        "unread": true,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fbopen()),
                    );
                  },
                ),
                SizedBox(width: 10),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 22, 
                   fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: notifyList.length,
              itemBuilder: (context, index) {
                final item = notifyList[index];

                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: item["unread"]
                        ? Colors.blue.withOpacity(0.08)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(item["img"]),
                    ),
                    title: Text(
                      item["title"],
                      style:TextStyle(fontSize: 14),
                    ),
                    subtitle: Text(
                      item["time"],
                      style:TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    trailing:Icon(Icons.more_horiz),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
