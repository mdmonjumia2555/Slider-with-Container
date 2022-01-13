import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: _value * 10,
                width: _value * 7,
                color: Colors.purpleAccent,
                child: Center(
                  child: Text(
                    'HI',
                    style: TextStyle(
                        fontSize: _value * 5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Slider(
              autofocus: true,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              thumbColor: Colors.red,
              label: 'This is Slider',
              divisions: 20,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                  print(_value);
                });
              },
              min: 10,
              max: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: _value * 6,
                width: 350,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'I am used by \n      Slider',
                    style: TextStyle(
                        fontSize: _value,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
