import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
        //statusBarColor: Colors.black
        statusBarColor: Color.fromRGBO(7, 58, 29, 1.0),
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(7, 58, 29, 1.0),
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.4,
                        width: size.width,
                        
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(7, 58, 29, 1.0),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                          )
                        ),
                        child: IntrinsicHeight(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 2.0.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("My Profile", style: TextStyle(fontSize: 15.0.sp, color: Colors.white, fontWeight: FontWeight.w500),),
                                    Icon(Icons.qr_code,  color: Colors.white, size: 30.0,)
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(radius: 5.0.h, backgroundColor: Colors.white),
                                    SizedBox(
                                      width: 5.0.w,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        Text("Bianca Cooper", style: TextStyle(fontSize: 17.0.sp, color: Colors.white, fontWeight: FontWeight.w500),),
                                        SizedBox(
                                          height: 1.0.h,
                                        ),
                                        Text("+234 000 975", style: TextStyle(fontSize: 12.0.sp, color: Colors.white, fontWeight: FontWeight.normal),),
                                        SizedBox(
                                          height: 1.0.h,
                                        ),
                                        Text("bianca@gmail.com", style: TextStyle(fontSize: 12.0.sp, color: Colors.white, fontWeight: FontWeight.normal),),
                                      ]
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0.h,
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                                  child: Container(
                                    height: 2.0.h,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(70, 185, 104, 1.0),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                                  child: Container(
                                    height: 2.0.h,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(227, 160, 79, 1.0),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 2.0.w),
                                    child: Container(
                                      //height: 20.0.h,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(70, 185, 104, 1.0),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                         // bottomRight: 
                                        ),
                                      ),
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.0.w),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.0.h
                                )
                                
                                
                              ],
                            ),
                          ),
                        )
                        
                      ),
                      Expanded(
                        child: Container(
                  color: Colors.white,
                  width: size.width,
                  //height: size.height * 0.41,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4.0.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.person, color: Color.fromRGBO(70, 185, 104, 1.0), size: 35,),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text("Personal", style: TextStyle(fontSize: 15.0.sp, color: Colors.black, fontWeight: FontWeight.w500),),
                                    
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromRGBO(159, 159, 148, 1.0),),
                              
                            ],
                          ),
                          SizedBox(
                            height: 4.0.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock, color: Color.fromRGBO(70, 185, 104, 1.0), size: 35,),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text("Privacy & Policy", style: TextStyle(fontSize: 15.0.sp, color: Colors.black, fontWeight: FontWeight.w500),),
                                    
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromRGBO(159, 159, 148, 1.0),),
                              
                            ],
                          ),
                          SizedBox(
                            height: 4.0.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.card_giftcard, color: Color.fromRGBO(70, 185, 104, 1.0), size: 35,),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text("Offers & rewards", style: TextStyle(fontSize: 15.0.sp, color: Colors.black, fontWeight: FontWeight.w500),),
                                    
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromRGBO(159, 159, 148, 1.0),),
                              
                            ],
                          ),
                          SizedBox(
                            height: 4.0.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.help, color: Color.fromRGBO(70, 185, 104, 1.0), size: 35,),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text("Help", style: TextStyle(fontSize: 15.0.sp, color: Colors.black, fontWeight: FontWeight.w500),),
                                    
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromRGBO(159, 159, 148, 1.0),),
                              
                            ],
                          ),
                          SizedBox(
                            height: 4.0.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.logout, color: Color.fromRGBO(70, 185, 104, 1.0), size: 35,),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text("Logout", style: TextStyle(fontSize: 15.0.sp, color: Colors.black, fontWeight: FontWeight.w500),),
                                    
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 30, color: Color.fromRGBO(159, 159, 148, 1.0),),
                              
                            ],
                          ),


                        ],
                    ),
                  ),
                ),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}