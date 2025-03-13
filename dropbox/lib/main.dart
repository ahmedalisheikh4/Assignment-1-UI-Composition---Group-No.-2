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

  final List<Map<String, String>> folders = [
    {"title": "Python Programming", "date": "Shared on Feb 8, 2021"},
    {"title": "VenD Interview Questions", "date": "Shared on Aug 16, 2020"},
    {"title": "WONDER TREE", "date": "Shared on Nov 10, 2015"},
    {"title": "programming_hub", "date": "Shared on Dec 26, 2019"},
    {"title": "MS Thesis - Spring 2018", "date": "Shared on Feb 7, 2018"},
    {"title": "Applied Prog", "date": "Shared on Nov 11, 2019"},
    {"title": "Research topic", "date": "Shared on Jun 1, 2019"},
    {"title": "CA - Research", "date": "Shared on May 24, 2017"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0, // Removes extra top space
        elevation: 0, // Removes shadow under AppBar
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Aligns everything to the left
        children: [
          // First Row: Menu Icon on Left, Search Icon on Right
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Colors.blue),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.blue),
              ),
            ],
          ),

          // Second Row: Heading "Home" aligned to the left
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Home',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          // Third Row: "Recent", "Shared", "Starred" with left alignment and 15px spacing
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text('Recent', style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    'Shared',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text('Starred', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),

          // 4th row Dropbox Warning Message - Stays Left
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 5),
                  child: Icon(Icons.error_outline),
                ),
                SizedBox(width: 10), // Spacing between icon & text
                // Flexible Text Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Dropbox is almost full',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Upgrade now for more space',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 15),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                ),
                SizedBox(width: 10), // Cancel icon
              ],
            ),
          ),

          // 5th row
          Expanded(
            child: ListView.builder(
              itemCount: folders.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.folder_shared, color: Colors.blue),
                  title: Text(folders[index]["title"]!),
                  subtitle: Text(folders[index]["date"]!),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for button
        },
        tooltip: 'Floating Button',
        backgroundColor: Colors.blue[900],
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
