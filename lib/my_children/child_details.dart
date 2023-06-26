import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../search/search_cubit.dart';
import '../search/search_states.dart';

class Child_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

        create: (BuildContext context) => SearchCubit(),
        child: BlocConsumer<SearchCubit, SearchStates>(
          listener: (context, state) {
            if (state is SearchSuccessState) {
              print('success');
            }
            else if (state is SearchLoadingState) {
              Fluttertoast.showToast(
                  msg: 'The child is being deleted',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.amber,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
            else {
              Fluttertoast.showToast(
                  msg: 'Deleted successfully',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
              Navigator.of(context).pop();
            }
          },
          builder: (context, state) {
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
            "Child details",
            style: Theme.of(context).textTheme.headline6,
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
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS_zLH8I0DFX2oFlpo3_nQLiS8Uib4u05AmQ&usqp=CAU"),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,
            // color: Colors.blue,
            ))
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
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,//color: Colors.blue,
            ))
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
            text: "Adam Abdulla",
            style:Theme.of(context).textTheme.bodyText1,
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
            icon: Icon(Icons.edit,//color: Colors.blue,
            ),
            ),
            ),
            ListTile(
            title: RichText(
            text: TextSpan(
            text: "Mansoura",
            style: Theme.of(context).textTheme.bodyText1,
            ),
            ),
            leading: Icon(
            Icons.location_on_outlined,
            //color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
            onPressed: (){
            Navigator.of(context).pushNamed("edit_name");
            },
            icon: Icon(Icons.edit,//color: Colors.blue,
            ),
            ),
            ),
            ListTile(
            title: RichText(
            text: TextSpan(
            text: "5 years old",
            style: Theme.of(context).textTheme.bodyText1,
            ),
            ),
            leading: Icon(
            Icons.date_range,
            // color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
            onPressed: (){
            Navigator.of(context).pushNamed("edit_name");
            },
            icon: Icon(Icons.edit,//color: Colors.blue,
            ),
            ),
            ),
            ListTile(
            title: RichText(
            text: TextSpan(
            text: "01091046720",
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
            Navigator.of(context).pushNamed("edit_name");
            },
            icon: Icon(Icons.edit,//color: Colors.blue,
            ),
            ),
            ),
            ListTile(
            title: RichText(
            text: TextSpan(
            text: "Male",
            style: Theme.of(context).textTheme.bodyText1,
            ),
            ),
            leading: Icon(
            Icons.boy,
            //color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
            onPressed: (){
            Navigator.of(context).pushNamed("edit_name");
            },
            icon: Icon(Icons.edit,//color: Colors.blue,
            ),
            ),
            ),
            Expanded(
            child: ListTile(
            title: RichText(
            text: TextSpan(
            text: "Bracelet",
            style: Theme.of(context).textTheme.bodyText1,
            ),
            ),
            leading: Icon(
            Icons.watch,
            //color: Colors.black,
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
            onPressed: (){},
            icon: Icon(Icons.edit,//color: Colors.blue,
            ),
            ),
            ),
            ),
            Center(
            child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConditionalBuilder(
            condition: state is! SearchLoadingState,
            fallback: (context)=> Center(child: CircularProgressIndicator()),
            builder : (context) => ElevatedButton(
            style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
            fixedSize: MaterialStateProperty.all(Size(130, 45)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            ),
            ),
            ),
            onPressed: (){
            SearchCubit.get(context).search(
            image: null,
            );
            },
            child: Text("Delete Child"),
            ),
            ),
            )
            )]
            ),
            );
          },
        )


    );
  }

}