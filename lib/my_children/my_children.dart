

import 'package:flutter/material.dart';

class My_Children extends StatelessWidget {

  // var childlist = [
  //   {
  //     "name":"Amira Ahmed",
  //     "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU",
  //   },
  //   {
  //     "name":"Kareem Ahmed",
  //     "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTidsZ60ZDKPik5Smpcm4p_SJGy1YD1Akq8Q1myW_87W3NYSPPvXSu2vUmZvjg6GKQEnI&usqp=CAU",
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("add_child");
        },
        child: Icon(Icons.add),
       // backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) {
          return Card(
            elevation: 20,
            margin: EdgeInsetsDirectional.only(
                start: 16, top: 8, end: 16, bottom: 8),
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage:
                  NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU"
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amira Ahmed",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed("child_details");
                        },
                        child: Text("details..",
                          style: TextStyle(fontSize: 14, ),),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Lost",
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Done",
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
