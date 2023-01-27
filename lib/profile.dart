import 'package:academic/utils/footer.dart';
import 'package:flutter/material.dart';

var listMatkul = [
  {
    "no": "No",
    "matkul": "Mata Kuliah",
  },
  {
    "no": "1",
    "matkul": "Bahasa Inggris",
  },
  {
    "no": "2",
    "matkul": "Interaksi Manusia dan Komputer",
  },
  {
    "no": "3",
    "matkul": "Teknologi Wireless",
  },
  {
    "no": "4",
    "matkul": "Pemrogramman 6",
  },
  {
    "no": "5",
    "matkul": "Prakrikum Pemrogramman 6",
  },
  {
    "no": "6",
    "matkul": "Manajememn Proyek",
  },
  {
    "no": "7",
    "matkul": "Digital Image Proccesing",
  },
  {
    "no": "8",
    "matkul": "Praktikum Digital Image Proccesing",
  },
];

class Profile extends StatefulWidget {
  String? name = null;

  Profile({super.key, this.name});

  @override
  State<StatefulWidget> createState() {
    var state = _ProfileState();
    state._name = this.name;
    return state;
  }
}

class _ProfileState extends State<Profile> {
  String? _name = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: ListView(
          children: [
            // title user
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 30),
                        child: CircleAvatar(
                          minRadius: 40,
                          backgroundImage:
                              AssetImage("assets/images/profile.jpeg"),
                          maxRadius: 40,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          (this._name ?? "unknown").toUpperCase(),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30, top: 20),
                    child: Icon(
                      Icons.notifications,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),

            // username
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 55, right: 55, top: 100),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Username",
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            // setting
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 55, right: 55, top: 30),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Setting",
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            // logout
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 55, right: 55, top: 30),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Logout",
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: footer(context, name: this._name),
    );
  }
}
