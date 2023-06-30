import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vortex/Models/ChatUsers.dart';

class HomeView extends StatelessWidget {
  List<ChatUsers> ChatUserlar = [
    ChatUsers(
      name: "person",
      messageText: "person",
      imageURL:
          "https://img.freepik.com/free-psd/portrait-young-man-with-afro-dreadlocks-hairstyle_23-2150164141.jpg?w=996&t=st=1688122114~exp=1688122714~hmac=46d7adced2aeb1eb5cabd786d0c897a95158fdbbb7f8143399914176978d93e0",
      token: "500",
    ),
    ChatUsers(
      name: "person",
      messageText: "person",
      imageURL:
          "https://img.freepik.com/free-psd/portrait-young-man-with-afro-dreadlocks-hairstyle_23-2150164141.jpg?w=996&t=st=1688122114~exp=1688122714~hmac=46d7adced2aeb1eb5cabd786d0c897a95158fdbbb7f8143399914176978d93e0",
      token: "120",
    ),
    ChatUsers(
      name: "person",
      messageText: "person",
      imageURL:
          "https://img.freepik.com/free-psd/portrait-young-man-with-afro-dreadlocks-hairstyle_23-2150164141.jpg?w=996&t=st=1688122114~exp=1688122714~hmac=46d7adced2aeb1eb5cabd786d0c897a95158fdbbb7f8143399914176978d93e0",
      token: "59",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 4.w),
                      padding: EdgeInsets.all(1.w),
                      width: 14.w,
                      decoration: BoxDecoration(
                        color: Color(0xFF28403D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Color.fromARGB(255, 255, 193, 59),
                        size: 12.w,
                      )),
                  Container(
                    width: 50.w,
                    decoration: BoxDecoration(
                      //color: Color(0xFF28403D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Chatly",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sora(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(
                              255, 255, 193, 59), //! Container rengi
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 4.w),
                    padding: EdgeInsets.all(1.w),
                    width: 14.w,
                    decoration: BoxDecoration(
                      color: Color(0xFF28403D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      "assets/coin.svg",
                      width: 12.w,
                      height: 12.w,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Mesaj Gönder",
                      style: GoogleFonts.sora(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF455559), //! Container rengi
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 10.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF3D5A73).withOpacity(0.2),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 241, 210, 71),
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Token Ekle",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 241, 210, 71)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFF28403D),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          cursorColor: Colors.white,
                          style: GoogleFonts.sora(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 241, 210, 71),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(2.w),
                          width: 10.w,
                          height: 10.w,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/coin_in_hand.svg",
                                width: 10.w,
                                height: 10.w,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "0",
                                style: GoogleFonts.sora(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 6.w,
              ),
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xFF28403D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: AnimationLimiter(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: ChatUserlar.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        delay: Duration(milliseconds: 300),
                        child: SlideAnimation(
                          duration: Duration(milliseconds: 2500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          verticalOffset: -250,
                          child: ScaleAnimation(
                              duration: Duration(milliseconds: 1500),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 16, right: 16, top: 16),
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 10, bottom: 10),
                                width: 16.w,
                                height: 23.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFF182625),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 18.w,
                                      height: 19.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Colors.black38,
                                      ),
                                      padding: EdgeInsets.all(1.w),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black38,
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                          ChatUserlar[index].imageURL,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Container(
                                      width: 40.w,
                                      height: 23.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        //color: Colors.black38,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ChatUserlar[index].name,
                                            style: GoogleFonts.sora(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                "assets/coin.svg",
                                                width: 7.w,
                                                height: 7.w,
                                              ),
                                              Text(
                                                ChatUserlar[index].token,
                                                style: GoogleFonts.sora(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 25.w,
                                        height: 15.w,
                                        decoration: BoxDecoration(
                                          color: Colors.black38,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


/*
Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                    width: 16.w,
                    height: 23.w,
                    decoration: BoxDecoration(
                      color: Color(0xFF28403D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            ChatUserlar[index].imageURL,
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          width: 50.w,
                          height: 23.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black38,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ChatUserlar[index].name,
                                style: GoogleFonts.sora(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/coin.svg",
                                    width: 7.w,
                                    height: 7.w,
                                  ),
                                  Text(
                                    ChatUserlar[index].token,
                                    style: GoogleFonts.sora(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 25.w,
                          height: 15.w,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        )
                      ],
                    ),
                  );
*/