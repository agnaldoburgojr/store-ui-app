import 'package:flutter/material.dart';
import 'package:shopping_design/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                height: 480,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(1, 2.0),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Welcome',
                                    style:
                                        Theme.of(context).textTheme.display2),
                                Text('Sign in to continue',
                                    style: Theme.of(context).textTheme.subhead),
                              ],
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Invalid e-mail';
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Invalid password';
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input,
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot your password?',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                print(_email);
                                print(_password);

                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Welcome, $_email'),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  '- OR -',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2.0, color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                          height: 24,
                          width: 100,
                          child: Image.asset('assets/facebook.png')),
                      Text(
                        'Sign In with Facebook',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2.0, color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                          height: 24,
                          width: 100,
                          child: Image.asset('assets/google.png')),
                      Text(
                        'Sign In with Facebook',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
