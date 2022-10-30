import 'package:flutter/material.dart';

class Test_page extends StatefulWidget {
  const Test_page({super.key});

  @override
  State<Test_page> createState() => _Test_pageState();
}

class _Test_pageState extends State<Test_page> {
  final cont_txt = TextEditingController();
  String iihay = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // MainAxisAlignment:MainAxisAlignment.center,
          Image.network(
            "https://th.bing.com/th/id/OIP.KFVds8zROpgsA612zIDisAHaEK?pid=ImgDet&w=1000&h=562&rs=1",
            width: 500,
            height: 200,
          ),
          TextField(
            controller: cont_txt,
            decoration: InputDecoration(
              hintText: "enter your task today",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              setState(() {
                iihay = cont_txt.text;
              });
            },
            child: Text(
              "submit",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
              child: Container(
            child: Center(child: Text(iihay)),
          ))
        ]),
      ),
    );
  }
}
