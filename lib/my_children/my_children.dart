

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';

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
    return BlocConsumer <AppCubit,AppStates> (
        listener: (context,state){},
    builder: (context,state){
          return  Scaffold(
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
              builder: (context) =>  ListView.builder(
                itemCount:  AppCubit.get(context).myChildrenModel!.data.length,
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 10,
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
                              AppCubit.get(context).myChildrenModel!.data[0].image
                             // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU"
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
                              Text(
                                AppCubit.get(context).myChildrenModel!.data[0].name,
                                //"Amira Ahmed",
                                style: Theme.of(context).textTheme.bodyText1,),
                              TextButton(
                                onPressed: (){
                                  Navigator.of(context).pushNamed("child_details");
                                },
                                child: Text("details..",
                                  style: Theme.of(context).textTheme.bodyText2,),
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
            ),
          );
    },
    );
  }
}
