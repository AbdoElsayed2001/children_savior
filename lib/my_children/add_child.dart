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
        leading: IconButton(
          icon: Icon(
            size: 26,
            Icons.arrow_back,
            //color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Add child",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        radius: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image.asset("assets/images/picture.png"),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 35,))
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
                          child: Image.asset("assets/images/picture.png"),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 35,))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Name",style: Theme.of(context).textTheme.caption,), border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Address"), border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Age"), border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Phone"), border: OutlineInputBorder()),
                keyboardType: TextInputType.phone,
              ),
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "Connect Location",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.bluetooth,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
              child: Text("Gender",style: Theme.of(context).textTheme.bodyText1,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
              child: RadioListTile(
                contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.all(0),EdgeInsets.all(0) , 0),
                title: Text("Male",style:Theme.of(context).textTheme.caption,),
                value: "male",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
              child: RadioListTile(
                contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.all(0),EdgeInsets.all(0) , 0),
                title: Text("Female",style: Theme.of(context).textTheme.caption,),
                value: "female",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
                    fixedSize: MaterialStateProperty.all(Size(130, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Add"),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}