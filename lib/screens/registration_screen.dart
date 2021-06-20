import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';

class RegistrationScreen extends StatelessWidget {
  static const routeName = '/registration-screen';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String fName = '';
    String lName = '';
    String email = '';
    String phoneNumber = '';
    String idNo = '';
    String complaint = '';
    String county = '';
    String subCounty = '';
    String location;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Registration',
              style: kHeadlineTextStyle.copyWith(color: kPrimary, fontSize: 24),
            ),
            Text(
              ' Form',
              style: kHeadlineTextStyle.copyWith(
                  color: Colors.black, fontSize: 24),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: size.width,
                    child: Image.asset(
                      'assets/images/home1.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'Do you need Help? Please fill the form below to ba attended to. Be transparent and accurate for best Help',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          backgroundColor: Colors.black26),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'First name'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your first name';
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Last name'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your last name';
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'email address'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Enter a valid email';
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Phone number'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        if (value.length < 8) {
                          return 'Please enter a valid phone number';
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Date of Birth'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter date of Birth';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        idNo = value;
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Description of complaint'),
                      maxLines: 10,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your complaint';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        complaint = value;
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'County '),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter the county you are in';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        county = value;
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Sub county'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter the sub county you are in';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        subCounty = value;
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Town/Village/Specific area'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter the sub county you are in';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        location = value;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: size.width * 0.9,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20),
                      ))),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
