import 'package:flutter/material.dart';
import 'auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MarketPlace',
        home: Scaffold(
            appBar: AppBar(
              title: Text('MarketPlace'),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    MaterialButton(
                      onPressed: () => null,
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Text('Login with UCSD SSO'),
                    ),
                ],
              ),
            )
        )
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  UserProfileState createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  Map<String, dynamic> _profile;
  bool _loading = false;

  @override
  initState() {
    super.initState();

    // Subscriptions are created here
    authService.profile.listen((state) => setState(() => _profile = state));

    authService.loading.listen((state) => setState(() => _loading = state));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(padding: EdgeInsets.all(20), child: Text(_profile.toString())),
      Text(_loading.toString())
    ]);
  }
}
