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
                  radius: 65,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSufOKKnOlUtMAaD1JNvT56vVKFN6zNhAHZbf5T1bxLh1CDPnjOpRlXyroHTPOh9vwczXs&usqp=CAU"
                      ),
                ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,))
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
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              leading: Icon(
                Icons.account_circle_outlined,
                //color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("edit_name");
                },
                  icon: Icon(Icons.edit,),
              ),
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "ahmed@gmail.com",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              leading: Icon(
                Icons.email_outlined,
                //color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("edit_email");
                },
                icon: Icon(Icons.edit,),
              ),
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "01020304102",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              leading: Icon(
                Icons.phone,
                //color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("edit_phone");
                },
                icon: Icon(Icons.edit,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
