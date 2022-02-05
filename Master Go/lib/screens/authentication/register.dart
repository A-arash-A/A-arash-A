import 'package:flutter/material.dart';

import '../../shared/textinputdecoration.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                    'Register',
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
                image: AssetImage(
                    'assets/images/register_page/register_image.png'),
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          obscureText: true,
                          textAlign: TextAlign.left,
                          decoration: textInputDecoration.copyWith(
                            hintText: 'Confirm password',
                          ),
                          validator: (val) => val != _password
                              ? 'Password did\'t verify'
                              : null,
                          onChanged: (val) {
                            setState(
                              () {
                                _confirmedPassword = val;
                              },
                            );
                          },
                        ),
                      ),
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
                  'Register',
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
              //______________________________________________________________________other register forms/already have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 21,
                      color: Color(0xff838391),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context, '/login'),
                    child: const Text(
                      'Login',
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
