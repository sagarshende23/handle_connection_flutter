import 'package:flutter/material.dart';
import 'package:connection_status_bar/connection_status_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text("Connection in FLutter"),
                ),
                body: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondScreen()));
                    },
                    child: Text("Second Screen"),
                  ),
                )),
          ),
          ConnectionStatusBars()
        ],
      ),
    );
  }
}

class ConnectionStatusBars extends StatelessWidget {
  const ConnectionStatusBars({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConnectionStatusBar(
      height: double.infinity,
      title: Text(
        "Internet Connection is Not Found, Please Check Your Internet",
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Second Screen"),
              ),
              body: Center(
                child: Text("Second Screen"),
              ),
            ),
          ),
          ConnectionStatusBars(),
        ],
      ),
    );
  }
}
