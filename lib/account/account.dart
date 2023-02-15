import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children : [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6OGYC2nVe-IlmLcuv1TP2TOO2NPZ473c4JQ&usqp=CAU",
                  ),
                ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,color: Colors.blue,))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "Ahmed Mohamed",
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
                  text: "01020304102",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){},
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
                      color: Colors.black),
                ),
              ),
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.edit,color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
