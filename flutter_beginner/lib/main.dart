import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //상태값을 변경하기 위해 사용

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // 배경색 설정
      // 화면 전체를 감싸는 기초 단위
      appBar: AppBar(
        // 휴대폰 상단 앱바  앱바는 고정되어 안움직임
        centerTitle: true, // title 을 중앙배열로 할것인지 아닌지
        title: Text('타이틀예시'), // 앱바 타이틀 이름
        leading: Text('leading'), // 좌측 앱바 클릭버튼으로 자주사용(보통 메뉴바)
        backgroundColor: Colors.black, // 앱바의 색을 설정할수있음.
      ),
      body: Center(
        // 중간으로 위치시킴

        // in the middle of the parent.
        child: Column(
          // 세로 배열로 하나씩 위에서부터 내려감

          mainAxisAlignment: MainAxisAlignment.center, // Column 의 배열을 선택
          //center일경우 중앙배열 / start 는 시작 end는 마지막부터 배열
          //Row 도 똑같이 배열 가능
          children: <Widget>[
            Row(
              //가로 배열로 왼쪽부터 하나씩 옆으로감
              children: [
                Text(
                  '1',
                  style: TextStyle(fontSize: 20), // Text의 style 을 설정
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', // int 값을 String(Text)으로 표현하기위해 $ 를앞에 사용 .toString() 사용해도 무관 ex : _counter.toString()
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              // 단순한 박스
              height: 50, // 높이
              width: 50, // 너비
              decoration: BoxDecoration(
                // 박스를 꾸밀때 사용 BoxDecoration 사용시 color는 반드시 여기안에서 설정할것.
                borderRadius: BorderRadius.circular(12), //Container를 둥글게 만듬
                color: Colors.black, // container의 색을 설정
                boxShadow: [
                  // Container 의 그림자 설정
                  BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.1), // 투명도
                      offset: const Offset(0, 0),
                      blurRadius: 10)
                ],
              ),
            ),
            Container(
              height: 50, // 높이
              width: 50, // 너비
              margin: EdgeInsets.only(
                  top: 5, bottom: 5), // 컨테이너 에서 위로 5 밑으로5 여백을 두는것
              decoration: BoxDecoration(
                border: Border(
                  // 한쪽씩 설정하고 싶다면 border 에서 BorderSide 이용하기
                  bottom: BorderSide(color: Colors.white, width: 5),
                ),
                color: Colors.black, // container의 색을 설정
                boxShadow: [
                  // Container 의 그림자 설정
                  BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.1), // 투명도
                      offset: const Offset(0, 0),
                      blurRadius: 10)
                ],
              ),
            ),

            Image.asset('assets/photo.png'), //assets 폴더안 photo 이미지를출력

            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Image.asset('assets/photo.png'), // 컨테이너 안에 다른 위젯을 넣을수 있음.
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Scafolld 에 버튼을 만들때 사용 우측 하단에
        onPressed: _incrementCounter, // 클릭시 사용할 기능
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
