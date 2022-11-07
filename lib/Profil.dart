import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/inscription2.dart';

class UserProflePage extends StatelessWidget {
  const UserProflePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Jean ZACHARIE',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(
              Icons.person_add,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              //profile photo
              Container(
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/flu1.png'),
                  ),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  )),
              //username
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '@sagara272gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              //number of following , followers ,likes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Text(
                            '327',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Suivis',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            '889',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                            ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            '596',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '  Likes  ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //button--> edit profile , insta links, bookmark
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 200.0,
                    child: Builder(
                      builder: (context) => ElevatedButton(
                        onPressed: () {
                          _openPopup(context);
                        },

                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red[400])),

                        // textColor: Colors.white,
                        child: Text('Sign up'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
              SizedBox(height: 15),
              //JEANNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text('Edit profile',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[800],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.grey[800],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
// JEANNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
              //bio
              // Text(
              //   'bio here',
              //   style: TextStyle(color: Colors.grey[700]),
              // ),
              //default tab controller
              // TabBar(
              //   tabs: [
              //     Tab(
              //       icon: Icon(
              //         Icons.grid_3x3,
              //         color: Colors.black,
              //       ),
              //     ),
              //     Tab(
              //       icon: Icon(
              //         Icons.favorite,
              //         color: Colors.black,
              //       ),
              //     ),
              //     Tab(
              //       icon: Icon(
              //         Icons.lock_outline_rounded,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ],
              // ),
              // Expanded(
              //   child: TabBarView(
              //     children: [
              //       FirstTab(),
              //       SecondTab(),
              //       ThirdTab(),
              //     ],
              //   ),
              // )
            ],
          ),
        ));
  }
}
// JEANNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
// void main() {
//   runApp(const PageInscriprion());
// }

// class PageInscriprion extends StatelessWidget {
//   const PageInscriprion({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'TikODC',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(primaryColor: Colors.white),
//         home: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             title: const Text(
//               'Profil',
//               style: TextStyle(color: Colors.black),
//             ),
//             backgroundColor: Colors.white,
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Icon(
//                   Icons.person_outline,
//                   color: Colors.grey,
//                   size: 100.0,
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//                 const Text(
//                   'Sign Up for a account',
//                   style: TextStyle(
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//                 SizedBox(
//                   width: 200.0,
//                   child: Builder(
//                     builder: (context) => ElevatedButton(
//                       onPressed: () {
//                         _openPopup(context);
//                       },

//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.red[400])),

//                       // textColor: Colors.white,
//                       child: Text('Sign up'),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                        const Icon(
                          Icons.help_outline_rounded,
                        )
                      ]),
                  const SizedBox(
                    height: 80.0,
                  ),
                  const Text(
                    'Inscrit toi sur TikODC',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Crée un profil ,suis d’autres comptes, crée tes propres vidéos et bien plus encore.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageInscription2()),
                        ),
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black,
                                )),
                            Expanded(
                              flex: 6,
                              child: Text(
                                'Utilise un téléphone ou une adresse e-mail',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                )),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Continuer avec Twitter',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              child: Text(
                                'En continuant,tu acceptes nos Conditions d’utilisation et reconnais avoir lu notre Politique de confidantialité pour savoir comment nous collectons, utilisons et partageons tes donnée',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {_openPopupConnexion(context)},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.red[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              flex: 0,
                              child: Text(
                                "Tu as déjà un compte ? ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Connexion',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

void _openPopupConnexion(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                        const Icon(
                          Icons.help_outline_rounded,
                        )
                      ]),
                  const SizedBox(
                    height: 80.0,
                  ),
                  const Text(
                    'Connecte toi sur TikODC',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Gère ton compte, consulte les notifications, commente des vidéos et bien plus encore',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black,
                                )),
                            Expanded(
                              flex: 6,
                              child: Text(
                                'Utilise un téléphone ou une adresse e-mail',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                )),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Continuer avec Twitter',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              child: Text(
                                'En continuant,tu acceptes nos Conditions d’utilisation et reconnais avoir lu notre Politique de confidantialité pour savoir comment nous collectons, utilisons et partageons tes donnée',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {_openPopup(context)},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.red[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              flex: 0,
                              child: Text(
                                "Tu n'as pas de compte ? ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Inscription',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
