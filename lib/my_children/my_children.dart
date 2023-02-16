import 'package:flutter/material.dart';

class My_Children extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("add_child");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) {
          return Container(
            height: 120,
            margin: EdgeInsetsDirectional.only(
                start: 16, top: 8, end: 16, bottom: 8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(-2, 0),
                )
              ],
              borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
              // color: Colors.blue
            ),
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
                  child: Text(
                    "Amira",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
