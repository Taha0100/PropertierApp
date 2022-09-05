import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GridBox extends StatelessWidget {
  final String data;
  final String ctg;

  // final String ctgCount;
  GridBox({
    Key? key,
    required this.data,
    required this.ctg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 6.h,
        width: 26.w,
        // padding: EdgeInsets.all(3.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.sp),
            border: Border.all(width: 1.sp, color: Colors.black26)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data,
                softWrap: ctg.isEmpty ? true : false,
                textAlign: TextAlign.center,
                overflow:
                ctg.isEmpty ? TextOverflow.visible : TextOverflow.ellipsis,
                style:  TextStyle(
                        fontSize: ctg.isEmpty ? 10.sp : 10.sp,
                        fontWeight: FontWeight.w500)),
            if (ctg.isNotEmpty)
              Center(
                child: Text(ctg,
                    style:  TextStyle(
                            fontSize: 8.sp, fontWeight: FontWeight.w400)),
              )
          ],
        ),
      ),
    );
  }
}
