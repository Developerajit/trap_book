import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media/widgets/gradient.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(Icons.more_vert,color: Colors.grey,)
        ],
        leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.grey,),onPressed: (){Navigator.pop(context);},),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent.withOpacity(0.5),
        elevation: 30,
        child: Icon(Icons.mode_edit,color: Colors.white,),
        onPressed: (){},
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:  EdgeInsets.only(left: width*0.1,right: width*0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Conversation',style: GoogleFonts.alata(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87.withOpacity(0.6)),),
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
                              hintText: "Search",
                              hintStyle: GoogleFonts.lexendPeta(fontSize:12,color: Colors.grey ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: <Widget>[
                        ListTile(
                          trailing: Text("8:45PM",style: GoogleFonts.lexendPeta(fontSize:10,color: Colors.grey ),),
                          leading: GradientContainer(height: 40,width: 40,image: DecorationImage(image: AssetImage("44B.png"),fit: BoxFit.fill),),
                          title: Text('Sophia',style: GoogleFonts.alata(fontSize: 18,color: Colors.black87.withOpacity(0.6)),),
                          subtitle: Text("Yup,",style: GoogleFonts.lexendPeta(fontSize:10,color: Colors.grey ),),
                        ),
                        ListTile(
                          trailing: Text("6:25AM",style: GoogleFonts.lexendPeta(fontSize:10,color: Colors.grey ),),
                          leading: GradientContainer(height: 40,width: 40,image: DecorationImage(image: AssetImage("46B.png"),fit: BoxFit.fill),),
                          title: Text('Ava',style: GoogleFonts.alata(fontSize: 18,color: Colors.black87.withOpacity(0.6)),),
                          subtitle: Text("All gud!",style: GoogleFonts.lexendPeta(fontSize:10,color: Colors.grey ),),
                        ),
                      ],
                    )
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
