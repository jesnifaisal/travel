import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  GlobalKey<ScaffoldState> _ScaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => _ScaffoldKey.currentState?.openDrawer(),
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset("asset/pr8kkg3i.png"),
            decoration: BoxDecoration(color: Colors.amber),
            accountName: Text(
              "Travelling",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'baloo'),
            ),
            accountEmail: Text(
              "www.traveladdict.in",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(
                Icons.home,
                size: 32,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.pedal_bike,
              size: 32,
            ),
            title: Text(
              "Cycling",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.directions_bus,
              size: 32,
              color: Colors.grey,
            ),
            title: Text(
              "Bus",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.flight_takeoff_outlined,
              size: 32,
              color: Colors.grey,
            ),
            title: Text(
              "Plane",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.8, color: Colors.grey))),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Profile",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.download_sharp,
              size: 32,
            ),
            title: Text(
              "Login",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.8, color: Colors.grey))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Communicate",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              size: 30,
            ),
            title: Text(
              "Share",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.rate_review,
              size: 30,
            ),
            title: Text(
              "Rate us",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87),
            ),
            onTap: () {},
          )
        ]),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 32),
            child: Text(
              'Travelling',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'baloo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 80),
            child: Text(
              "Start a new journey",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Image.asset(
              "asset/pr8kkg3i.png",
              width: 300,
              height: 150,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 15),
                      child: InkWell(
                        child: Container(
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Image.asset(
                                      "asset/train.png",
                                    ),
                                  ),
                                  Text(
                                    "Train",
                                    style: TextStyle(
                                      fontFamily: "aclonica",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 4,
                                  offset: Offset(0, 4))
                            ])),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 40, top: 20),
                      child: InkWell(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(padding: const EdgeInsets.all(10))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
