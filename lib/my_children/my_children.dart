

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';

class My_Children extends StatefulWidget {

  @override
  State<My_Children> createState() => _My_ChildrenState();
}

class _My_ChildrenState extends State<My_Children> {
  var childlist = [
    {
      "name":"Amira Abdullah",
      "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU",
      "lost":"true"
    },
    {
      "name":"Adam Abdullah",
      "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTidsZ60ZDKPik5Smpcm4p_SJGy1YD1Akq8Q1myW_87W3NYSPPvXSu2vUmZvjg6GKQEnI&usqp=CAU",
    }
  ];

  bool lost = true;
  bool back = false;

  bool lost2 = true;
  bool back2 = false;

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
            body: ConditionalBuilder(
              condition: AppCubit.get(context).myChildrenModel != null ,
              fallback: (context) => Center(child: CircularProgressIndicator(),),
              builder: (context) =>  ListView( children: [
                Center(child: Text("You dont have children"))
              //   Card(
              //   elevation: 10,
              //   margin: EdgeInsetsDirectional.only(
              //       start: 16, top: 8, end: 16, bottom: 8),
              //   child: Row(
              //     children: [
              //       const SizedBox(
              //         width: 12,
              //       ),
              //       CircleAvatar(
              //         radius: 35,
              //         backgroundImage:
              //         NetworkImage(
              //           //"${childlist[i]['images']}",
              //           // AppCubit.get(context).myChildrenModel!.data[0].image
              //           "https://www.eqrae.com/wp-content/uploads/2020/03/23-96.jpg"
              //         ),
              //       ),
              //       const SizedBox(
              //         width: 12,
              //       ),
              //       Expanded(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.end,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               // AppCubit.get(context).myChildrenModel!.data[0].name,
              //               //"${childlist[i]['name']}",
              //               "Nour Abdullah",
              //               style: Theme.of(context).textTheme.bodyText1,),
              //             TextButton(
              //               onPressed: (){
              //                 Navigator.of(context).pushNamed("child_details");
              //               },
              //               child: Text("details..",
              //                 style: Theme.of(context).textTheme.bodyText2,),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Column(
              //         children: [
              //           const SizedBox(
              //             height: 8,
              //           ),
              //           ElevatedButton(
              //             onPressed: () {
              //               setState(() {
              //                 lost = !lost;
              //                 back = !back;
              //               });
              //             },
              //             child: Text(
              //               "Lost",
              //             ),
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all(
              //                   lost == true ? Colors.red : Colors.grey
              //               ),
              //               shape: MaterialStateProperty.all(StadiumBorder()),
              //             ),
              //           ),
              //           ElevatedButton(
              //             onPressed: () {
              //               setState(() {
              //                 lost = !lost;
              //                 back = !back;
              //                 Fluttertoast.showToast(
              //                     msg: 'Congratulations',
              //                     toastLength: Toast.LENGTH_SHORT,
              //                     gravity: ToastGravity.BOTTOM,
              //                     timeInSecForIosWeb: 1,
              //                     backgroundColor: Colors.green,
              //                     textColor: Colors.white,
              //                     fontSize: 16.0
              //                 );
              //               });
              //             },
              //             child: Text(
              //               "Back",
              //             ),
              //             style: ButtonStyle(
              //               backgroundColor:
              //               MaterialStateProperty.all(
              //                   back == true ? Colors.green : Colors.grey
              //               ),
              //               shape: MaterialStateProperty.all(StadiumBorder()),
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         width: 16,
              //       ),
              //     ],
              //   ),
              // ) ,
                // Card(
                //   elevation: 10,
                //   margin: EdgeInsetsDirectional.only(
                //       start: 16, top: 8, end: 16, bottom: 8),
                //   child: Row(
                //     children: [
                //       const SizedBox(
                //         width: 12,
                //       ),
                //       CircleAvatar(
                //         radius: 35,
                //         backgroundImage:
                //         NetworkImage(
                //           //"${childlist[i]['images']}",
                //           // AppCubit.get(context).myChildrenModel!.data[0].image
                //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS_zLH8I0DFX2oFlpo3_nQLiS8Uib4u05AmQ&usqp=CAU"
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 12,
                //       ),
                //       Expanded(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.end,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               // AppCubit.get(context).myChildrenModel!.data[0].name,
                //               //"${childlist[i]['name']}",
                //               "Adam Abdullah",
                //               style: Theme.of(context).textTheme.bodyText1,),
                //             TextButton(
                //               onPressed: (){
                //                 Navigator.of(context).pushNamed("child_details");
                //               },
                //               child: Text("details..",
                //                 style: Theme.of(context).textTheme.bodyText2,),
                //             ),
                //           ],
                //         ),
                //       ),
                //       Column(
                //         children: [
                //           const SizedBox(
                //             height: 8,
                //           ),
                //           ElevatedButton(
                //             onPressed: () {
                //               setState(() {
                //                 lost2 = !lost2;
                //                 back2 = !back2;
                //               });
                //             },
                //             child: Text(
                //               "Lost",
                //             ),
                //             style: ButtonStyle(
                //               backgroundColor: MaterialStateProperty.all(
                //                   lost2 == true ? Colors.red : Colors.grey
                //               ),
                //               shape: MaterialStateProperty.all(StadiumBorder()),
                //             ),
                //           ),
                //           ElevatedButton(
                //             onPressed: () {
                //               setState(() {
                //                 lost2 = !lost2;
                //                 back2 = !back2;
                //               });
                //             },
                //             child: Text(
                //               "Back",
                //             ),
                //             style: ButtonStyle(
                //               backgroundColor:
                //               MaterialStateProperty.all(
                //                   back2 == true ? Colors.green : Colors.grey
                //               ),
                //               shape: MaterialStateProperty.all(StadiumBorder()),
                //             ),
                //           ),
                //         ],
                //       ),
                //       const SizedBox(
                //         width: 16,
                //       ),
                //     ],
                //   ),
                // ) ,
              ],
                //itemCount:  childlist.length,
                //AppCubit.get(context).myChildrenModel!.data.length,
               // itemBuilder: (context, i) {
                  //return

              ),
            ),
          );
  }
}
