import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

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
                  // decoration: const BoxDecoration(
                  //     border: Border(
                  //         bottom: BorderSide(color: Colors.black, width: 1))),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('video'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Create'),
        ),
      ),
    );
  }
}
