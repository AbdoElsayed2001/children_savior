class Model {
  String image;


  Model({
    required this.image,
  });
}

class OnBoardingController {
  int currentPage = 0;
  List<Model> model = [
    Model(
        image: 'https://www.eqrae.com/wp-content/uploads/2020/03/23-96.jpg',),
    Model(
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv7wXbYT3HAuWiPvHt0vdIaSZEQRVeCl-ONLSOTobwVTzBN3uqUeIgP6BV92gzQhUR_5Y&usqp=CAU',),
    Model(
        image: 'https://i0.wp.com/www.newphotodownload.info/wp-content/uploads/2019/11/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B7%D9%81%D8%A7%D9%84-%D8%AC%D9%85%D9%8A%D9%84%D8%A9-13.jpg?ssl=1',),
    Model(
      image: 'https://i0.wp.com/www.newphotodownload.info/wp-content/uploads/2019/11/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B7%D9%81%D8%A7%D9%84-%D8%AC%D9%85%D9%8A%D9%84%D8%A9-13.jpg?ssl=1',),
  ];
}