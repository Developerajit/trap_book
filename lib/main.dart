import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/mainsection/chat.dart';
import 'package:social_media/mainsection/profle.dart';
import 'package:social_media/widgets/gradient.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFFFD8CB), // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen(),
   );
  }

}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool status=true;
   return Scaffold(
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.orangeAccent.withOpacity(0.5),
       elevation: 30,
       child: Icon(Icons.chat_bubble,color: Colors.white,),
       onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));},
     ),
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Padding(
         padding: EdgeInsets.only(left: width*0.1,right:width*0.1),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Row(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.only(top: height*0.08),
                   width: width*0.5,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text("Hello,",style: GoogleFonts.lexendPeta(fontSize:16,color: Colors.grey ),),
                       Text('Angelena!',style: GoogleFonts.alata(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),)
                     ],
                   ),
                 ),
                 Spacer(),
                 Padding(
                   padding: EdgeInsets.only(top: height*0.08),
                   child: InkWell(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));},
                     child: Container(
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(50)),
                           gradient: LinearGradient(colors: [Color(0xFFFFD8CB),Color(0xFFF9D29D)]),
                         image: DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage('246.png')
                         )
                       ),
                     ),
                   ),
                 )
               ],
             ),
             SizedBox(
               height: 30,
             ),
             SizedBox(
               width: width*0.8,
               height: height*0.08,
               child: Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
                 ),
                 elevation: 20,
                 child: Row(
                   children: <Widget>[
                     Padding(
                       padding: EdgeInsets.only(left:10.0),
                       child: GradientContainer(height: 30, width: 30,child: Center(child: Icon(Icons.search,color: Colors.white,size: 15,),),),
                     ),
                     SizedBox(width: width*0.08,),
                     SizedBox(
                         width: width*0.5,
                         child: TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Find Your Friend",
                             hintStyle: GoogleFonts.lexendPeta(fontSize:12,color: Colors.grey ),
                           ),
                         ))
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             SizedBox(
               height: height*0.1,
               child: SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.all(10),
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.white
                       ),
                       child: Center(
                         child: Icon(Icons.add,color: Colors.grey.withOpacity(0.5),),
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.all(10),
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("246.png",),fit: BoxFit.fill),
                           border: status?Border.all(
                               width: 1,
                               color: Colors.orangeAccent
                           ):null,
                           shape: BoxShape.circle,
                           color: Colors.white
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.all(10),
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage("44B.png",),fit: BoxFit.fill),
                         border: status?Border.all(
                             width: 1,
                             color: Colors.orangeAccent
                         ):null,
                           shape: BoxShape.circle,
                           color: Colors.white
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.all(10),
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("46B.png",),fit: BoxFit.fill),
                           border: status?Border.all(
                               width: 1,
                               color: Colors.orangeAccent
                           ):null,
                           shape: BoxShape.circle,
                           color: Colors.white
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.all(10),
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("45B.png",),fit: BoxFit.fill),
                           border: status?Border.all(
                               width: 1,
                               color: Colors.orangeAccent
                           ):null,
                           shape: BoxShape.circle,
                           color: Colors.white
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.all(10),
                       height: 60,width: 60,
                       decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("dp.png",),fit: BoxFit.fill),
                           border: status?Border.all(
                               width: 1,
                               color: Colors.orangeAccent
                           ):null,
                           shape: BoxShape.circle,
                           color: Colors.white
                       ),
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             SingleChildScrollView(
               physics: ScrollPhysics(),
               child: Column(
                 children: <Widget>[
                   ListView(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     children: <Widget>[
                       Padding(
                         padding: EdgeInsets.only(top:10.0,bottom: 10),
                         child: Container(
                           height: height*0.31,
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: height*0.24,
                                 width: width,
                                 decoration:BoxDecoration(
                                     image: DecorationImage(image: AssetImage("45.jpg"),fit: BoxFit.cover)
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left:10.0,top: 5),
                                 child: Row(
                                   children: <Widget>[
                                     GradientContainer(height: 40, width: 40,
                                       image: DecorationImage(image: AssetImage("45B.png")),
                                     ),
                                     SizedBox(width: width*0.05,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text("Olivia",style:GoogleFonts.alata(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),),
                                         Text("3hr ago",style: GoogleFonts.lexendPeta(fontSize:12,color: Colors.grey ),),
                                       ],
                                     ),
                                     Spacer(),
                                     InkWell(
                                       onTap: (){},
                                       child: Icon(Icons.more_vert),
                                     )
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top:10.0,bottom: 10),
                         child: Container(
                           height: height*0.31,
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: height*0.24,
                                 width: width,
                                 decoration:BoxDecoration(
                                     image: DecorationImage(image: AssetImage("46.jpg"),fit: BoxFit.cover)
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left:10.0,top: 5),
                                 child: Row(
                                   children: <Widget>[
                                     GradientContainer(height: 40, width: 40,
                                       image: DecorationImage(image: AssetImage("46B.png")),
                                     ),
                                     SizedBox(width: width*0.05,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text("Ava",style:GoogleFonts.alata(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),),
                                         Text("25Min ago",style: GoogleFonts.lexendPeta(fontSize:12,color: Colors.grey ),),
                                       ],
                                     ),
                                     Spacer(),
                                     InkWell(
                                       onTap: (){},
                                       child: Icon(Icons.more_vert),
                                     )
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top:10.0,bottom: 10),
                         child: Container(
                           height: height*0.31,
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: height*0.24,
                                 width: width,
                                 decoration:BoxDecoration(
                                     image: DecorationImage(image: AssetImage("245.jpg"),fit: BoxFit.cover)
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left:10.0,top: 5),
                                 child: Row(
                                   children: <Widget>[
                                     GradientContainer(height: 40, width: 40,
                                       image: DecorationImage(image: AssetImage("246.png")),
                                     ),
                                     SizedBox(width: width*0.05,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text("Angelena",style:GoogleFonts.alata(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),),
                                         Text("1hr ago",style: GoogleFonts.lexendPeta(fontSize:12,color: Colors.grey ),),
                                       ],
                                     ),
                                     Spacer(),
                                     InkWell(
                                       onTap: (){},
                                       child: Icon(Icons.more_vert),
                                     )
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top:10.0,bottom: 10),
                         child: Container(
                           height: height*0.31,
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: height*0.24,
                                 width: width,
                                 decoration:BoxDecoration(
                                     image: DecorationImage(image: AssetImage("44.jpg"),fit: BoxFit.cover)
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left:10.0,top: 5),
                                 child: Row(
                                   children: <Widget>[
                                     GradientContainer(height: 40, width: 40,
                                       image: DecorationImage(image: AssetImage("44B.png")),
                                     ),
                                     SizedBox(width: width*0.05,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text("Sophia",style:GoogleFonts.alata(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),),
                                         Text("8hr ago",style: GoogleFonts.lexendPeta(fontSize:12,color: Colors.grey ),),
                                       ],
                                     ),
                                     Spacer(),
                                     InkWell(
                                       onTap: (){},
                                       child: Icon(Icons.more_vert),
                                     )
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             )
           ],
         ),
       ),
     ),
   );
  }

}