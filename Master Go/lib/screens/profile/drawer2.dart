import 'package:flutter/material.dart';
import 'package:master_go/screens/profile/notifications.dart';

var Drawer2 = Drawer(
  backgroundColor: Colors.white,
  elevation: 15,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  child: SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 30),
        //______________________________________________________________________________________________________________
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff525464)),
            ),
          ],
        ),
        const SizedBox(height: 40),
        //______________________________________________________________________________________________________________
        Card(
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_page/Img_face1.png'),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECECEB),
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Joel Rowe',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        'Bitrow Company',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifications[0],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff616173),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        //----------------------------------------------------------------------------------------
        Card(
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_page/Img_face2.png'),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECECEB),
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Coel Payne',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        'Corporation Kraton',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifications[1],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff616173),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        //----------------------------------------------------------------------------------------
        Card(
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_page/Img_face3.png'),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECECEB),
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Elva Stone',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        'Grand Service Company',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifications[2],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff616173),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        //----------------------------------------------------------------------------------------
        Card(
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_page/Img_face1.png'),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECECEB),
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Joel Rowe',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        'Bitrow Company',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifications[0],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff616173),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        //----------------------------------------------------------------------------------------
        Card(
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_page/Img_face2.png'),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECECEB),
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Coel Payne',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        'Corporation Kraton',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifications[1],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff616173),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        //----------------------------------------------------------------------------------------
        Card(
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_page/Img_face3.png'),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECECEB),
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Elva Stone',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        'Grand Service Company',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifications[2],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff616173),
                  ),
                ),
              )
            ],
          ),
        ),
        //----------------------------------------------------------------------------------------
      ],
    ),
  ),
);
