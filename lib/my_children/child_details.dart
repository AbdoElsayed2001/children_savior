import 'package:flutter/material.dart';

class Child_details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          "Child details",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.center,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children : [
                    CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: 55,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU"),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,color: Colors.blue,))
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children : [
                    CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: 55,
                      backgroundImage: NetworkImage("https://www.elbalad.news/Upload/libfiles/950/2/630.jpg"),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,color: Colors.blue,))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                text: "Amira Ahmed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
            leading: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed("edit_name");
              },
              icon: Icon(Icons.edit,color: Colors.blue,),
            ),
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                text: "Mansoura",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
            leading: Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed("edit_name");
              },
              icon: Icon(Icons.edit,color: Colors.blue,),
            ),
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                text: "8 years old",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
            leading: Icon(
              Icons.date_range,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed("edit_name");
              },
              icon: Icon(Icons.edit,color: Colors.blue,),
            ),
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                text: "01020304050",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
            leading: Icon(
              Icons.phone,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed("edit_name");
              },
              icon: Icon(Icons.edit,color: Colors.blue,),
            ),
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                text: "Female",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
            leading: Icon(
              Icons.girl,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed("edit_name");
              },
              icon: Icon(Icons.edit,color: Colors.blue,),
            ),
          ),
          Expanded(
            child: ListTile(
              title: RichText(
                text: TextSpan(
                  text: "GPS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
              ),
              leading: Icon(
                Icons.watch,
                color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.bluetooth,color: Colors.blue,),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(150, 45)),
                ),
                onPressed: () {},
                child: Text("Delete Child"),
              ),
            ),
          ),
        ],
      ),
    );
  }

}