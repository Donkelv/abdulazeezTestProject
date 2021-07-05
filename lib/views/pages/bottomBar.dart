import 'package:abdulazeez/shared/const/bottomBarConst.dart';
import 'package:abdulazeez/views/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _screenNumber = 0;

  bool clicked = false;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        //statusBarColor: Colors.black
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        body: PageView(
          controller: _myPage,
          onPageChanged: (int i){
            _screenNumber = i;
          },
          children: widget.toList(),
          physics: NeverScrollableScrollPhysics(),
          
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0.0,
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: Container(
            color: Colors.transparent,
            height: 10.0.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 1.0.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ink(
                    height: 7.0.h,
                    width: 7.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.5.h),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3.5.h),
                      onTap: (){
                        setState(() {
                          _myPage.jumpToPage(0);
                        });
                      },
                      child: _screenNumber == 0 ?
                      Icon(Icons.home_outlined, color: Color.fromRGBO(62, 146, 78, 1.0), size: 35,)
                      :
                      Icon(Icons.home_outlined, color: Color.fromRGBO(152, 147, 137, 1.0), size: 35,)
                    ),
                  ),
                  Ink(
                    height: 7.0.h,
                    width: 7.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.5.h),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3.5.h),
                      onTap: (){
                        setState(() {
                          _myPage.jumpToPage(1);
                        });
                      },
                      child: _screenNumber == 1 ?
                      Icon(Icons.bar_chart_outlined, color: Color.fromRGBO(62, 146, 78, 1.0), size: 35,)
                      :
                      Icon(Icons.bar_chart_outlined, color: Color.fromRGBO(152, 147, 137, 1.0), size: 35,)
                    ),
                  ),
                  Ink(
                    height: 7.0.h,
                    width: 7.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.5.h),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3.5.h),
                      onTap: (){
                        setState(() {
                          _myPage.jumpToPage(2);
                        });
                      },
                      child: _screenNumber == 2 ?
                      Icon(Icons.notifications_outlined, color: Color.fromRGBO(62, 146, 78, 1.0),size: 35,)
                      :
                      Icon(Icons.notifications_outlined, color: Color.fromRGBO(152, 147, 137, 1.0), size: 35,)
                    ),
                  ),
                  Ink(
                    height: 7.0.h,
                    width: 7.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.5.h),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3.5.h),
                      onTap: (){setState(() {
                          _myPage.jumpToPage(3);
                        });
                      },
                      child: _screenNumber == 3 ?
                      Icon(Icons.person_outline, color: Color.fromRGBO(62, 146, 78, 1.0), size: 35,)
                      :
                      Icon(Icons.person_outline, color: Color.fromRGBO(152, 147, 137, 1.0), size: 35,)
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 7.0.h,
          width: 7.0.h,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 0.0,
              backgroundColor: Color.fromRGBO(174, 119, 67, 1.0),
              child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 35,),
              onPressed: (){
                setState(() {
                          _myPage.jumpToPage(4);
                        });
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      
    );
  }
}