import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_weather_bloc/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: Color(0xffffab40)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '📍 Bethuadahari',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Good Morning",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('assets/1.png'),
                    Center(
                      child: Text(
                        "21°C",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Center(
                      child: Text(
                        "THUNDERSTORM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "Friday 16:00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/11.png", scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunrise",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(height: 3,),
                                Text("5:34 AM", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700
                                ),),
                              ],
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Image.asset("assets/12.png", scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunset",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(height: 3,),
                                Text("5:34 PM", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                ),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/13.png", scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunrise",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(height: 3,),
                                Text("5:34 AM", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                ),),
                              ],
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Image.asset("assets/14.png", scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunset",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(height: 3,),
                                Text("5:34 PM", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                ),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
