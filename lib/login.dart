import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var state = _LoginPageState();
    return state;
  }
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
  var _securedPassword = true;

  @override
  Widget build(BuildContext context) {
    var imageLogo = "assets/images/unirow_logo.png";

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: ListView(
          children: [
            // title
            Container(
              margin: EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              child: Text(
                "SISTEM INFORMASI AKADEMIK",
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                "UNIVERSITAS PGRI RONGGOLAWE",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),

            // logo
            Container(
              margin: const EdgeInsets.only(top: 45),
              child: Image.asset(
                imageLogo,
                height: 230,
              ),
            ),

            // login title
            Container(
              margin: EdgeInsets.only(top: 38),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            // username
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 55, right: 55, top: 30),
              padding: EdgeInsets.all(10),
              child: TextFormField(
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
              ),
            ),

            // password
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 55, right: 55, top: 10),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: this._securedPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        icon: Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.lock,
                              color: Colors.grey,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        setState(() {
                          _securedPassword = !_securedPassword;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            // login button
            Container(
                margin: EdgeInsets.only(left: 55, right: 55, top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
                  ),
                  onPressed: () {
                    // TODO: navigate this
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                )),

            // lupa password
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Lupa Password?",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
