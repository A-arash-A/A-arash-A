import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../shared/textdecoration.dart';

SizedBox addPaddingWhenKeyboardAppears() {
  final viewInsets = EdgeInsets.fromWindowPadding(
    WidgetsBinding.instance!.window.viewInsets,
    WidgetsBinding.instance!.window.devicePixelRatio,
  );

  final bottomOffset = viewInsets.bottom;
  const hiddenKeyboard = 0.0; // Always 0 if keyboard is not opened
  final isNeedPadding = bottomOffset != hiddenKeyboard;

  return SizedBox(height: isNeedPadding ? bottomOffset : hiddenKeyboard);
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

final _formKey = GlobalKey<FormState>();
late String _username;
late String _password;

Forget() {
  //for the link of FORGOT PASSWORD
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return ExpandableTheme(
      data: const ExpandableThemeData(
        iconColor: Colors.blue,
        useInkWell: true,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Stack(
              children: [
                //-----------------------------------------------------------------------------------------------------------------
                Image(
                  image: const AssetImage(
                      "datas/images/livingroom.png"), //the livingroom picture in top-left corner
                  width: MediaQuery.of(context).size.width,
                ),
                //-----------------------------------------------------------------------------------------------------------------
                Image(
                  image: const AssetImage(
                      "datas/images/curved_white.png"), //the white, curved layer in front of the livingroom picture
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                //-----------------------------------------------------------------------------------------------------------------
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //________________________________________________________________________________________________________________
                      const SizedBox(
                        height: 230,
                      ),
                      //________________________________________________________________________________________________________________
                      const Center(
                        child: Image(
                          image: AssetImage('datas/images/logo.png'),
                        ),
                      ),
                      //________________________________________________________________________________________________________________
                      ToggleSwitch(
                        animate: true,
                        animationDuration: 50,
                        curve: Curves.easeIn,
                        borderColor: const [Colors.black],
                        borderWidth: 1,
                        minWidth: 150.0,
                        cornerRadius: 26.0,
                        activeBgColors: const [
                          [Color(0xff272727)],
                          [Color(0xff272727)]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: Colors.black,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: const ['Login', 'Register'],
                        radiusStyle: true,
                        onToggle: (index) {
                          // ignore: avoid_print
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                      ),
                      //________________________________________________________________________________________________________________
                      // AnimatedToggleSwitch<int>.size(
                      //   current: value,
                      //   values: [0, 1],
                      //   iconOpacity: 1,
                      //   indicatorSize: Size.fromWidth(90),
                      //   indicatorType: IndicatorType.roundedRectangle,
                      //   iconBuilder: (i, size, active) {
                      //     return Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Text(alternativeIconBuilder(i, size, active)),
                      //       ],
                      //     );
                      //   },
                      //   borderColor: value.isEven ? Color(0xff272727) : Colors.white,
                      //   colorBuilder: (i) =>
                      //       i.isEven ? Color(0xff272727) : Colors.white,
                      //   onChanged: (i) => setState(() => value = i),
                      // ),
                      //________________________________________________________________________________________________________________
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: textInputDecoration.copyWith(
                                    hintText: 'username'),
                                validator: (val) => val!.isEmpty
                                    ? 'Enter your first-name please'
                                    : null,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _username = val;
                                    },
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 5),
                            //________________________________________________________________________________________________________________
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: textInputDecoration.copyWith(
                                    hintText: 'Email'),
                                validator: (val) => val!.isEmpty
                                    ? 'Enter a valid Email please'
                                    : null,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _username = val;
                                    },
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 5),
                            //________________________________________________________________________________________________________________
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: textInputDecoration.copyWith(
                                    hintText: 'password'),
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
                            const SizedBox(height: 5),
                            //________________________________________________________________________________________________________________
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: textInputDecoration.copyWith(
                                    hintText: 'repeat your password'),
                                validator: (val) => val != _password
                                    ? 'Password did\'t verify'
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
                            //________________________________________________________________________________________________________________
                          ],
                        ),
                      ),
                      //________________________________________________________________________________________________________________
                      TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff272727)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(284, 52)),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              //the proccess of registering
                            });
                          }
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[500],
                          shadows: [
                            Shadow(
                              offset: const Offset(0.1, 0.1),
                              blurRadius: 2,
                              color: Colors.grey[500]!,
                            )
                          ],
                        ),
                      ),

                      //________________________________________________________________________________________________________________
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(50, 50)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  const CircleBorder()),
                            ),
                            onPressed: () {
                              /*this function registers with Google account*/
                            },
                            child: const Text(
                              'G',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            '|',
                            style: TextStyle(
                                fontSize: 50,
                                color: Color(0xffC4C4C4),
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(50, 50)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  const CircleBorder()),
                            ),
                            onPressed: () {
                              /*this function registers with Facebook account*/
                            },
                            child: const Text(
                              'F',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 10),
                    ],
                  ),
                ),
                addPaddingWhenKeyboardAppears(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
