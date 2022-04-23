import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String screenId = "/Home";
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Type in your text",
                    fillColor: Colors.white70),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 50.0),
                    child: Text('Start Fundings'),
                  ),
                  MaterialButton(
                    color: Colors.white,
                    elevation: 5,
                    onPressed: () {},
                    child: const Text('Start Now'),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.medical_services_outlined,
                      color: Colors.black,
                      size: 26.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.cast_for_education_outlined,
                      color: Colors.black,
                      size: 26.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.cast_for_education_outlined,
                      color: Colors.black,
                      size: 26.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.cast_for_education_outlined,
                      color: Colors.black,
                      size: 26.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
