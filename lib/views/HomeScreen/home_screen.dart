import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app_ui/views/HomeScreen/globals/globals.dart';
import 'package:whats_app_ui/views/HomeScreen/status_container.dart';
import 'package:whats_app_ui/views/HomeScreen/utils/call_container.dart';
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
      backgroundColor: Colors.black,
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
                      tappedIndex = 3;
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
                        (e) => userMessageContainer(
                          e: e,
                          context: context,
                        ),
                      )
                    ],
                  ),
                ),
                //status section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    statusContainer(
                      image:
                          "https://instagram.famd1-2.fna.fbcdn.net/v/t51.2885-19/448834408_817522240031813_1010168753845175633_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=105&_nc_ohc=v3dllvwYr3YQ7kNvgHLyZXX&edm=AEhyXUkBAAAA&ccb=7-5&oh=00_AYARiJWSrVf-2j79v_DFHuzftjA9hgn3_UkwKl9U_L51Pw&oe=667DF122&_nc_sid=cf751b",
                      name: "Kunal",
                      time: "Today , 12:30",
                      colors: Colors.white,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Text(
                      "Recent Updates",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    statusContainer(
                      image:
                          "https://scontent.cdninstagram.com/v/t51.2885-19/439056940_1054000326260997_8736311354380424257_n.jpg?stp=dst-jpg_s100x100&_nc_cat=108&ccb=1-7&_nc_sid=3fd06f&_nc_ohc=4HFQNrHe3QIQ7kNvgHnfyZI&_nc_ad=z-m&_nc_cid=2034&_nc_ht=scontent.cdninstagram.com&oh=00_AYBwxjl4PyJrwsxSxO2-9KxA0MDa6pl3CytG0GkwwBStDQ&oe=667DDAE5",
                      name: "Kaira",
                      time: "Today , 11:29",
                      colors: Colors.transparent,
                    ),
                    statusContainer(
                      image:
                          "https://scontent.cdninstagram.com/v/t51.2885-19/448228247_1119550149149305_2357405030334350637_n.jpg?stp=dst-jpg_s100x100&_nc_cat=107&ccb=1-7&_nc_sid=3fd06f&_nc_ohc=tw-LtW5UikQQ7kNvgFBoGGs&_nc_ad=z-m&_nc_cid=2034&_nc_ht=scontent.cdninstagram.com&oh=00_AYCkOPIDeMOz9Jk2uzOr2goTH6iMRSISDWkGfJ3DwYLcXA&oe=667DEA6D",
                      name: "Muskan",
                      time: "Today , 07:31",
                      colors: Colors.transparent,
                    ),
                  ],
                ),
                //call section
                Column(
                  children: [
                    callContainer(
                      image:
                          "https://scontent.cdninstagram.com/v/t51.2885-19/448650259_1653516318796875_2167080890974738043_n.jpg?stp=dst-jpg_s100x100&_nc_cat=110&ccb=1-7&_nc_sid=3fd06f&_nc_ohc=J9tGeKSelcQQ7kNvgGBUni7&_nc_ad=z-m&_nc_cid=2034&_nc_ht=scontent.cdninstagram.com&oh=00_AYCQ7sKly3m00hZn-dSHiUAks6J_n2K8LarQwgkmE8vaQA&oe=667E0477",
                      name: "Anya",
                      time: "Yesterday , 23:15",
                    ),
                    callContainer(
                        image:
                            "https://scontent.cdninstagram.com/v/t51.2885-19/369340118_973402377248165_7901167074548085526_n.jpg?stp=dst-jpg_s100x100&_nc_cat=110&ccb=1-7&_nc_sid=3fd06f&_nc_ohc=zjYL7fs9kjAQ7kNvgHG2xLk&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.cdninstagram.com&oh=00_AYAlOTJSFuhs8-kbiRwWkrg22cpKjZWULfjYa9JHMI5Z4g&oe=667E05EC",
                        name: "Shivam",
                        time: "Yesterday ,11:15",),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
