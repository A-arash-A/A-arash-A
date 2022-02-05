import 'package:flutter/material.dart';

List<Card> comments = [
  Card(
    child: Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('datas/images/datas_sheet/male.png'),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At ut morbi vel, dolor, bibendum eleifend non.',
        ),
      ],
    ),
  ),
  Card(
    child: Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('datas/images/datas_sheet/female.png'),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At ut morbi vel, dolor, bibendum eleifend non.',
        ),
      ],
    ),
  ),
  Card(
    child: Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('datas/images/datas_sheet/male.png'),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectet bibendum eleifend non.',
        ),
      ],
    ),
  ),
  Card(
    child: Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('datas/images/datas_sheet/female.png'),
        ),
        Text(
          'Lorem ipsum do consectetur adipiscing elit. At ut morbi vel, dolor, bibendum eleifend non.',
        ),
      ],
    ),
  ),
];

Widget commentSection() {
  return ListView(
    children: comments.map((e) => e).toList(),
  );
}
