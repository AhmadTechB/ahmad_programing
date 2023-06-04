import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiCall extends StatefulWidget {
  double? height;

  GetApiCall({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  State<GetApiCall> createState() => _GetApiCallState();
}

class _GetApiCallState extends State<GetApiCall> {
  int a = 0;
  List<dynamic>? getApi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetApiCall $a"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          fetchUsers();
          // _increament();
        },
      ),
      body: ListView.builder(
          itemCount: getApi?.length ?? 0,
          itemBuilder: (context, index) {
            // final user = getApi?[index];
            // final imageUrl = user['picture']['thumbnail'];
            if (getApi?.length == null) {
              return const CircularProgressIndicator();
            }
            return ListTile(
              leading:ClipRRect(
              // CircleAvatar(
              //     child: Text('${index + 1}')),
                borderRadius: BorderRadius.circular(100),
                child: Image.network(getApi?[index]['picture']['thumbnail'].toString() ?? ""),
              ),
              title: Text(
                  getApi?[index]['name']['first'].toString() ?? ""),
              subtitle: Text(
                  getApi?[index]['email'].toString() ?? ""),
            );
          }),
      // body: Center(
      //   child: Container(
      //     margin: EdgeInsets.only(left: 25, right: 25),
      //     height: widget.height ?? 70,
      //     width: 400,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(7), color: Colors.red),
      //     child: Center(
      //       child: GestureDetector(
      //         onTap: (){
      //           _decreament();
      //         },
      //         child: Text(
      //           "Clicked On",
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 22,
      //               fontWeight: FontWeight.w900),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  // void _increament(){
  //   setState(() {
  //     a++;
  //   });
  // }
  // void _decreament(){
  //   setState(() {
  //     a--;
  //   });
  // }

  Future<void> fetchUsers() async {
    print("fetchUsers data");
    final response =
        await http.get(Uri.parse("https://randomuser.me/api/?results=500"));
    if (response.statusCode == 200) {
      var jsonD = jsonDecode(response.body);
      setState(() {
        getApi = jsonD['results'];
      });
    } else {
      print("not found");
    }
    print("fetchUsers completed");
  }
}

