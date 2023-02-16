import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Child extends StatefulWidget{

  @override
  State<Add_Child> createState() => _Add_ChildState();
}

class _Add_ChildState extends State<Add_Child> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
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
          "Add child",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
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
                        radius: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image.asset("assets/image/picture.png"),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 35,color: Colors.blue,))
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
                        radius: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image.asset("assets/image/picture.png"),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 35,color: Colors.blue,))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Name"), border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Address"), border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Age"), border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Phone"), border: OutlineInputBorder()),
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 8),
              child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),
            ),
            RadioListTile(
              contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.all(0),EdgeInsets.all(0) , 0),
              title: Text("Male",),
              value: "male",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.all(0),EdgeInsets.all(0) , 0),
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(150, 45)),
                ),
                onPressed: () {},
                child: Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}