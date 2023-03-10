import 'package:flutter/material.dart';
import 'package:kids_savior/home/pageView_model.dart';

class About extends StatefulWidget{
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final controller = OnBoardingController();

  late TabController _tabController;

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
          "About",
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 300,
          width: double.infinity,
          child: PageView(
          children: List.generate(
              controller.model.length,
                  (index) => Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      controller.model[controller.currentPage].image == null ? Center(child: CircularProgressIndicator(color: Colors.blue),) :  Image.network(
                        controller.model[controller.currentPage].image,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                IconButton(onPressed: (){
                                  if (controller.currentPage + controller.model.length >
                                      (controller.model.length )) {
                                    controller.currentPage--;
                                    setState(() {});
                                  }
                                },
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Colors.white,
                                ),
                                Expanded(child: SizedBox()),
                                IconButton(onPressed: (){
                                  if (controller.currentPage <
                                      (controller.model.length - 1)) {
                                    controller.currentPage++;
                                    setState(() {});
                                  }
                                },
                                  icon: Icon(Icons.arrow_forward_ios),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                                controller.model.length,
                                    (index) => Padding(
                                  padding:
                                  const EdgeInsetsDirectional
                                      .only(end: 1),
                                  child: CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color(index ==
                                        controller.currentPage
                                        ? 0xff2196F3
                                        : 0xffD6D6D6),
                                  ),
                                )),
                          ),
                          const SizedBox(height: 8,),
                        ],
                      ),
                    ],
                  ),
          ),
      ),
        ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Information:",style: TextStyle(  fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text("i found this child in Ahmed Maher Street she say her name is Amira if anyone know her please call me"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Location:",style: TextStyle(  fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text("Mansoura,Ahmed Maher Street"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Phone:",style: TextStyle(  fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("01020304050"),
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
                child:  Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Call",style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 16,),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}