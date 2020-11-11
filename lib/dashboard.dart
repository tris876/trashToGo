import 'package:flutter/material.dart';
 
class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBE3FFCF),
     
  appBar: AppBar(
         
          elevation: 0,
          title: Text("DashBoard", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
          ),
          brightness: Brightness.light,
          backgroundColor: Color(0xFFBE3FFCF),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          ),
        ),

            body: Column(
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), 
                      topRight: Radius.circular(40)),
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
                                         image: AssetImage('assets/image/recycling.png'), ///imagine for box 1

                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(20)),

                                        ),
                                   ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){},
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
                                         image: AssetImage('assets/image/recycling.png'), ///imagine for box 1

                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(20)),

                                        ),
                                   ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){},
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
                                                      image: AssetImage(""),
                                                    ),
                                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    
                                                  ),
                                                ),
                                                SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){},
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
                                         image: AssetImage('assets/image/recycling.png'), ///imagine for box 1

                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(20)),

                                        ),
                                   ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){}, //openCalender 39:50
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