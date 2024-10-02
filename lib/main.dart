import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 여기에 할 작업이 많아서 Scaffold는 아래로 뺌
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  // 전역변수
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 500,
            color: Colors.yellow,
          ),
          TextFormField(
            controller: username,
            decoration: InputDecoration(
              hintText: "Username", // 첫글자를 대문자로 해주는게 예의
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextFormField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // 1. 값 가져오기
              String un = username.text;
              String pw = password.text;
              print(un);
              print(pw);
              // 2. 통신하기

              // 3. 화면 이동 (A->B)
              // [A,B] pushName
              // [B] pushReplaceName
              // [B] pushNamedAndRemoveUntil
              Navigator.pushNamed(context, "/home");
            },
            child: Text("로그인"),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context, "/login"); // [A, B, A]
            //Navigator.pushReplacementNamed(context, "/login");  // [A,A]
            //Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => true); // [A]
            Navigator.pop(context); // [A]
          },
          child: Text("뒤로가기"),
        ),
      ),
    );
  }
}