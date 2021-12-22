import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void>? _launched;
  String dribble = 'https://dribbble.com/sujatakushwaha';
  String instagram = 'https://www.instagram.com/raihans24/?hl=en';
  String behance = 'https://www.behance.net/';
  String linkedin = 'https://www.linkedin.com/';

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false, //untuk IOS (safari Browser)
      forceWebView:
          false, //untuk android jika null atau false URL dibuka pake browser default
      // kalo true URL dibuka di WebView
      //headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  Widget _bagianatas() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://ngonoo.com/engine/wp-content/uploads/2015/02/shutterstock_179216297.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: const Center(
                      child: Text(
                        "Catherine Massey",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      'UI/UX Designer | Daily ',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.grey[400],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      'UI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      // background: Paint()
                      //   ..strokeWidth = 20.0
                      //   ..color = Colors.grey
                      //   ..style = PaintingStyle.stroke
                      //   ..strokeJoin = StrokeJoin.round
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _urlprofile() {
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: 7,
      // ),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            autofocus: true,
            child: Container(
              height: 60,
              width: 60,
              child: Center(
                child: Image.asset(
                  'assets/images/pngwing.com.png',
                  height: 30,
                  color: Colors.red[900],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onTap: () {
              setState(() {
                _launched = _launchInBrowser(dribble);
              });
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Container(
              height: 60,
              width: 60,
              child: Center(
                child: Image.asset(
                  'assets/images/behance.png',
                  height: 20,
                  color: Colors.blue[900],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onTap: () {
              setState(() {
                _launched = _launchInBrowser(behance);
              });
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Container(
              height: 60,
              width: 60,
              child: Center(
                child: Image.asset(
                  'assets/images/instagram.png',
                  height: 40,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onTap: () {
              setState(() {
                _launched = _launchInBrowser(instagram);
              });
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Container(
              height: 60,
              width: 60,
              child: Center(
                child: Image.asset(
                  'assets/images/linkedin.png',
                  height: 25,
                  color: HexColor("#0e76a8"),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onTap: () {
              setState(() {
                _launched = _launchInBrowser(linkedin);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _followers() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Text('80',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('Posts'),
            ],
          ),
          Column(
            children: [
              const Text('110',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('Followers'),
            ],
          ),
          Column(
            children: [
              const Text('152',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('Following'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buttonfollow() {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 175,
              child: Center(
                child: Text('Message', style: TextStyle(fontSize: 20)),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 175,
              child: Center(
                child: Text('Follow',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _post() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/6.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      _bagianatas(),
                      _urlprofile(),
                      _followers(),
                      _buttonfollow(),
                      _post(),
                    ],
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
