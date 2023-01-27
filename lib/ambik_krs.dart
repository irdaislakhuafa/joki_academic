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

class AmbilKrs extends StatefulWidget {
  String? name = null;

  AmbilKrs({super.key, this.name});

  @override
  State<StatefulWidget> createState() {
    var state = _AmbilKrsState();
    state._name = this.name;
    return state;
  }
}

class _AmbilKrsState extends State<AmbilKrs> {
  String? _name = null;

  @override
  Widget build(BuildContext context) {
    var matkul = List<TableRow>.generate(listMatkul.length, (index) {
      return TableRow(
        children: [
          SizedBox(
            height: 120,
            child: TableCell(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Text(
                  listMatkul[index]["matkul"] ?? "Mata Kuliah",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });

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

            // title table
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "AMBIL KRS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // table
            Container(
              margin: EdgeInsets.only(left: 10, right: 55, top: 30),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Table(
                  children: matkul,
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 30, bottom: 50, left: 160, right: 160),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "Kembali",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: footer(context, name: this._name),
    );
  }
}
