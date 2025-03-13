import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> chats = [
    {
      "name": "Shahzad Ali",
      "msg": "You in office",
      "date": "02/02/2021",
      "image": "",
    },
    {
      "name": "Fahmida Hamid Ali",
      "msg": "Call ended - 4m 34s",
      "date": "16/01/2021",
      "image": "",
    },
    {
      "name": "VenD Android Team",
      "msg": "Muhammad Faiq has left this convo",
      "date": "23/10/2020",
      "image": "",
    },
    {
      "name": "+9233498755806,+92213",
      "msg": "Missed call",
      "date": "25/09/2020",
      "image": "",
    },
    {
      "name": "Umair Ali",
      "msg": "Inshallah",
      "date": "20/08/2020",
      "image": "lib/icons/av4.png",
    },
    {
      "name": "Labeeb Ahmed Mahmood",
      "msg": "Call ended-28m27s",
      "date": "23/07/2020",
      "image": "lib/icons/av5.png",
    },
    {
      "name": "VD Football Comradery",
      "msg": "Taha Rafi Alvi has left this conv...",
      "date": "07/07/2020",
      "image": "",
    },
    {
      "name": "ABDUL WAHAB Usmani",
      "msg": "hidden",
      "date": "16/07/2020",
      "image": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Icon(Icons.notifications_none, color: Colors.black),
        //       CircleAvatar(
        //         backgroundImage: AssetImage('lib/icons/avatar.png'),
        //         radius: 20,
        //       ),
        //       Row(
        //         children: [
        //           // Icon(Icons.camera_alt, color: Colors.black),
        //           Padding(
        //             padding: EdgeInsets.all(0),
        //             child: IconButton(
        //               onPressed: () {},
        //               icon: Image.asset("lib/icons/cam.png", height: 30),
        //             ),
        //           ),
        //           SizedBox(width: 15),
        //           Icon(Icons.search, color: Colors.black),
        //           SizedBox(width: 15),
        //           Icon(Icons.more_vert, color: Colors.black),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        leading: IconButton(
          icon: Icon(Icons.notifications_none, color: Colors.black),
          onPressed: () {},
        ),
        title: CircleAvatar(
          backgroundImage: AssetImage('lib/icons/avatar.png'),
          radius: 20,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("lib/icons/cam.png", height: 30),
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'CHATS',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading:
                      chats[index]["image"]!.isNotEmpty
                          ? CircleAvatar(
                            backgroundImage: AssetImage(chats[index]["image"]!),
                          )
                          : CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              217,
                              226,
                              235,
                            ),
                            child: Text(
                              chats[index]["name"]![0],
                              style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  title: Text(chats[index]["name"]!),
                  subtitle: Text(chats[index]["msg"]!),
                  trailing: Text(
                    chats[index]["date"]!,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.blue[700]),
            label: "Chats",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "Contacts",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[700],
        shape: CircleBorder(),
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }
}
