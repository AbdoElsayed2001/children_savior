//import 'dart:html';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kids_savior/cubit/cubit.dart';
import 'package:kids_savior/cubit/states.dart';
import 'package:kids_savior/models/home_model.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          body: SafeArea(
            child: ConditionalBuilder(
              condition: AppCubit.get(context).homeModel != null ,
              fallback: (context) => Center(child: CircularProgressIndicator(),),
              builder: (context) => ListView.builder(
                itemCount: AppCubit.get(context).homeModel!.data!.length ,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                        margin: EdgeInsetsDirectional.only(
                            start: 16, top: 0, end: 16, bottom: 0),
                        decoration: BoxDecoration(
                          image:  DecorationImage(image: NetworkImage(AppCubit.get(context).homeModel!.data![0].image?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU"),fit: BoxFit.fill),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.shade400,
                          //     spreadRadius: 1,
                          //     blurRadius: 5,
                          //     offset: const Offset(5, 0),
                          //   ),
                          // ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                          ),
                          // color: Colors.blue
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, top: 0, right: 0, bottom: 16),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  fixedSize:
                                  MaterialStateProperty.all(Size.fromHeight(50)),
                                  // backgroundColor:
                                  //     MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20)))),
                                  elevation: MaterialStateProperty.all(5),
                                ),
                                onPressed: () {},
                                child: Container(
                                  // decoration: BoxDecoration(
                                  //   boxShadow: [
                                  //     BoxShadow(
                                  //       color: Colors.grey.shade400,
                                  //       spreadRadius: 1,
                                  //       blurRadius: 25,
                                  //       offset: const Offset(3, 5),
                                  //     ),
                                  //   ],
                                  // ),
                                  child: Image.asset(
                                    "assets/images/phone-call.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 0, right: 16, bottom: 16),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  fixedSize:
                                  MaterialStateProperty.all(Size.fromHeight(50)),
                                  // backgroundColor:
                                  //     MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(20)))),
                                  elevation: MaterialStateProperty.all(5),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed("about");
                                },
                                child: Container(
                                  // decoration: BoxDecoration(
                                  //   boxShadow: [
                                  //     BoxShadow(
                                  //       color: Colors.grey.shade400,
                                  //       spreadRadius: 1,
                                  //       blurRadius: 25,
                                  //       offset: const Offset(3, 5),
                                  //     ),
                                  //   ],
                                  //
                                  // ),
                                  child: Image.asset(
                                    "assets/images/about-xxl.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
