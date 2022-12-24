import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protein Tracker Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: const MyHomePage(title: 'Protein Tracker Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
            child: SizedBox(
              width: 500,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.24,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/ProLogo.png',
                        height: 60,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Protein\nTracker Pro',
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        color: Colors.white,
                        height: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    const Text(
                      'Track protein intake and reach your nutrition goals with our app.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Wrap(
                      runSpacing: 16,
                      children: [
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          color: Colors.transparent,
                          onPressed: (() {
                            launchUrl(
                              Uri.parse(
                                  'https://play.google.com/store/apps/details?id=com.jamal.proteinTrackerPro'),
                            );
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(160),
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(CupertinoIcons.down_arrow),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Google Play'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          color: Colors.transparent,
                          onPressed: (() {}),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(160),
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(CupertinoIcons.down_arrow),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('App Store (Coming Soon)'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.25,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 32,
                left: size.width * 0.15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Socials: ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                                'https://www.instagram.com/protein_tracker/'),
                          );
                        },
                        padding: EdgeInsets.zero,
                        minSize: 0,
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      const Text(
                        'For more support: ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        minSize: 0,
                        child: Text('tracker.protein@gmail.com'),
                        onPressed: () {
                          launchUrl(
                            Uri(
                                scheme: 'mailto',
                                path: 'tracker.protein@gmail.com'),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
