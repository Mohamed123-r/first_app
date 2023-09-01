import 'package:flutter/material.dart';

// ignore: camel_case_types
class fieldText extends StatefulWidget {
  const fieldText({Key? key}) : super(key: key);

  @override
  State<fieldText> createState() => _fieldTextState();
}

// ignore: camel_case_types
class _fieldTextState extends State<fieldText> {
  var name = TextEditingController();
  String mmm = 'Enter Your Email ';

  bool m = true;
  var mm = const Icon(
    Icons.remove_red_eye,
  );
  var b = Colors.black;
  var w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Log in ',
          style: TextStyle(
            color: w,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    hintText: 'Name ',
                    hintStyle: TextStyle(
                      color: w,
                    ),
                    labelStyle: TextStyle(
                      color: w,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style: TextStyle(
                    color: w,
                  ),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    hintText: 'E-mail ',
                    hintStyle: TextStyle(
                      color: w,
                    ),
                    labelStyle: TextStyle(
                      color: w,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    hintStyle: TextStyle(
                      color: w,
                    ),
                    hintText: 'Password ',
                    labelStyle: TextStyle(
                      color: w,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          m = !m;
                          if (m == false) {
                            mm = Icon(Icons.panorama_fish_eye_outlined,
                                color: w);
                          } else {
                            mm = Icon(Icons.remove_red_eye, color: w);
                          }
                        });
                      },
                      icon: mm,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: m,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: b,
                    filled: true,
                    hintText: 'Phone  ',
                    hintStyle: TextStyle(
                      color: w,
                    ),
                    labelStyle: TextStyle(
                      color: w,
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                    color: Colors.grey,
                    minWidth: 200,
                    height: 45,
                    child: Text(
                      'log in',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: w,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        mmm = name.text;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.color_lens,
          color: w,
        ),
        onPressed: () {
          setState(() {
            b = b == Colors.black ? Colors.white : Colors.black;
            w = w == Colors.white ? Colors.black : Colors.white;
          });
        },
      ),
    );
  }
}
