//import 'dart:js';

import 'package:flutter/material.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Forecast',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[500],

        ),
        body: const HomePage(),
        backgroundColor: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        'page2': (context) => const SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  _cityName(),
                  const Padding(padding: EdgeInsets.only(top: 25)),
                  _cityDetail(),
                  const Padding(padding: EdgeInsets.only(top: 25)),
                  _temperatureDetail(),
                  const Padding(padding: EdgeInsets.only(top: 25)),
                  _extraWeatherDetail(),
                  const Padding(padding: EdgeInsets.only(top: 50)),
                  const Text('7-DAY WEATHER FORECAST', style: TextStyle(color: Colors.white, fontSize: 20)),
                  //_bottomDetail(),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  _bodyListView(),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/page2');
                      },
                      child: const Text('Move to page2')
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



class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}



Container _bodyListView(){
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20.0),
    height: 120.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Monday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('11°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.sunny, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(' Tuesday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('13°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.sunny, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Wednesday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('11°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.cloud, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Thursday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('14°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.cloud, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Friday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('12°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.sunny, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Saturday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('12°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.sunny, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: 200.0,
          color: Colors.white38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sunday', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('8°C', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  const Icon(Icons.cloud, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Row _cityName(){
  return Row(
    children: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white, size: 25,)),
      const Text('Enter city name', style: TextStyle(color: Colors.white, fontSize: 17),),
      //IconTheme(data, child: child)
    ],
  );
}

Column _cityDetail(){
  return Column(
    children: [
      const Text('Minsk, Minskaya Oblast', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      const Padding(padding: EdgeInsets.only(top: 5)),
      const Text('Sunday, Oct 09, 2022', style: TextStyle(color: Colors.white, fontSize: 20))
    ],
  );
}

Row _temperatureDetail(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          const Icon(Icons.sunny, color: Colors.white, size: 80,),
        ],
      ),
      const SizedBox(width: 16),
      Column(
        children: [
          const Text('15 °C', style: TextStyle(color: Colors.white, fontSize: 30),),
          const Text('Sunny', style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
    ],
  );
}

Row _extraWeatherDetail(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          const Icon(Icons.ac_unit_sharp, color: Colors.white, size: 30,),
          const SizedBox(height: 5),
          const Text('5', style: TextStyle(color: Colors.white, fontSize: 20),),
          const SizedBox(height: 5),
          const Text('km/hr', style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
      Column(
        children: [
          const Icon(Icons.ac_unit_sharp, color: Colors.white, size: 30,),
          const SizedBox(height: 5),
          const Text('3', style: TextStyle(color: Colors.white, fontSize: 20),),
          const SizedBox(height: 5),
          const Text('%', style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
      Column(
        children: [
          const Icon(Icons.ac_unit_sharp, color: Colors.white, size: 30,),
          const SizedBox(height: 5),
          const Text('20', style: TextStyle(color: Colors.white, fontSize: 20),),
          const SizedBox(height: 5),
          const Text('%', style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      )
    ],
  );
}




