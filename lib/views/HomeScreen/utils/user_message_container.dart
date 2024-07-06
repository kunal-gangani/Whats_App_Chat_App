import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app_ui/globals/routes.dart';

Widget userMessageContainer({required Map e, required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Routes.userChat, arguments: e);
    },
    child: Container(
      height: 90.h,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 32.h,
              backgroundImage: NetworkImage(e['image']),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        e['name'],
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        e['time'],
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.greenAccent.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        e['message'],
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
