import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailAddressValue;
  String _passwordValue;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
            image: AssetImage('assets/background.jpg'),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // TODO: Refatorar textfields?
                TextField(
                  decoration: InputDecoration(labelText: 'Email', filled: true, fillColor: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    setState(() {
                      _emailAddressValue = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(labelText: 'Password', filled: true, fillColor: Colors.white),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      _passwordValue = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Accept Terms'),
                  value: _acceptTerms,
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                // Refatorar RaisedButton?
                RaisedButton(
                  child: Text('Login'),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () {
                    print(_emailAddressValue);
                    print(_passwordValue);
                    Navigator.pushReplacementNamed(context, '/products');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
