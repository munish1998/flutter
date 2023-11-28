import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_view_assignment/imagesgridview.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});
  @override
  State<ImagePage> createState() => _ImagePage();
}

class _ImagePage extends State<ImagePage> {
  final List IconList = [
    Icons.menu,
    Icons.menu,
    Icons.menu,
    Icons.menu,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              CupertinoIcons.chevron_left_circle_fill,
              color: Color.fromARGB(255, 98, 48, 248),
              size: 40,
            ),
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'IMAGES',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  '500 items in box',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.black),
                ),
              ],
            ),
            actions: [
              Icon(
                CupertinoIcons.ellipsis_vertical_circle_fill,
                color: Color.fromARGB(255, 98, 48, 248),
                size: 40,
              ),
              Text('\t\t\t')
            ],
            
            bottom: TabBar(
                // indicator: BoxDecoration(
                //   border: Border(
                //     top: BorderSide(color: Colors.black),
                //   ),
                // ),
                dividerColor: Colors.black,
                indicatorColor: Colors.white,
                labelColor: Color.fromARGB(255, 98, 48, 248),
                unselectedLabelColor: Colors.black,
                padding: EdgeInsets.all(10),
                tabs: [
                  Icon(CupertinoIcons.circle_grid_3x3),
                  Icon(CupertinoIcons.command),
                  Icon(Icons.format_list_bulleted),
                  Icon(Icons.task_alt),
                ]),
          ),
          body: TabBarView(children: [
            GridImage(),
            GridImage(),
            GridImage(),
            GridImage(),
          ]),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Color.fromARGB(255, 3, 14, 114),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
