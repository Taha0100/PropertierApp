import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'ClassOftabBar.dart';
import 'TabBarView.dart';

class Material_Page extends StatefulWidget {
  const Material_Page({Key? key}) : super(key: key);

  @override
  State<Material_Page> createState() => _Material_PageState();
}

class _Material_PageState extends State<Material_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 9.w, top: 2.h),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: "Pro",
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w400),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "pertier",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 79.w, top: 2.h),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "Asset/Taha.jpg",
                                    height: 5.h,
                                    width: 11.w,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 16.h,
                            thickness: 0.7,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.h, left: 2.5.w),
                            height: 26.h,
                            width: 95.w,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "Asset/city.jpg",
                                    fit: BoxFit.cover,
                                    color: Colors.grey.withOpacity(0.9),
                                    colorBlendMode: BlendMode.modulate,
                                    width: 95.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.w, top: 15.h),
                            child: Text(
                              "Find thousands of",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.w, top: 18.h),
                            child: Text(
                              "Home For Sale & \nRent",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: 6.h,
                            width: 80.w,
                            margin: EdgeInsets.only(left: 7.w, top: 28.h),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,

                                    // controller: user_number,
                                    // initialValue: "+971",
                                    maxLines: 1,
                                    minLines: 1,
                                    autofocus: false,
                                    cursorColor: Colors.grey,

                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 5.sp, vertical: 5.sp),
                                      hintText: 'Let us search it for you',
                                      hintStyle: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.black12,
                                          fontWeight: FontWeight.bold),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6.sp)),
                                        ),
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,

                                          // controller: user_number,
                                          // initialValue: "+971",
                                          maxLines: 1,
                                          minLines: 1,
                                          autofocus: false,
                                          cursorColor: Colors.grey,

                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,

                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 5.sp,
                                                    vertical: 5.sp),
                                            hintText: 'Lahore',
                                            // hintText: 'Lahore',
                                            hintStyle: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.black,
                                              // fontWeight: FontWeight.bold
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Text(
                                      //   City == null ? 'Lahore' : City.toString(),
                                      //   style: GoogleFonts.poppins(
                                      //       textStyle: TextStyle(
                                      //           color: Colors.black,
                                      //           fontSize: 13.sp)),
                                      // ),
                                      InkWell(
                                          onTap: () async {
                                            // showDialog(// Yours params).then((_)=>setState((){}));
                                            // await cityPickerDialogue(context).then((_)=> setState(() {
                                            //   City = City;
                                            // }));
                                          },
                                          child: Icon(
                                            Icons.check_circle,
                                            size: 25.sp,
                                            color: Colors.green,
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 42.h,
                            ),
                            height: 80.5.h,
                            width: 95.w,
                            child: Column(children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 25.w,
                                      ),
                                      height: 4.h,
                                      width: 60.5.w,
                                      child: TabBar(
                                        indicatorColor: Colors.amber,
                                        unselectedLabelColor: Colors.grey,
                                        labelColor: Colors.grey,
                                        tabs: [
                                          Tab(
                                            text: 'Material',
                                          ),
                                          Tab(
                                            text: 'Brand',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Expanded(
                                    child: TabBarView(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 2.h, left: 2.w),
                                      child: Stack(
                                        children: [
                                          GridView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: prod_details.length,
                                            itemBuilder: (BuildContext context,
                                                    int index) =>
                                                GridBox(
                                                    data: prod_details[index]
                                                        .prod_img,
                                                    ctg: prod_details[index]
                                                        .prod_title),
                                            gridDelegate:
                                                SliverGridDelegateWithMaxCrossAxisExtent(
                                                    maxCrossAxisExtent: 80.sp,
                                                    mainAxisSpacing: 5.sp,
                                                    crossAxisSpacing: 10.sp,
                                                    childAspectRatio: 4 / 2.6),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 2.h, left: 2.w),
                                      child: Stack(
                                        children: [
                                          GridView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: prod_details.length,
                                            itemBuilder: (BuildContext context,
                                                    int index) =>
                                                GridBox(
                                                    data: prod_details[index]
                                                        .prod_img,
                                                    ctg: prod_details[index]
                                                        .prod_title),
                                            gridDelegate:
                                                SliverGridDelegateWithMaxCrossAxisExtent(
                                                    maxCrossAxisExtent: 80.sp,
                                                    mainAxisSpacing: 5.sp,
                                                    crossAxisSpacing: 10.sp,
                                                    childAspectRatio: 4 / 2.6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 38.h, left: 4.w),
                            child: Text(
                              "Property Type",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 69.h, left: 4.w),
                            child: Text(
                              "Plot Near you",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 75.h, left: 4.w),
                              height: 40.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  color: Color(0x9EEEEEEF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 2.5.w, top: 1.h),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "Asset/home1.jpg",
                                          height: 18.h,
                                          width: 65.w,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 2.h, left: 5.w),
                                    height: 4.h,
                                    width: 9.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 17.h, left: 5.w),
                                      padding: EdgeInsets.only(
                                          left: 3.5.w, top: 0.5.h),
                                      height: 3.h,
                                      width: 25.w,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Text("Hot Deal")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 22.h, left: 5.w),
                                      child: Text(
                                        "10 Marla Plot Near \nDHA",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 28.h, left: 5.w),
                                      child: Text(
                                        "Jhangi Syedian, Abbottabad",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 21.h, left: 56.w),
                                    height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(Icons.shopping_bag_outlined,
                                        color: Colors.white),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 27.h, left: 58.w),
                                      child: Text(
                                        "Shop",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 31.h, left: 12.w),
                                      child: Text(
                                        "10 Marla",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 31.h, left: 12.w),
                                      child: Text(
                                        "Starting From",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 31.h, left: 12.w),
                                      child: Text(
                                        "12,060",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 30.5.h, left: 5.w),
                                      child:
                                          Icon(Icons.check_box_outline_blank)),
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 75.h, left: 75.w),
                              height: 40.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  color: Color(0x9EEEEEEF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 2.5.w, top: 1.h),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "Asset/home1.jpg",
                                          height: 18.h,
                                          width: 65.w,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 2.h, left: 5.w),
                                    height: 4.h,
                                    width: 9.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 17.h, left: 5.w),
                                      padding: EdgeInsets.only(
                                          left: 3.5.w, top: 0.5.h),
                                      height: 3.h,
                                      width: 25.w,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Text("Hot Deal")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 22.h, left: 5.w),
                                      child: Text(
                                        "10 Marla Plot Near \nDHA",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 28.h, left: 5.w),
                                      child: Text(
                                        "Jhangi Syedian, Abbottabad",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 21.h, left: 56.w),
                                    height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(Icons.shopping_bag_outlined,
                                        color: Colors.white),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 27.h, left: 58.w),
                                      child: Text(
                                        "Shop",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 31.h, left: 12.w),
                                      child: Text(
                                        "10 Marla",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 30.5.h, left: 5.w),
                                      child:
                                          Icon(Icons.check_box_outline_blank)),
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 120.h),
                            height: 20.h,
                            width: 100.w,
                            color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 2.h,right: 15.w),
                                  child: Text(
                                    "Start Selling on Propertier\nthe biggest platform of its\nkind",
                                    style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(

                                  margin: EdgeInsets.only(top: 1.h,right: 50.w),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Find Out More',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      primary: Colors.black,
                                      onPrimary: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 126.h,left: 66.w),
                            child: Image.asset("Asset/area.png",height: 15.h,width: 25.w,),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 175.h,
                            ),
                            child: Text(
                              "Featured",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 142.h,
                            ),
                            child: Text(
                              "Top Seeling Brand",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 25.w,
                            margin: EdgeInsets.only(
                              top: 163.h,
                              left: 35.w
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  blurRadius: 1,
                                  spreadRadius: 2,
                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top: 1.h),
                                  child: Icon(Icons.location_city_outlined,size: 45.sp,),
                                ),
                                Text('Amerli Steels',style: TextStyle(fontSize: 9.sp),)
                              ],
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 25.w,
                            margin: EdgeInsets.only(
                                top: 149.h,
                                left: 35.w
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top: 1.h),
                                  child: Icon(Icons.location_city_outlined,size: 45.sp,),
                                ),
                                Text('Amerli Steels',style: TextStyle(fontSize: 9.sp),)
                              ],
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 25.w,
                            margin: EdgeInsets.only(
                                top: 149.h,
                                left: 70.w
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top: 1.h),
                                  child: Icon(Icons.location_city_outlined,size: 45.sp,),
                                ),
                                Text('Amerli Steels',style: TextStyle(fontSize: 9.sp),)
                              ],
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 25.w,
                            margin: EdgeInsets.only(
                                top: 163.h,
                                left: 3.w
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top: 1.h),
                                  child: Icon(Icons.location_city_outlined,size: 45.sp,),
                                ),
                                Text('Amerli Steels',style: TextStyle(fontSize: 9.sp),)
                              ],
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 25.w,
                            margin: EdgeInsets.only(
                                top: 149.h,
                                left: 3.w
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top: 1.h),
                                  child: Icon(Icons.location_city_outlined,size: 45.sp,),
                                ),
                                Text('Amerli Steels',style: TextStyle(fontSize: 9.sp),)
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 180.h, left: 4.w),
                              height: 40.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                  color: Color(0x9EEEEEEF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 2.5.w, top: 1.h),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "Asset/home1.jpg",
                                          height: 18.h,
                                          width: 65.w,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 2.h, left: 5.w),
                                    height: 4.h,
                                    width: 9.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 17.h, left: 5.w),
                                      padding: EdgeInsets.only(
                                          left: 3.5.w, top: 0.5.h),
                                      height: 3.h,
                                      width: 25.w,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Text("Hot")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 22.h, left: 5.w),
                                      child: Text(
                                        "10 Marla Plot Near \nDHA",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 28.h, left: 5.w),
                                      child: Text(
                                        "Jhangi Syedian, Abbottabad",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 21.h, left: 56.w),
                                    height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(Icons.shopping_bag_outlined,
                                        color: Colors.white),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 27.h, left: 58.w),
                                      child: Text(
                                        "Shop",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 31.h, left: 12.w),
                                      child: Text(
                                        "10 Marla",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 30.5.h, left: 5.w),
                                      child:
                                          Icon(Icons.check_box_outline_blank)),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 32.5.h, left: 47.w),
                                    child: Text("Starting from",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 7.sp)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 34.5.h, left: 45.w),
                                    child: Text("12,058",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18.sp)),
                                  )
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 180.h, left: 70.w),
                              height: 40.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                  color: Color(0x9EEEEEEF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 2.5.w, top: 1.h),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "Asset/home1.jpg",
                                          height: 18.h,
                                          width: 65.w,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 2.h, left: 5.w),
                                    height: 4.h,
                                    width: 9.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 17.h, left: 5.w),
                                      padding: EdgeInsets.only(
                                          left: 3.5.w, top: 0.5.h),
                                      height: 3.h,
                                      width: 25.w,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Text("Hot Deal")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 22.h, left: 5.w),
                                      child: Text(
                                        "10 Marla Plot Near \nDHA",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 28.h, left: 5.w),
                                      child: Text(
                                        "Jhangi Syedian, Abbottabad",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 21.h, left: 56.w),
                                    height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(Icons.shopping_bag_outlined,
                                        color: Colors.white),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 27.h, left: 58.w),
                                      child: Text(
                                        "Shop",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 31.h, left: 12.w),
                                      child: Text(
                                        "10 Marla",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 30.5.h, left: 5.w),
                                      child:
                                          Icon(Icons.check_box_outline_blank)),
                                ],
                              )),
                        ],
                      ),
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
