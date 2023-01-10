import 'package:flutter/material.dart';

import 'car.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({Key? key}) : super(key: key);

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  @override
  void initState() {
    super.initState();
  }

  var style_options = TextStyle(fontSize: 14, color: Colors.grey);
  var style_text = TextStyle(fontSize: 14, color: Colors.black);

  var like = Colors.white;

  void like_tap() {
    if (like == Colors.white)
      like = Colors.red;
    else
      like = Colors.white;
    setState(() {});
  }

  // late Car car;

  var car = Car(
      city: 'Almaty',
      brand: 'Audi',
      model: 'A6',
      price: '21 000 000',
      body: 'седан',
      engine_volum: '2.5',
      mileage: '70 000',
      transmission: 'автомат',
      steering_wheel: 'слева',
      colour: 'белый',
      drive_wheel: 'полный привод',
      engine: 'бензин',
      production_country: 'Россия',
      production_year: '2016',
      imageName: 'assets/images/img_1.png');

  @override
  Widget build(BuildContext context) {
    // car = ModalRoute.of(context)!.settings.arguments as Car;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // title: Text('Second Route'),
        actions: [
          IconButton(
            onPressed: () {
              like_tap();
            },
            icon: Icon(
              Icons.heart_broken,
              color: like,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  // margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            car.brand +
                                ' ' +
                                car.model +
                                ' ' +
                                car.production_year,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            car.price,
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Gorod',
                            style: style_options,
                          )),
                          Expanded(child: Text(car.city, style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Kuzov',
                            style: style_options,
                          )),
                          Expanded(child: Text(car.body, style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Obem dvigatelya',
                            style: style_options,
                          )),
                          Expanded(
                              child: Text(
                                  car.engine_volum + '(' + car.engine + ')',
                                  style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Probeg',
                            style: style_options,
                          )),
                          Expanded(
                              child:
                                  Text(car.mileage + 'km', style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Korobka peredach',
                            style: style_options,
                          )),
                          Expanded(
                              child: Text(car.transmission, style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Role',
                            style: style_options,
                          )),
                          Expanded(
                              child:
                                  Text(car.steering_wheel, style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Color',
                            style: style_options,
                          )),
                          Expanded(child: Text(car.colour, style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'Privod',
                            style: style_options,
                          )),
                          Expanded(
                              child: Text(car.drive_wheel, style: style_text)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context,
                                '/proverka');
                          },
                          child: Text('Купить с проверкой'),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Expanded(
                          flex: 8,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Купить без проверкий',
                                style: TextStyle(fontSize: 14),
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Column(
                    children: [
                      Text('Описание'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                        'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud'
                        ' exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute '
                        'irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla '
                        'pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia'
                        ' deserunt mollit anim id est laborum.',
                        style: style_text,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Позвонить'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Написать'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Positioned(
            //     // alignment: Alignment.bottomLeft,
            //     bottom: 20,
            //     width: MediaQuery.of(context).size.width,
            //     child: Row(
            //       children: [
            //         SizedBox(width: 10,),
            //         Expanded(
            //             flex: 3,
            //             child: ElevatedButton(
            //                 onPressed: () {},
            //                 child: Text('Купить с проверкой'))),
            //         // Expanded(
            //         //   flex: 1,
            //         //   child: SizedBox(),
            //         // ),
            //         Expanded(
            //             flex: 3,
            //             child: ElevatedButton(
            //                 onPressed: () {},
            //                 child: Text('Купить без проверкий'))),
            //         SizedBox(width: 10,),
            //       ],
            //     )),
          ],
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
