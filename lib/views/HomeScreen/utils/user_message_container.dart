import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget userMessageContainer({required Map e}) {
  return Container(
    height: 90.h,
    width: double.infinity,
    child: Row(
      children: [
        CircleAvatar(
          radius: 32.h,
          backgroundImage: NetworkImage(e['image']),
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  e['name'],
                  style: TextStyle(
                    fontSize: 17.sp,
                  ),
                ),
                SizedBox(
                  width: 140.w,
                ),
                Text(
                  e['time'],
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.greenAccent.shade700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Text(
                  e['message'],
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  width: 70.w,
                ),
                Container(
                  height: 25.h,
                  width: 25.w,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,
                  ),
                  child: Text(
                    e['totalMessage'],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
