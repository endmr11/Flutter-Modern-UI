import 'package:finance_ui_app/pages/son_isler.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _secilenIndex=0;

  void _sayfaDegis(int index) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _sayfalar = [
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.sort),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/02/23/13/05/profile-2092113_960_720.png"),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Hira Riaz",
                      style: TextStyle(
                        color: HexColor("#3E4685"),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "UX/UI Designer",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: HexColor("#3E4685"),
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                "Incoms",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 1.0,
                            color: Colors.grey,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\5500",
                                style: TextStyle(
                                  color: HexColor("#3E4685"),
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                "Expenses",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 1.0,
                            color: Colors.grey,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$890",
                                style: TextStyle(
                                  color: HexColor("#3E4685"),
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                "Loan",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          color: HexColor("#3E4685"),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.notifications_active_sharp,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Text(
                    "Sept 13,2021",
                    style: TextStyle(
                      color: HexColor("#3E4685"),
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SonIsler(),
                    ),
                  );
                },
                child: Card(
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
                    title: Text("Sent"),
                    subtitle: Text("Sending Payment to Clients"),
                    trailing: Text(
                      "\$150",
                    ),
                  ),
                ),
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
                    Icons.arrow_downward_outlined,
                    size: 40.0,
                    color: Colors.black,
                  ),
                  title: Text("Receive"),
                  subtitle: Text("Receiving Salary from company"),
                  trailing: Text(
                    "\$250",
                  ),
                ),
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
                    Icons.monetization_on_outlined,
                    size: 40.0,
                    color: Colors.black,
                  ),
                  title: Text("Loan"),
                  subtitle: Text("Loan for the car"),
                  trailing: Text(
                    "\$400",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: HexColor("#F3F8FE"),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
            backgroundColor: HexColor("#F3F8FE"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              size: 40,
              color: HexColor("#3E4685"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        currentIndex: _secilenIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 35.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _sayfaDegis,
      ),
      body: SafeArea(child: _sayfalar.elementAt(_secilenIndex)),
    );
  }

}
