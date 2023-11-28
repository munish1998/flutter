import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view_assignment/blank.dart';
import 'package:grid_view_assignment/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'My Boxes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> title = <String>[
    'PASSWORDS',
    'IMAGES',
    'VIDEOS',
    'RANDOM',
    'IMPORTANT',
    'UNTITLED',
  ];
  final List<int> items = <int>[28, 500, 13, 9, 6, 0];
  final List photo = [
    'assets/image/password1.png',
    'assets/image/image1.png',
    'assets/image/video.png',
    'assets/image/Random.png',
    'assets/image/important.png',
    'assets/image/untitled.png',
  ];
  final List page=[
    Blank(),
    ImagePage(),
    Blank(),
    Blank(),
    Blank(),
    Blank(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('Grid View Assignment'),
            ),
            ListTile(
              title: const Text('Grid View 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Grid View 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 7)),
                CircleAvatar(
                  child: IconButton(
                    highlightColor: Colors.blue,
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ),
              ],
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'You have 4 boxes',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(20, 25, 20, 50),
        child: GridView.builder(
            itemCount: title.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 1.0,
                mainAxisExtent: 220,
                ),
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return page[index];
                    }),
                  );
                },
                child: SizedBox(
                  // height: 600,
                  // width: 200,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 7,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              CupertinoIcons.ellipsis_vertical,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 0)),
                        Image(image: AssetImage('${photo[index]}')),
                        Padding(padding: EdgeInsets.only(top: 50)),
                        Text(
                          '${title[index]}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${items[index]} Items in box',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 3, 14, 114),
        onPressed: () {},
      ),
    );
  }
}
