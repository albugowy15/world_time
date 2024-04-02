import "package:flutter/material.dart";

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // int counter = 0;
  void getData() async {
    // simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "yoshi";
    });

    // simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "vega, musician, egg collector";
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    // print("init state fuction ran");
    getData();
    // print("Hey there");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a location"),
        centerTitle: true,
        elevation: 0.0,
        foregroundColor: Colors.white,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     // setState(() {
      //     //   counter += 1;
      //     // });
      //   },
      //   child: Text('counter'),
      // ),
    );
  }
}
