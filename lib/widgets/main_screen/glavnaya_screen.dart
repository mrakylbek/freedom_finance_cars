import 'package:ff_cars/widgets/main_screen/car_info.dart';
import 'package:flutter/material.dart';
import 'package:ff_cars/resources/app_images.dart';

import 'car.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class Glavnaya extends StatefulWidget {
  Glavnaya({Key? key}) : super(key: key);

  @override
  State<Glavnaya> createState() => _GlavnayaState();
}

class _GlavnayaState extends State<Glavnaya> {
  final _movies = [
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Turning Red',
      time: 'March 10, 2022',
      description: 'Thirteen-year-old Mei is experiencing the'
          ' awkwardness of being a teenager with a twist – when she'
          ' gets too excited, she transforms into a giant red panda.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Spider-Man: No Way Home',
      time: 'December 15, 2021',
      description:
      'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'The Adam Project',
      time: 'March 11, 2022',
      description:
      'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Blacklight',
      time: 'February 10, 2022',
      description:
      'Travis Block is a shadowy Government agent who specializes in removing operatives whose covers have been exposed. He then has to uncover a deadly conspiracy within his own ranks that reaches the highest echelons of power.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Turning Red',
      time: 'March 10, 2022',
      description: 'Thirteen-year-old Mei is experiencing the'
          ' awkwardness of being a teenager with a twist – when she'
          ' gets too excited, she transforms into a giant red panda.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Spider-Man: No Way Home',
      time: 'December 15, 2021',
      description:
      'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'The Adam Project',
      time: 'March 11, 2022',
      description:
      'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Blacklight',
      time: 'February 10, 2022',
      description:
      'Travis Block is a shadowy Government agent who specializes in removing operatives whose covers have been exposed. He then has to uncover a deadly conspiracy within his own ranks that reaches the highest echelons of power.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Turning Red',
      time: 'March 10, 2022',
      description: 'Thirteen-year-old Mei is experiencing the'
          ' awkwardness of being a teenager with a twist – when she'
          ' gets too excited, she transforms into a giant red panda.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Spider-Man: No Way Home',
      time: 'December 15, 2021',
      description:
      'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'The Adam Project',
      time: 'March 11, 2022',
      description:
      'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future.',
    ),
    Movie(
      imageName: AppImages.movie_peaky,
      title: 'Blacklight',
      time: 'February 10, 2022',
      description:
      'Travis Block is a shadowy Government agent who specializes in removing operatives whose covers have been exposed. He then has to uncover a deadly conspiracy within his own ranks that reaches the highest echelons of power.',
    ),
  ];

  var _filteredMovies = <Movie>[];

  var car_1 = Car(city: 'Almaty', brand: 'Audi', model: 'A6', price: '21 000 000', body: 'седан',
      engine_volum: '2.5', mileage: '70 000', transmission: 'автомат', steering_wheel: 'слева',
      colour: 'белый', drive_wheel: 'полный привод', engine: 'бензин', production_country: 'Россия',
      production_year: '2016', imageName: 'assets/images/img_1.png');

  var _cars = [];

  var _filteredCars = <Car>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
    print(_filteredMovies.length);
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: _filteredMovies.length + 1,
      itemExtent: ((MediaQuery
          .of(context)
          .size
          .width - 50) / 2) + 30,
      itemBuilder: (BuildContext context, int index) {
        int i = 0;
        if (index > 0) i = index - 1;
        var movie = _movies[i];
        // var car = _cars[i];
        if (_filteredMovies.isNotEmpty) movie = _filteredMovies[i];
        // if (_filteredCars.isNotEmpty) car = _filteredCars[i];
        return index == 0 ? categories(context) : cars(movie, context);
        // return index == 0 ? categories() : cars(car);
      },
    );
  }

  Widget cars(Movie movie, BuildContext context) {
    // Widget cars(Car car, BuildContext context) {
    var text = '2020 г., седан, 1.6л, бензин, с пробегом 70000 км, автомат, белый цвет, передний привод, производство России';
    text = car_1.production_year + 'г., ' + car_1.body + ', ' + car_1.engine_volum + 'л, ' + car_1.engine + ', с пробегом ' +
        car_1.mileage + ' км, ' + car_1.transmission + ', ' + car_1.colour + ' цвет, ' + car_1.drive_wheel +
        ', производство: ' + car_1.production_country;
    // text = car.production_year + ', ' + car.body + ', ' + car.engine_volum +
    //     'л, ' + car.engine + ', с пробегом ' + car.mileage + ' км, ' + car.transmission + ', ' +
    //     car.colour + ', ' + car.drive_wheel + ', производство ' + car.production_country;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black.withOpacity(0.2)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 5))
              ],
            ),
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Audi A6', style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0BAE15)),),
                      Text('18 000 000 тг', style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image(
                      height: 100,
                      image: AssetImage(movie.imageName),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   movie.title,
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          //   maxLines: 2,
                          //   overflow: TextOverflow.ellipsis,
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          // Text(
                          //   movie.time,
                          //   style: TextStyle(color: Colors.grey),
                          //   maxLines: 1,
                          //   overflow: TextOverflow.ellipsis,
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Text(
                          //   movie.description,
                          //   maxLines: 2,
                          //   overflow: TextOverflow.ellipsis,
                          //   style: TextStyle(fontWeight: FontWeight.w400),
                          // ),
                          Text(
                            text,
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/car_info',
                arguments: car_1,);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget categories(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 50),
      padding: EdgeInsets.all(10),
      height: ((MediaQuery.of(context).size.width - 50) / 2) + 20,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {
                      print('Купить Купить Купить ');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.directions_car_outlined),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Купить'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.directions_car_outlined),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Арендовать'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.directions_car_outlined),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Новые'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.price_change),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Оценка'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.departure_board_sharp),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Запчасти'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.car_repair),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Ремонт'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.credit_card_rounded),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Штрафы'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                height: (MediaQuery
                    .of(context)
                    .size
                    .width - 50) / 4,
                color: Colors.white,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.devices_other_outlined),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Прочее'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
