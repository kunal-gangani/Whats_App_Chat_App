import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget statusContainer({required String image,required String name, required String time,required Color colors}){
  return Container(
    height: 90.h,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: CircleAvatar(
            radius: 32.h,
            backgroundImage: NetworkImage(image),
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
                      name,
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
                    child: Icon(
                      Icons.menu,
                      color: colors,
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
                      time,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
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
  );
}