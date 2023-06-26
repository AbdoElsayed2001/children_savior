import 'package:flutter/material.dart';
import 'package:kids_savior/home/pageView_model.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget{
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final number = '+201091046720';
  final controller = OnBoardingController();

  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            size: 26,
            Icons.arrow_back,
           //  color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "About",
          style: Theme.of(context).textTheme.headline6,
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
            child: Text("Name:",style: Theme.of(context).textTheme.bodyText1,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text("Nour Abdullah",style: Theme.of(context).textTheme.caption,),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Address:",style: Theme.of(context).textTheme.bodyText1,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text("Mansoura",style: Theme.of(context).textTheme.caption,),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Phone:",style: Theme.of(context).textTheme.bodyText1,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("$number",style: Theme.of(context).textTheme.caption,),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 20),),
                  fixedSize: MaterialStateProperty.all(Size(130, 45)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  ),
                ),
                onPressed: () {
                  launch('tel://$number');
                },
                child:  Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call,size: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
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