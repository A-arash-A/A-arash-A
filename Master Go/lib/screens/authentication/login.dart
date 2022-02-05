import 'package:flutter/material.dart';

import '../../shared/textinputdecoration.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  late String _confirmedPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 5),
          child: Column(
            children: [
              //_______________________________________________________________________________________________________________first Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  //----------------------------------------------------------------------------------------
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff525464)),
                  ),
                  //----------------------------------------------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.list),
                  ),
                  //----------------------------------------------------------------------------------------
                ],
              ),
              const SizedBox(height: 50),
              //__________________________________________________________________________________________first Row/Register_page image
              const Image(
                image: AssetImage('assets/images/login_page/login_image.png'),
              ),
              const SizedBox(height: 75),
              //_____________________________________________________________________________________Register_page image/TextFormFields
              SizedBox(
                height: 200,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Enter email'),
                          validator: (val) =>
                              val!.isEmpty ? 'Enter your E-mail please' : null,
                          onChanged: (val) {
                            setState(
                              () {
                                _email = val;
                              },
                            );
                          },
                        ),
                      ),
                      //----------------------------------------------------------------------------------------
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Enter password'),
                          validator: (val) => val!.length < 6
                              ? 'Password must be at least 6 digits'
                              : null,
                          onChanged: (val) {
                            setState(
                              () {
                                _password = val;
                              },
                            );
                          },
                        ),
                      ),
                      //----------------------------------------------------------------------------------------
                      GestureDetector(
                        onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Text('you forgot your password'),
                              );
                            }),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot your password?',
                              style: TextStyle(
                                  color: Color(0xff838391), fontSize: 20),
                            ),
                          ),
                        ),
                      )
                      //----------------------------------------------------------------------------------------
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //____________________________________________________________________________________________TextFormFields/Button
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      Size(MediaQuery.of(context).size.width * 0.9, 60)),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff20C3AF),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      //+++    the proccess of registering    +++
                    });
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),
              //____________________________________________________________________________________________Button/OR
              const Text(
                'or',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: Color(0xff838391),
                ),
              ),
              //____________________________________________________________________________________________OR/other register forms
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          fixedSize:
                              MaterialStateProperty.all(const Size(30, 30))),
                      onPressed: () {},
                      child: const Image(
                          image: AssetImage(
                              'assets/images/register_page/facebook.png'))),
                  TextButton(
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(30, 30))),
                      onPressed: () {},
                      child: const Image(
                          image: AssetImage(
                              'assets/images/register_page/twitter.png'))),
                  TextButton(
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(30, 30))),
                      onPressed: () {},
                      child: const Image(
                          image: AssetImage(
                              'assets/images/register_page/linkedin.png'))),
                ],
              ),
              //______________________________________________________________________other register forms/Don\'t have an account yet?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account yet?',
                    style: TextStyle(
                      fontSize: 21,
                      color: Color(0xff838391),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () =>
                        Navigator.popAndPushNamed(context, '/register'),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 21,
                        color: Color(0xffFFB19D),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
