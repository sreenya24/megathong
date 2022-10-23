import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // TextButton _CreateLeftButton(context, String text, Function onPressed) {
  //   return TextButton(
  //     style: TextButton.styleFrom(
  //       foregroundColor: Colors.cyan,
  //       backgroundColor: Colors.black,
  //     ),
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const Games()),
  //       );
  //     },
  //     child: const Text('Games'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text('sasta tesla'),
        ),
        body: Flex(
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.horizontal,
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.cyan,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Games()),
                        );
                      },
                      child: const Text('Games'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.cyan,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Info()),
                        );
                      },
                      child: const Text('Learn more'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.cyan,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const video()),
                        );
                      },
                      child: const Text('Personalized video'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.cyan,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const stitch()),
                        );
                      },
                      child: const Text('3D visualize'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.cyan,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const restaurant()),
                        );
                      },
                      child: const Text('Nearest Restaurants'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 500,
            ),
            Row(
              children: [
                Flex(
                  direction: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        WindowStyleDropdownMenu(
                          buttonTitleStyle: const TextStyle(color: Colors.red),
                          dropdownWidth: 300,
                          buttonTitle: 'Emergency',
                          dropdownItems: const [
                            ListTile(
                              mouseCursor: SystemMouseCursors.click,
                              title: Text(
                                'Doctor',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 242, 246)),
                              ),
                            ),
                            ListTile(
                              mouseCursor: SystemMouseCursors.click,
                              title: Text(
                                'Mechanics',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 242, 246)),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        WindowStyleDropdownMenu(
                          buttonTitleStyle: const TextStyle(color: Colors.red),
                          dropdownWidth: 300,
                          buttonTitle: 'Help',
                          dropdownItems: const [
                            ListTile(
                              mouseCursor: SystemMouseCursors.click,
                              title: Text(
                                'Food',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 242, 246)),
                              ),
                            ),
                            ListTile(
                              mouseCursor: SystemMouseCursors.click,
                              title: Text(
                                'Petrol',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 242, 246)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(170, 255, 244, 119),
      ),
    );
  }
}

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Games'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('20 questions'),
        ),
      ),
    );
  }
}

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Info'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Lesgo'),
        ),
      ),
    );
  }
}

class stitch extends StatefulWidget {
  const stitch({super.key});

  @override
  State<stitch> createState() => _stitchState();
}

class _stitchState extends State<stitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('stitch'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Big'),
        ),
      ),
    );
  }
}

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  String viewID =
      "https://shotstack-api-stage-output.s3-ap-southeast-2.amazonaws.com/fpms561i0a/462997fd-29cb-45ee-ac21-f4655ce154fb.mp4";
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.blueGrey[900],
    //     title: const Text('Personalized Video'),
    //   ),
    // );
    ui.platformViewRegistry.registerViewFactory(
        viewID,
        (int id) => html.IFrameElement()
          ..width = MediaQuery.of(context).size.width.toString()
          ..height = MediaQuery.of(context).size.height.toString()
          ..src = viewID
          ..style.border = 'none');
    return SizedBox(
      height: 500,
      child: HtmlElementView(
        viewType: viewID,
      ),
    );
  }
}

class restaurant extends StatefulWidget {
  const restaurant({super.key});

  @override
  State<restaurant> createState() => _restaurantState();
}

// ignore: camel_case_types
class _restaurantState extends State<restaurant> {
  final TextEditingController _controller = TextEditingController();
  int flag = 0;
  String _output =
      "Top rated restaurants nearby[in decreasing order]:\nFirefly Sushi\nVeronica Hood\n\Mariposa Montessori School\nMcDonald's  #6196\nEl Chilito Tacos y Cafe";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Nearest restaurants'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Enter Title'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // _futureAlbum = createAlbum(_controller.text);
              });
            },
            child: const Text('Create Data'),
          ),
        ],
      ),
    );
  }
}
