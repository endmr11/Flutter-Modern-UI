import 'package:finance_ui_app/pages/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  bool _goster = true;

  void _gostersin() {
    setState(() {
      _goster = !_goster;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F3F8FE"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              heightFactor: 2.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("resimler/finance_logo.png"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 33.0, horizontal: 10.0),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Email Adress",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                        ),
                        hintText: "example@example.com",
                        prefixIcon: Icon(Icons.mail),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: TextFormField(
                      obscureText: (_goster) ? true : false,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 33.0, horizontal: 10.0),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                        ),
                        hintText: "",
                        prefixIcon: Icon(Icons.mail),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        suffixIcon: GestureDetector(
                          child: (_goster)
                              ? Icon(Icons.remove_red_eye_sharp)
                              : Icon(Icons.remove_red_eye_outlined),
                          onTap: () {
                            _gostersin();
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color: Colors.transparent),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          HexColor("#3E4685"),
                        ),
                        //padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(top: 20,bottom: 20,left: 50,right: 50)),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(400, 60)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnaSayfa(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
