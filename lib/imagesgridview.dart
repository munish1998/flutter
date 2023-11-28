import 'package:flutter/cupertino.dart';

class GridImage extends StatefulWidget{
  const GridImage({super.key});
  @override
  State<GridImage> createState()=> _GridImageView();
}
class _GridImageView extends State<GridImage>{
  final List imagegrid=[
    'assets/image/image2.png',
    'assets/image/image3.png',
    'assets/image/3.jpeg',
    'assets/image/4.jpeg',
    'assets/image/5.jpeg',
    'assets/image/6.jpeg',
    'assets/image/7.jpeg',
    'assets/image/image2.png',
    'assets/image/9.jpeg',
    'assets/image/10.jpeg',
    'assets/image/11.jpeg',
    'assets/image/image2.png',
    'assets/image/13.jpeg',
    'assets/image/14.jpeg',
    'assets/image/15.jpeg',
    'assets/image/image3.png',
    'assets/image/17.jpeg',
    'assets/image/18.jpeg',
    'assets/image/19.jpeg',
    'assets/image/20.jpeg',
    'assets/image/10.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imagegrid.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
    crossAxisSpacing: 3,mainAxisSpacing: 3,childAspectRatio: 1),
     itemBuilder: (BuildContext context,index){
      return SizedBox(
        height: 100,
        width: 100,
        child: Image(image: AssetImage(imagegrid[index]),fit:BoxFit.cover,)
      );
     });
  }
}