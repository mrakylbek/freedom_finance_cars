import 'package:flutter/material.dart';

import 'car.dart';

class ProverkaInfo extends StatelessWidget {
  ProverkaInfo({Key? key}) : super(key: key);

  var style_options = TextStyle(fontSize: 14, color: Colors.black);
  var style_text = TextStyle(fontSize: 14, color: Colors.black);

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Проверка'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    '123456789123456789123',
                  ),
                )
              ],
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'ДТП',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.yellow,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Был',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Угон',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Стоит',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
