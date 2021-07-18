import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
          child: Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                  height: 80.0,
                  child:
                      Image(image: AssetImage('assets/Instagramlogo.jpg'))))),
      Container(
          margin: EdgeInsets.fromLTRB(0.0, 140.0, 0.0, 10.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0),
              child: Text('Login'),
            ),
          )),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 145.0, vertical: 10.0),
              child: Text('Sign Up'),
            ),
          ))
    ])));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.grey[100],
        ),
        body: Container(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Container(
              child: Center(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                      height: 80.0,
                      child: Image(
                          image: AssetImage('assets/InstagramLogo.jpg'))))),
          Container(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 15.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your instagram username',
                      labelText: 'Username',
                    ),
                  ))),
          Container(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your instagram Password',
                      labelText: 'Password',
                    ),
                  ))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Container(
                  color: Colors.blue,
                  padding:
                      EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0),
                  child: Text('Login'),
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
            child: Text('OR'),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text("Don't have an account ?"),
                  ),
                  Container(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text('Sign-Up'),
                  ))
                ],
              )),
          Container(
            margin: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 10.0),
            child: Text("Instagram OT Facebook"),
          )
        ])));
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.grey[100],
        ),
        body: Container(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Container(
              child: Center(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                      height: 80.0,
                      child: Image(
                          image: AssetImage('assets/InstagramLogo.jpg'))))),
          Container(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your instagram username',
                      labelText: 'Username',
                    ),
                  ))),
          Container(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your instagram Password',
                      labelText: 'Password',
                    ),
                  ))),
          Container(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm your password',
                      labelText: 'Confirm Password',
                    ),
                  ))),
          Container(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your email id',
                      labelText: 'Email ID',
                    ),
                  ))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Container(
                  color: Colors.blue,
                  padding:
                      EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0),
                  child: Text('SignUp'),
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
            child: Text('OR'),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 90.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text("Have an account ?"),
                  ),
                  Container(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text('Login'),
                  ))
                ],
              )),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: Text("Instagram OT Facebook"),
          ),
        ])));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool liked = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          color: Colors.white,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: 0.0),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined, color: Colors.black)),
              SizedBox(width: 20.0),
              Image(
                image: AssetImage('assets/InstagramLogo.jpg'),
              ),
              SizedBox(width: 25.0),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message_rounded, color: Colors.black)),
              SizedBox(width: 5.0),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InstaDM()),
                    );
                  },
                  icon: Icon(Icons.send_sharp, color: Colors.black)),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(250, 250, 250, 1),
        child: Column(
          children: [
            Container(
              height: 680,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/YourStory.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Story1.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Story(2).jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Story(1).jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Story(1).jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Story(1).jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Story(1).jpg'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/Top.jpg'),
                        ),
                        Container(
                          child: Image.asset('assets/Rectangle.jpg'),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color:
                                            liked ? Colors.red : Colors.black12,
                                      ),
                                      onPressed: () {
                                        _pressed();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 100,
                                                    vertical: 5),
                                                content: Text(
                                                  'You have liked the post',
                                                  style: TextStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    color: Color.fromRGBO(
                                                        0, 122, 255, 1),
                                                  ),
                                                )));
                                      })),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 6, 5, 0),
                                child: Image.asset('assets/mes.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 7, 0, 0),
                                child: Image.asset('assets/Shape.jpg'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 11, 0, 0),
                          child: Text(
                            'joshua_l The game in Japan was amazing and I want to share some photos',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 38, 38, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                icon: Icon(Icons.home_filled, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: Icon(Icons.search_rounded, color: Colors.black87)),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.medical_services, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notification()),
                  );
                },
                icon: Icon(Icons.favorite_border_outlined,
                    color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.person, color: Colors.black87)),
            label: '  ',
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 50,
          width: 411,
          padding: EdgeInsets.fromLTRB(0, 5, 40, 5),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Search',
              labelText: 'Search',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/s.jpg',
                  width: 20,
                  height: 20,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                icon: Icon(Icons.home_filled, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: Icon(Icons.search_rounded, color: Colors.black87)),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.medical_services, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notification()),
                  );
                },
                icon: Icon(Icons.favorite_border_outlined,
                    color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.person, color: Colors.black87)),
            label: '  ',
          ),
        ],
      ),
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
          children: [
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
          ]),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(250, 250, 250, 1),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset('assets/tab1.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/tab2.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset('assets/Title.jpg'),
            ),
            Container(
              child: Image.asset('assets/New.jpg'),
            ),
            Container(
              child: Image.asset('assets/Today.jpg'),
            ),
            Container(
              child: Image.asset('assets/thisweek.jpg'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 270, 5),
              child: Text(
                'This Month',
                style: TextStyle(
                  color: Color.fromRGBO(38, 38, 38, 1),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/fol.jpg'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                icon: Icon(Icons.home_filled, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: Icon(Icons.search_rounded, color: Colors.black87)),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.medical_services, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notification()),
                  );
                },
                icon: Icon(Icons.favorite_border_outlined,
                    color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.person, color: Colors.black87)),
            label: '  ',
          ),
        ],
      ),
    );
  }
}

class InstaDM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'jacob_w',
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: null,
            ),
          ],
        ),
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[200]),
                height: 45,
                margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: TextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: ' ',
                      labelText: 'Search',
                    ))),
            ListTile(
              title: Text(
                'joshua_l',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Have a nice day, bro!'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p1.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'karennne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('I heard this is a good movie, s…'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p2.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'martini_rond',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('See you on the next meeting!'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p4.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'andrewww_',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Sounds good 😂😂😂'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p7.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'kiero_d',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('The new design looks cool, b…'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p6.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'maxjacobson',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Thank you, bro!'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p5.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'jamie.franco',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Yeap, I'm going to travel in To…"),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p4.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'm_humphrey',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Instagram UI is pretty good'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p3.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'zackjohn',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Do you read this message?'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p8.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'm_humphrey',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('See you on the next meeting!'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('p9.jpg'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black26,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.camera_alt,
              size: 30,
              color: Colors.blue,
            ),
            Text(
              'Camera',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                icon: Icon(Icons.home_filled, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: Icon(Icons.search_rounded, color: Colors.black87)),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.medical_services, color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notification()),
                  );
                },
                icon: Icon(Icons.favorite_border_outlined,
                    color: Colors.black87)),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.person, color: Colors.black87)),
            label: '  ',
          ),
        ],
      ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 120),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.lock_outline, color: Colors.black)),
                  Text(
                    'Jacob_w',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down, color: Colors.black)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Image.asset(
                    'YourStory.jpg',
                    height: 60,
                  ),
                  SizedBox(width: 25),
                  Text(
                    '54              834              162\nPosts     Following    Followers',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Text(
                    'Jacob West\nDigital Goodies Designer @pixellz\nEverything is designed.',
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  SizedBox(
                      width: 350,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                        ),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                ],
              ),
            ],
          )),
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 1.0,
          children: [
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
            Image.asset('r1.jpg'),
            Image.asset('r2.jpg'),
            Image.asset('r3.jpg'),
            Image.asset('r4.jpg'),
          ]),
    );
  }
}
