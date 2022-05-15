// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'bloc/counterBloc.dart';
// import 'bloc/counterEvent.dart';
// import 'bloc/counterState.dart';
// import 'bloc/cubit/counterCubit.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<CounterCubit>(
//       create: (context) => CounterCubit(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home:  MyHomePage(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//    MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;
//   CounterCubit counterCubit=CounterCubit();

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             BlocConsumer<CounterCubit,int>(builder: (context,state){
//               return Text(state.toString());
//             }, listener: (context,state){

//             }),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           widget.counterCubit.increment();
//           log(widget.counterCubit.state.toString());
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/product/presentation/bloc/cartBloc.dart';
import 'package:flutter_bloc_test/product/presentation/view/productList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductList(),
      ),
    );
  }
}

class WeatherPage extends StatefulWidget {
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fake Weather App"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "City Name",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "35 °C",
              style: TextStyle(fontSize: 80),
            ),
            CityInputField(),
          ],
        ),
      ),
    );
  }
}

class CityInputField extends StatefulWidget {
  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  late Image image;

  @override
  void initState() {
    super.initState();

    // put them here
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String imagenJson = "Here, I put the BASE64 string";
    Uint8List _image = base64Decode(imagenJson);
    image = Image.memory(_image); // assign it value here
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: submitCityName,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter a city",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  void submitCityName(String cityName) {
    // We will use the city name to search for the fake forecast
  }
}
