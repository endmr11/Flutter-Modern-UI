import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SonIsler extends StatefulWidget {
  @override
  _SonIslerState createState() => _SonIslerState();
}

class _SonIslerState extends State<SonIsler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F3F8FE"),
      appBar: AppBar(
        backgroundColor: HexColor("#F3F8FE"),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Transactions",
                  style: TextStyle(
                    color: HexColor("#3E4685"),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(HexColor("#3E4685")),
                    shape:                             MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right:15.0,left:15.0),
                    child: Text(
                      "All",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape:                             MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right:15.0,left:15.0),
                    child: Text(
                      "Income",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape:                             MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right:15.0,left:15.0),
                    child: Text(
                      "Income",
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Today",
              style: TextStyle(
                color: HexColor("#3E4685"),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_upward_sharp,
                  size: 40.0,
                  color: Colors.black,
                ),
                title: Text("Sent",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),),
                subtitle: Text("Sending Payment to Clients"),
                trailing: Text(
                  "\$150",
                  style: TextStyle(
                    color: HexColor("#3E4685"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
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
              },
              child: Text(
                "See Details",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
