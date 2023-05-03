import 'package:flutter/material.dart';
import 'package:flutter_premier_projet/navigation/screen_a.dart';
import 'package:flutter_premier_projet/navigation/screen_b.dart';
import 'package:flutter_premier_projet/navigation/screen_c.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationHome(),
      routes: {
        // '/': (context) => const NavigationHome(),
        ScreenB.routeName: (context) => const ScreenB(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ScreenC.routeName:
            final arguments = settings.arguments;

            if (arguments is int) {
              return MaterialPageRoute(
                  builder: (context) => ScreenC(id: arguments));
            }
        }
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.blue,
          ),
        );
      },
    );
  }
}

class NavigationHome extends StatelessWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToScreenA(context),
              child: const Text('Go to Screen A'),
            ),
            ElevatedButton(
              onPressed: () => _goToScreenB(context),
              child: const Text('Go to Screen B'),
            ),
            ElevatedButton(
              onPressed: () => _goToScreenC(context),
              child: const Text('Go to Screen C'),
            ),
          ],
        ),
      ),
    );
  }

  void _goToScreenA(context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const ScreenA();
    }));
  }

  void _goToScreenB(context) {
    Navigator.of(context).pushNamed(ScreenB.routeName);
  }

  void _goToScreenC(context) {
    ScreenC.navigateTo(context, 30);
  }
}
