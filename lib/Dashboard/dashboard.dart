import 'package:flutter/material.dart';
import 'Trashtype.dart';
import 'request.dart';
import 'report.dart';
import 'Schedule.dart';
import 'Information.dart';


 
class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBE3FFCF),
     


            body: Column(
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                     
                      
                      color: Colors.white
                    ),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         
                         
                      //---------------TRASH TYPE------------------------
                         SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             InkWell(
                               onTap: (){},
                               child: Column(
                                 children: [
                                   Container(
                                     height: 140,
                                     width: MediaQuery.of(context).size.width*0.43,
                                     decoration: BoxDecoration(
                                       color: Color(0xFFBE3FFCF),
                                       image: DecorationImage(
                                         image: AssetImage('assets/dump.png'), ///imagine for box 1

                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(20)),

                                        ),
                                   ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => Trashtype()));
                                            
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFBE3FFCF),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black.withOpacity(0.3)),
                                            ),
                                            child: Center(
                                              child: Text("Trash Type"),
                                            ),
                                          ),
                                         ),
                                        ],
                                        )  
                                    
                                 ],
                               ),
                              ),

                      //---------------INFORMATION DESK------------------------
                                InkWell(
                               onTap: (){},
                               child: Column(
                                 children: [
                                   Container(
                                     height: 140,
                                     width: MediaQuery.of(context).size.width*0.43,
                                     decoration: BoxDecoration(
                                       color: Color(0xFFBE3FFCF),
                                       image: DecorationImage(
                                         image: AssetImage('assets/inform.png'), ///imagine for box 1

                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(20)),

                                        ),
                                   ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => GettingStartedScreen()));
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFBE3FFCF),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black.withOpacity(0.3)),
                                            ),
                                            child: Center(
                                              child: Text("Information Desk"),
                                            ),
                                          ),
                                         ),
                                        ],
                                      ),
                                 ],
                               ),
                              ),
                           ],
                         ),

                        ////-------------REQUEST---------
                                      SizedBox(height: 20,),  
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: (){},
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 140,
                                                  width: MediaQuery.of(context).size.width*0.43,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFBE3FFCF),
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/requestf.png'),
                                                    ),
                                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    
                                                  ),
                                                ),
                                                SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => RequestForm()));
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFBE3FFCF),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black.withOpacity(0.3)),
                                            ),
                                            child: Center(
                                              child: Text("Request"),
                                            ),
                                          ),
                                         ),
                                        ],
                                        )  
                                              ],
                                            )
                                            
                                          ),

                                            //////----REPORT--------
                                          InkWell(
                               onTap: (){},
                               child: Column(
                                 children: [
                                   Container(
                                     height: 140,
                                     width: MediaQuery.of(context).size.width*0.43,
                                     decoration: BoxDecoration(
                                       color: Color(0xFFBE3FFCF),
                                       image: DecorationImage(
                                         image: AssetImage('assets/analysis.png'), ///imagine for box 1

                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(20)),

                                        ),
                                   ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => Report()));
                                          }, //openCalender 39:50
                                          child: Container(
                                            height: 40,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFBE3FFCF),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black.withOpacity(0.3)),
                                            ),
                                            child: Center(
                                              child: Text("Report"),
                                            ),
                                          ),
                                         ),
                                        ],
                                      ),
                                 ],
                               ),
                              )
                          //////----REPORT-ENDING--------
                               ],
                            ),
                       ],
                    ),
                  ),
                  ),     
              ],
              ),
    );
  }
}