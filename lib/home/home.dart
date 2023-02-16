import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsetsDirectional.only(
                      start: 16, top: 8, end: 16, bottom: 0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(5, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      color: Colors.blue),
                  child: Center(
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                        "https://3.bp.blogspot.com/-_oofQiLjaI8/W2mouhPZXkI/AAAAAAABXj0/mRiOedr1bFUIi5MLZfglp53i1cEydHy7QCLcBGAs/s1600/13.jpg.4cbe499c45618f176d5aea2b8d599da2.jpg",
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 0, right: 0, bottom: 16),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size.fromHeight(50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20)))),
                            elevation: MaterialStateProperty.all(5),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            "assets/image/phone-call.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, top: 0, right: 16, bottom: 16),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size.fromHeight(50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            elevation: MaterialStateProperty.all(5),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            "assets/image/about-xxl.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
