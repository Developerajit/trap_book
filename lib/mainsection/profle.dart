import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/widgets/gradient.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(Icons.more_vert,color: Colors.grey,)
        ],
        leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.grey,),onPressed: (){Navigator.pop(context);},),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              child: Container(
                color: Colors.white,
                height: height*0.3,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: height*0.02,
                        left: width*0.4,
                        right: width*0.4,
                        child: GradientContainer(height: 90, width: 90,image: DecorationImage(image: AssetImage("246.png")),)),
                    Positioned(
                      top: height*0.02,
                      left: width*0.1,
                      right: width*0.1,
                      bottom: 0,
                      child:Center(
                        child:Text('Angelena!',style: GoogleFonts.alata(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),),
                      )
                    ),
                    Positioned(
                      top: height*0.22,
                      left: width*0.1,
                      right: width*0.1,
                      child: Container(height: 200,
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Posts",style: GoogleFonts.lexendPeta(fontSize:14,color: Colors.grey ),),
                              Text('250',style: GoogleFonts.alata(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),)
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Follow",style: GoogleFonts.lexendPeta(fontSize:14,color: Colors.grey ),),
                              Text('250',style: GoogleFonts.alata(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),)
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Following",style: GoogleFonts.lexendPeta(fontSize:14,color: Colors.grey ),),
                              Text('250',style: GoogleFonts.alata(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),)
                            ],
                          ),
                        ],
                      ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
