
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Profil.dart';
import 'package:untitled/accueil.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages=[
    HomePage(),
    Text("Nom", style: TextStyle(color: Colors.black),),
    Text("ADD"),
    Text("Messages"),
    UserProflePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
           BottomNavigationBarItem(
            icon: Icon(Icons.home), // icon: Icon(Icons.home),
            label: 'Accueil',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Now',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/add2.png',
              height: 50,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.message),
            label: 'Message',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person), //person_outline
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF141518),
        selectedItemColor: Colors.white,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

