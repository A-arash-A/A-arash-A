import 'package:flutter/material.dart';
import 'package:master_go/screens/profile/drawer1.dart';
import 'package:master_go/screens/profile/drawer2.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isDrawer1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          // ///////////  the black area   \\\\\\\\\\\\\\\\\
          Container(
            color: const Color(0xff525464),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.62),
                //----------------------------------------------------------------------------------
                SizedBox(
                  height: 70,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 10,
                    color: Color.fromARGB(206, 103, 106, 126),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        const Image(
                          image: AssetImage(
                              'assets/images/profile_page/Phone_icon.png'),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          '|',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xffECECEB),
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Opacity(
                              opacity: 0.38,
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                            Text(
                              '09014985952',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //----------------------------------------------------------------------------------
                SizedBox(
                  height: 70,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 10,
                    color: Color.fromARGB(206, 103, 106, 126),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        const Image(
                          image: AssetImage(
                              'assets/images/profile_page/Email_icon.png'),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          '|',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xffECECEB),
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Opacity(
                              opacity: 0.38,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                            Text(
                              'aghafari79@gmail.com',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //----------------------------------------------------------------------------------
                SizedBox(
                  height: 70,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 10,
                    color: Color.fromARGB(206, 103, 106, 126),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        const Image(
                          image: AssetImage(
                              'assets/images/profile_page/Completed_icon.png'),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          '|',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xffECECEB),
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Opacity(
                              opacity: 0.38,
                              child: Text(
                                'Completed Projects',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                            Text(
                              '3',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //                                                \\\\\\\\\\\  the black area   ////////////

          //                                                ///////////  the white area   \\\\\\\\\\\
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 0),
            color: Colors.white,
            child: Column(
              children: [
                //______________________________________________________________________________________first Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isDrawer1 = true;
                          });
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isDrawer1 = false;
                          });
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: const Icon(Icons.list)),
                  ],
                ),
                const SizedBox(height: 30),
                //______________________________________________________________________________________firstRow/profile picture
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                      'assets/images/profile_page/profile_picture.png'),
                ),
                const SizedBox(height: 20),
                //______________________________________________________________________________________profile picture/Name and details
                const Text(
                  'Arash Ghafari',
                  style: TextStyle(fontSize: 30, color: Color(0xff525464)),
                ),
                const SizedBox(height: 4),
                const Text(
                  'flutter front-end developer',
                  style: TextStyle(fontSize: 20, color: Color(0xff838391)),
                ),
                const SizedBox(height: 40),
                //______________________________________________________________________________________Name and details/about me button
                TextButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(15),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff20C3AF)),
                        fixedSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width * 0.8, 60))),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                          );
                        }),
                    child: const Text(
                      'About Me',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),

                //______________________________________________________________________________________about me button
              ],
            ),
          ),
        ],
      ),
      drawer: isDrawer1 ? Drawer1 : Drawer2,
    );
  }
}
