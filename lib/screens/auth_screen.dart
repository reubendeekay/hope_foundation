import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = '/auth-screen';
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var size = MediaQuery.of(context).size;
    bool _isLogin = true;
    String email = '';
    String fName = '';
    String lName = '';
    String phoneNumber = '';
    String password = '';

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
          ),
          Container(
            height: size.height * 0.2,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(400)),
              color: kPrimary,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.2,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      // topLeft: Radius.circular(100),
                      topRight: Radius.circular(400)),
                  color: kPrimary,
                ),
              )),
          Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: _isLogin ? size.height * 0.35 : size.height * 0.25,
                ),
                //First name
                if (!_isLogin)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'First Name'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            if (value.length <= 1) {
                              return 'Please enter characters more than 1';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            fName = value;
                          },
                        ),
                      ),
                    ),
                  ),
                //Last name
                if (!_isLogin)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Last Name'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your last name';
                            }
                            if (value.length <= 1) {
                              return 'Please enter characters more than 1';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            lName = value;
                          },
                        ),
                      ),
                    ),
                  ),
                //Email address
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 55,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Email'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter an email address';
                          }
                          if (!value.contains('@') || !value.contains('.')) {
                            return 'Please enter a correct email adrress';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    ),
                  ),
                ),
                //Phone number
                if (!_isLogin)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.phone),
                              hintText: 'Phone number'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter a phone number';
                            }
                            if (value.length < 8) {
                              return 'Please enter a  valid phone number';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            phoneNumber = value;
                          },
                        ),
                      ),
                    ),
                  ),

                //Password
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 55,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (value.length < 5) {
                            return 'Password must be more than 5 characters';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(_isLogin ? 'Login' : 'Signup'))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _isLogin
                          ? 'Dont have an account?'
                          : 'Already have an account?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isLogin = !_isLogin;
                        });
                      },
                      child: Text(
                        _isLogin ? 'Register' : 'Login',
                        style: TextStyle(
                            color: kPrimary, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
