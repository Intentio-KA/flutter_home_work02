import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Weather Forecast'),
          backgroundColor: Colors.red[400],
        ),
        body: _bodyBuilder(),
      ),
    );
  }
}

Widget _bodyBuilder() {
  return SingleChildScrollView(
    child: Column(
      children: [
        enterCityName(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                cityDetail(),
                temperatureDetail(),
                extraWeatherDetail(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

TextField enterCityName() {
  return const TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(
        Icons.find_replace,
        color: Colors.white,
      ),
      labelText: 'Enter City Name',
      labelStyle: TextStyle(color: Colors.white),
    ),
  );
}

Column cityDetail() {
  return Column(
    children: const [
      Text(
        'Dnepropetrovska Oblast, UA',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      Text(
        'Friday, Mar 27.2021',
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Row temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.light_mode,
        size: 70.0,
        color: Colors.white,
      ),
      const SizedBox(
        width: 20.0,
      ),
      Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Text(
            '14 C',
            style: TextStyle(fontSize: 50.0, color: Colors.white),
          ),
          Container(
            width: 20.0,
          ),
          const Text(
            'LIGHT SHOW',
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Row extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Column(
          children: const [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'km/m',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: const [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: const [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            Text(
              '20',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      )
    ],
  );
}

// Column bottomDetail() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       const Text(
//         '7 DAY WEATHER FORCAST',
//         style: TextStyle(color: Colors.white),
//       ),
//       ListView(
//         scrollDirection: Axis.horizontal,
//         children: [Container()],
//       ),
//     ],
//   );
// }
