import 'package:flutter/material.dart';

class S_proverkoi extends StatefulWidget {
  const S_proverkoi({Key? key}) : super(key: key);

  @override
  State<S_proverkoi> createState() => _S_proverkoiState();
}

class _S_proverkoiState extends State<S_proverkoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('Условия покупки с проверкой'),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width - 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [Text('Перед проверки машины вы соглашаетесь на: ')],
            ),
            SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text('1) '),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Проверка машину стоит 1000 тг.', maxLines: 3,),
                    ],
                  )
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text('2) '),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Если Вы отказываетесь с покупки машины, ', maxLines: 3, ),
                      Text('вам возврат не будет.')
                    ],
                  ),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text('3) '),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Если Вы будете покупать машину, то вам будет ', maxLines: 3,),
                      Text('оказана скидка на 1000тг.')
                    ],
                  )
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text('4) '),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem ipsum dolor sit amet, consectetur ', maxLines: 3,),
                      Text('adipiscing elit.')
                    ],
                  )
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text('5) '),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem ipsum dolor sit amet, consectetur ', maxLines: 3,),
                      Text('adipiscing elit.')
                    ],
                  )
                ],),
              ],
            ),
            SizedBox(height: 100,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/proverka_info');
                },
                child: Text('Я согласен/на'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
