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

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

final _formKey = GlobalKey<FormState>();
late String _username;
late String _password;

// ignore: non_constant_identifier_names
Forget() {
  //for the link of FORGOT PASSWORD
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // SchedulerBinding.instance!.addPostFrameCallback(
    //   (_) {
    //     Scrollable.ensureVisible(context, alignment: 2);
    //   },
    // );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Stack(
            children: [
              //-----------------------------------------------------------------------------------------------------------------
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image(
                  image: const AssetImage(
                      "datas/images/livingroom.png"), //the livingroom picture in top-left corner
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              //-----------------------------------------------------------------------------------------------------------------
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                height: MediaQuery.of(context).size.height,
                child: Image(
                  image: const AssetImage(
                      "datas/images/curved_white.png"), //the white, curved layer in front of the livingroom picture
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
              //-----------------------------------------------------------------------------------------------------------------
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //________________________________________________________________________________________________________________
                    const SizedBox(
                      height: 200,
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
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: const ['Login', 'Register'],
                      radiusStyle: true,
                      onToggle: (index) {
                        setState(() {
                          Navigator.pushReplacementNamed(context, '/register');
                        });
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
                      child: SizedBox(
                        width: 300,
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
                    ),
                    //________________________________________________________________________________________________________________
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        decoration:
                            textInputDecoration.copyWith(hintText: 'password'),
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
                    //________________________________________________________________________________________________________________
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Forgot Password?',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () => Forget(),
                          child: const Text(
                            'click here',
                            style: TextStyle(
                                color: Colors.blue,
                                fontStyle: FontStyle.italic),
                          ),
                        )
                      ],
                    ),
                    //________________________________________________________________________________________________________________
                    TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff272727)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(284, 52)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //________________________________________________________________________________________________________________
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              addPaddingWhenKeyboardAppears(),
            ],
          ),
        ),
      ),
    );
  }
}
