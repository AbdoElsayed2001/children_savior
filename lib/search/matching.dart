import 'package:flutter/material.dart';

class Matching extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            size: 26,
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Matching",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top : 20.0,bottom: 20),
            child: Text(
              "Your info is matching with this child",
            style: TextStyle(  fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black),
            ),
          ),
      Center(
        child: Column(
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
              color: Colors.red),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 45,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU",
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
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: const Offset(3, 5),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/phone-call.png",
                      height: 30,
                      width: 30,
                    ),
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
                  onPressed: () {
                    Navigator.of(context).pushNamed("about");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: const Offset(3, 5),
                        ),
                      ],
                    ),
                    child: Image.asset(

                      "assets/images/about-xxl.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ],
    ),
      )
        ],
      ),
    );
  }

}