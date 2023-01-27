import 'package:academic/ambik_krs.dart';
import 'package:academic/utils/footer.dart';
import 'package:flutter/material.dart';
import 'package:academic/jadwal_kuliah.dart';

class HomePage extends StatefulWidget {
  String? name = null;
  String? npm = null;

  HomePage({super.key, this.name, this.npm});

  @override
  State<StatefulWidget> createState() {
    var state = _HomePageState();
    state._name = this.name;
    state._npm = this.npm;
    return state;
  }
}

class _HomePageState extends State<HomePage> {
  String? _name = null;
  String? _npm = null;

  @override
  Widget build(BuildContext context) {
    if (this._name == null) {
      this._name = null;
    } else if (this._name!.isEmpty) {
      this._name = null;
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: ListView(
          children: [
            // title icons
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // options
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.list_alt,
                      size: 30,
                    ),
                  ),
                  // notifications
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),

            // welcome message
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!!",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                          ),
                        ),

                        // user
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            this._name ?? "unknown",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(
                        elevation: 10,
                        child: Image.asset("assets/images/profile.jpeg"),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // body
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // jadwal kuliah
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return JadwalKuliah(
                                  name: this._name,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                ),
                                height: 150,
                                child: Image.asset("assets/images/jadwal.png"),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Jadwal Kuliah",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ambil krs
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AmbilKrs(
                                  name: this._name,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                ),
                                height: 150,
                                child: Image.asset("assets/images/krs.png"),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Ambil KRS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // cetak KHS
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              height: 150,
                              child: Image.asset("assets/images/khs.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Cetak KHS",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // dosen
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              height: 150,
                              child: Image.asset("assets/images/dosen.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Dosen",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // presensi
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).backgroundColor,
                              ),
                              height: 150,
                              child: Image.asset("assets/images/absen.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Presensi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: footer(context),
    );
  }
}
