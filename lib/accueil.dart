import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  //HomePage({Key? key}) : super(key: key);
  final List<Map> tiktokItems = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tiktokItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color.fromRGBO(20, 21, 24, 1),
              child: Stack(
                children: [
                  VideoWidget(videoUrl: item['video']),
                  const PostContent(),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;
  @override
  _VideoWidgetState createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class PostContent extends StatelessWidget {
  const PostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 40),
          //color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Suivis',
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 20),
              Text(
                'Pour toi',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.red.withOpacity(0.5),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '@Jeansagara_95',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Goein full send in Squaw Valley. #snow @snowboarding # extremesports',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Original Sound - NINHO - Lettre a une femme',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  padding: const EdgeInsets.only(bottom: 10),
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 80,
                        // color: Colors.blue,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('assets/images/profil.png'),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10
                      ),
                      SizedBox(
                        height: 80,
                        // color: Colors.teal,
                        child: Column(children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          const Text(
                            '25.0K',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 80,
                        // color: Colors.teal,
                        child: Column(children: [
                          Icon(
                            FontAwesomeIcons.solidComment,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          const Text(
                            '155',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 80,
                        // color: Colors.teal,
                        child: Column(children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          const Text(
                            '123',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 80,
                        // color: Colors.teal,
                        child: Column(children: [
                          Icon(
                            FontAwesomeIcons.share,
                            color: Colors.white.withOpacity(0.85),
                            size: 35,
                          ),
                          const Text(
                            '24',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]),
                      ),
                      const AnimatedLogo(),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("assets/images/disc_icon.png"),
          ),
        ),
        child: Image.asset("assets/images/tiktok_icon.png"),
      ),
    );
  }
}