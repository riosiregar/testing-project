import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DaftarPage extends StatefulWidget {
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  String _name, _password, _username, _email = "";
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .2),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset(
                          "assets/image/regis.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(height: 36.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Full Name",
                          hintText: "E.g. Johannes Van Andersen",
                        ),
                        onChanged: (String name) {
                          setState(() {
                            _name = name;
                          });
                        },
                      ),
                      SizedBox(height: 24.0,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Username",
                          hintText: "E.g. yohann123",
                        ),
                        onChanged: (String username) {
                          setState(() {
                            _username = username;
                          });
                        },
                      ),
                      SizedBox(height: 24.0,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "E.g. xxxxx@xxx.xxx",
                        ),
                        onChanged: (String email) {
                          setState(() {
                            _email = email;
                          });
                        },
                      ),
                      SizedBox(height: 24.0),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "E.g. admin123",
                          suffixIcon: IconButton(
                            onPressed: _toggle,
                            icon: Icon(
                              _obscureText
                                  ? Icons.lock_outline
                                  : Icons.lock_open,
                            ),
                          ),
                        ),
                        onChanged: (String password) {
                          setState(() {
                            _password = password;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.0),
                Builder(
                  builder: (context) => RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        color: Color(0xFFF6F6F6),
                      ),
                    ),
                    color: Color(0xFF205DC3),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}