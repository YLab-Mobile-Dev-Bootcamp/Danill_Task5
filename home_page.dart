import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageUi createState() => _HomePageUi();
}

class _HomePageUi extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        allowFontScaling: false,
        designSize: Size(375, 812));
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 600, tablet: 950, watch: 300),
      mobile: Scaffold(
        backgroundColor: Color(0xffE0E0E0),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(28.w)),
                      ),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 24.w,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 20, 0),
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(28.w))),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 24.w,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.w, right: 150.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Explore the',
                      style: TextStyle(
                        fontSize: 30.sp,
                      ),
                    ),
                    Text(
                      'Beautiful World!',
                      style: TextStyle(
                          fontSize: 32.sp, fontWeight: FontWeight.w500),
                      maxLines: 1,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 40.w,
                    width: 180.w,
                    margin: EdgeInsets.only(top: 10.w, right: 100.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.w)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.search),
                        Text(
                          '   search places',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.2)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.w),
                    width: 50.w,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.w),
                        ),
                        color: Color(0xffD1522D)),
                    child: Icon(Icons.list_alt, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20.w,
              ),
              Padding(
                padding: EdgeInsets.only(right: 200.w),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: 50.w,
                      child: ListView(
                        //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 40.w,
                            width: 110.w,
                            margin: EdgeInsets.only(left: 24.w),
                            decoration: BoxDecoration(
                                color: Color(0xffD1522D),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.w),
                                )),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.sports_hockey,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Sky Tour',
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40.w,
                            width: 110.w,
                            margin: EdgeInsets.only(left: 10.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.w),
                                )),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.add_outlined,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Desert',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40.w,
                            width: 110.w,
                            margin: EdgeInsets.only(left: 10.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.w),
                                )),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.backpack,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Beach',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 80.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Travel Places',
                        style: TextStyle(
                          fontSize: 28.sp,
                        ),
                      ),
                      Container(
                        height: 30.w,
                        width: 65.w,
                        margin: EdgeInsets.only(right: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.all(Radius.circular(24.w)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'View All',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 215.w,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 237.w,
                      height: 255.w,
                      margin: EdgeInsets.only(left: 20.w),
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(18..w)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 131.w,
                            width: 218.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thiksey_Monastery_summer_2012.png'),
                                    fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(18.w)),
                                boxShadow: [BoxShadow()]),
                          ),
                          SizedBox(
                            height: 14.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w, right: 6.w),
                            child: Text('Thiksey Monastery',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(
                            height: 25.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.location_on,
                                    color: Colors.grey.shade500),
                                Text(
                                  'Lodakh, India',
                                  style: TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 237.w,
                      height: 255.w,
                      margin: EdgeInsets.only(left: 20.w),
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(18..w)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 131.w,
                            width: 218.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/pulau_anambas.png'),
                                    fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18.w)),
                                boxShadow: [BoxShadow()]),
                          ),
                          SizedBox(
                            height: 14.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w, right: 6.w),
                            child: Text('Pulau Anambas',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(
                            height: 25.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.location_on,
                                    color: Colors.grey.shade500),
                                Text(
                                  'Riau, Indonesia',
                                  style: TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bus_alert), title: Text('Take Away')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
