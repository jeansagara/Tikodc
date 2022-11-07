import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageInscription2 extends StatelessWidget {
  const PageInscription2({super.key});

 
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(
      
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Inscription',
          ),
          
          bottom: const TabBar(
            labelColor: Colors.black,
            
            
            tabs: <Widget>[
            
              
              Tab(
                // icon: Icon(Icons.cloud_outlined),
                text: 'Téléphone',
                
                
              ),
              Tab(
                // 
                text: 'E-mail',
               ),
              // Tab(
              //   icon: Icon(Icons.brightness_5_sharp),
              // ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
