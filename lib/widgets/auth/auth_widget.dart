import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ff_cars/Theme/app_button_style.dart';
import 'package:ff_cars/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FF Cars'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _FormWidget(),
      ],
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final pass = _passwordTextController.text;
    if (login == 'admin' && pass == 'admin') {
      // if (true) {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Неверный пароль!';
    }
    setState(() {});
  }

  void _reset() {}

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    final color = Color(0xFF01B4F4);
    final textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      isCollapsed: true,
    );
    return Stack(
      children: [
        if (errorText != null) ...[
          Container(
            padding: EdgeInsets.only(top: 100),
            alignment: Alignment.center,
            child: Text(
              '$errorText',
              style: TextStyle(fontSize: 17, color: Colors.red),
            ),
          ),
        ],
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 230),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Логин', style: textStyle),
              SizedBox(height: 5),
              TextField(
                controller: _loginTextController,
                decoration: textFieldDecoration,
              ),
              SizedBox(height: 20),
              Text('Пароль', style: textStyle),
              SizedBox(height: 5),
              TextField(
                controller: _passwordTextController,
                decoration: textFieldDecoration,
                obscureText: true,
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _auth();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(color),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        overlayColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8))),
                    child: Text('Войти'),
                  ),
                  SizedBox(width: 30),
                  TextButton(
                    onPressed: () {
                      _reset();
                    },
                    style: AppButtonStyle.linkButton,
                    child: Text('Зарегистрироваться'),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
