import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app_ui/views/HomeScreen/globals/globals.dart';
import 'package:whats_app_ui/views/HomeScreen/utils/user_message_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tappedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff075E55),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30.h,
          ),
          SizedBox(
            width: 25.h,
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 30.h,
          ),
          SizedBox(
            width: 15.h,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xff075E55),
            height: 55.h,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      tappedIndex = 0;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tappedIndex == 0
                                ? Colors.white
                                : Colors.transparent,
                            width: 4,
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      tappedIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tappedIndex == 1
                                ? Colors.white
                                : Colors.transparent,
                            width: 4,
                          ),
                        ),
                      ),
                      child: Text(
                        "CHATS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      tappedIndex = 2;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tappedIndex == 2
                                ? Colors.white
                                : Colors.transparent,
                            width: 4,
                          ),
                        ),
                      ),
                      child: Text(
                        "STATUS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      tappedIndex == 3;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: tappedIndex == 3
                                ? Colors.white
                                : Colors.transparent,
                            width: 4,
                          ),
                        ),
                      ),
                      child: Text(
                        "CALLS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: IndexedStack(
              index: tappedIndex,
              children: [
                //Camera Section
                Container(
                  height: 100.h,
                  color: Colors.amber,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text("Camera"),
                ),
                //chat section
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ...userName.map(
                        (e) => userMessageContainer(e: e),
                      )
                    ],
                  ),
                ),
                //call section
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
