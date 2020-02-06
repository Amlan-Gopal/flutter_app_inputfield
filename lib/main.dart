import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Input Field",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String value= "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (text) {
                setState(() {
                  value = text;
                });
              },
              decoration: InputDecoration(
                //hintText: "user name",
                //helperText: "name plz"
                //labelText: "Enter Name",
                prefixIcon: Icon(
                  Icons.account_box
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              //decoration: InputDecoration.collapsed(hintText: ""), -  Used to apply no decoration
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Text(
            "$value"
          )
        ],
      ),
    );
  }

}
