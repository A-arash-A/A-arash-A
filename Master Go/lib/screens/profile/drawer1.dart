import 'package:flutter/material.dart';

var Drawer1 = Drawer(
  backgroundColor: const Color(0xff525464),
  elevation: 15,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //-----------------------------------------------------------------------------
      Column(
        children: [
          IconButton(
            splashRadius: 90,
            color: Colors.white,
            iconSize: 45,
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
      //-----------------------------------------------------------------------------
      Column(
        children: [
          IconButton(
            splashRadius: 90,
            color: Colors.white,
            iconSize: 45,
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          const Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
      //-----------------------------------------------------------------------------
      Column(
        children: [
          IconButton(
            splashRadius: 90,
            color: Colors.white,
            iconSize: 45,
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          const Text(
            'Settings',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
      //-----------------------------------------------------------------------------
      Column(
        children: [
          IconButton(
            splashRadius: 90,
            color: Colors.white,
            iconSize: 45,
            onPressed: () {},
            icon: const Icon(Icons.message),
          ),
          const Text(
            'Messages',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
      //-----------------------------------------------------------------------------
    ],
  ),
);
