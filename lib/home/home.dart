
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_savior/cubit/cubit.dart';
import 'package:kids_savior/cubit/states.dart';


class Home extends StatelessWidget {

  var childlist = [
    {
      "name":"Amira Abdullah",
      "images":"https://www.photosmix.com/wp-content/uploads/2023/01/%D8%B5-%D8%A3%D8%B1%D9%88%D8%B9-%D8%B5%D9%88%D8%B1-%D8%A3%D8%B7%D9%81%D8%A7%D9%84-%D8%A3%D9%88%D9%84%D8%A7%D8%AF-%D8%AD%D9%84%D9%88%D9%8A%D9%86-1.jpg",
    },
    // {
    //   "name":"Adam Abdullah",
    //   "images":"https://www.eqrae.com/wp-content/uploads/2020/03/23-96.jpg",
    // },
    {
      "images":"https://twice.ma/wp-content/uploads/2022/10/1665517891_795_%D8%B5%D9%88%D8%B1-%D8%A7%D8%B7%D9%81%D8%A7%D9%84-%D8%AD%D9%84%D9%88%D9%8A%D9%86-2022-%D8%A7%D8%B7%D9%81%D8%A7%D9%84-%D8%A8%D9%8A%D8%A8%D9%8A-%D8%AD%D9%84%D9%88%D9%8A%D9%86-%D8%AC%D8%AF%D8%A7.jpg"
    },
    {
      "images":"https://nicee.cc/wp-content/uploads/2017/08/2484.png"
    },
    {
      "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBgYgUf9ow_qsvc9Nqi5DAukZ3t1rCUuzgPUdFd5KqWpp3fIZtPQv49f3J-Lj1rYvhQRQ&usqp=CAU"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var home = AppCubit.get(context).homeModel;
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){
        if (state is SuccessHomeDataState)
          {
            print('yeeees');
            print(state.homeModel.message);
          }
        else if (state is LoadingHomeDataState)
          {
            print('loading');
          }
        else {
          print('nooooooooo');
        }
      },
      builder: (context,state){
        print(state);
        print(home);
        return Scaffold(
          body: SafeArea(
            child: ConditionalBuilder(
              condition: state is SuccessHomeDataState,
              fallback: (context) => Center(child: CircularProgressIndicator(),),
              builder: (context) => ListView.builder(
                shrinkWrap: true,
                  itemCount: childlist.length,
                  //AppCubit.get(context).homeModel!.data.length,
                  itemBuilder: (context , i) {
                    return Column(
                      children: [
                        Container(
                          height: 180,
                          width: double.infinity,
                          margin: EdgeInsetsDirectional.only(
                              start: 16, top: 0, end: 16, bottom: 0),
                          decoration: BoxDecoration(
                            image:  DecorationImage(image: NetworkImage(
                              "${childlist[i]['images']}",
            //AppCubit.get(context).homeModel!.data[0].image
                             // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGKikGuo9ITvCvFo497pdDc5AaWYU_qZy7lA&usqp=CAU"
                                ),fit: BoxFit.fill),
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
