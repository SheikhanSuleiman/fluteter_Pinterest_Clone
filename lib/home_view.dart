import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:transparent_image/transparent_image.dart';
class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> imageList =[
    'https://images.unsplash.com/photo-1638615627213-8f7c7e0f1352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638726201802-bea9ae11bd00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1612352090591-f73f08ffb772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638726201802-bea9ae11bd00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638627891024-5dfe8eb58528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1621844012105-62cfdc02d808?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638692800233-9d2399af2102?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemCount: imageList.length,
        crossAxisCount: 2,
        itemBuilder: (context,index) {
          return InkWell(
            onTap: () {
              showBarModalBottomSheet(
                context: context,
                 builder: (context) => SizedBox(
                   height:MediaQuery.of(context).size.height,
                   width: MediaQuery.of(context).size.height,
                   child: Image.network(imageList[index],
                   fit: BoxFit.cover,),
                 ),
                 );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(12),),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: imageList[index],
                  fit: BoxFit.cover,
              ),
            ),
            ),
          );
          
          },
          staggeredTileBuilder:(index){
            return StaggeredTile.count(1, index.isOdd? 1.2 : 1.8);
          }
        
      ),
      
    ),
   ), 
   );
  }
}

