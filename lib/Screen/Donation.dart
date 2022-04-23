import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  static var screenId;

  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  var person = 'donor';

  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Donation'),
          Center(
            child: MaterialButton(
              color: Colors.amber[800],
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              'How Much You Want To Donate',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          height: 20,
                        ),

                        Column(
                            children: productName
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Center(
                                      child: MaterialButton(
                                        color: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80, vertical: 15),
                                          child: Text(
                                            e['productName'],
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Donation()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                )
                                .toList()),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  'Start Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      );
    }));
  }
}

List productName = [
  {'productName': 'shoes'},
  {'productName': 'clothes'},
  {'productName': 'Food'},
  {'productName': 'Wood'},
];
