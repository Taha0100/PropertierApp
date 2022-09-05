import 'package:flutter/material.dart';
import 'package:rant_area/ClassOftabBar.dart';
import 'package:sizer/sizer.dart';

import 'Home_Page.dart';
import 'Material_Page.dart';
import 'TabBarView.dart';


class Bottom_Nav_Bar extends StatefulWidget {
  Bottom_Nav_Bar({
    Key? key,
  }) : super(key: key);

  @override
  State<Bottom_Nav_Bar> createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  int currenttab = 0;
  bool keyboardOpen = false;
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> screens = [
    Properties_Page(
    ),
    Material_Page(),
    GridBox(ctg: prod_details[index].prod_img,data: prod_details[index].prod_title,),
    Properties_Page(),
  ];

  Widget currentScreen = Properties_Page(
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: Drawer(
          child: Properties_Page(),
        ),
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
              Icons.add
          ),
          backgroundColor: Colors.grey,

        ),
        // IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.search),
        // ),
        // destination screen

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Properties_Page(
                          );
                          currenttab = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.home_work,
                            color:
                            currenttab == 0 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Properties',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                              currenttab == 0 ? Colors.amber : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Material_Page();
                          currenttab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.gas_meter_rounded,
                            color:
                            currenttab == 1 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Material',
                            style: TextStyle(fontSize: 12,
                              color:
                              currenttab == 1 ? Colors.amber : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                // Container(
                //   height: 13.h,
                //   width: 12.w,
                //   margin: EdgeInsets.only(bottom: 5.sp),
                //   child: FloatingActionButton(
                //     onPressed: () {
                //
                //     },
                //     child: Icon(
                //       Icons.search,
                //     ),
                //     backgroundColor: kprimarycolor,
                //   ),
                // ),
                // SizedBox(
                //   width: 20.sp,
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.only(left: 16.sp),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = GridBox(ctg: prod_details[index].prod_title,data: prod_details[index].prod_img,);
                          currenttab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.microwave_sharp,
                            color:
                            currenttab == 2 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'My Adds',
                            style: TextStyle(fontSize: 12,
                              color:
                              currenttab == 2 ? Colors.amber : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currenttab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color:
                            currenttab == 3 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Favourite',
                            style: TextStyle(fontSize: 12,
                              color:
                              currenttab == 3 ? Colors.amber : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
