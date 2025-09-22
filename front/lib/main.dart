import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '리드데이터시스템즈',
      theme: ThemeData(
        primarySwatch: Colors.red, // AppBar 색상 및 기본 포인트 컬러
        scaffoldBackgroundColor: Colors.white70,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white70,  // AppBar 배경색 확실히 지정
          foregroundColor: Colors.black, // AppBar 글자/아이콘 색상
          elevation: 0,                  // 그림자 없애기
        ),
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'lib/images/leadcorp_img.svg', // 이미지 URL
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 8),
              Text(widget.title),
            ],
          ),
        ),
        body: Column(
          children: const [
            SizedBox(height: 10), // AppBar와 TabBar 사이 간격
            TabBar(
              labelColor: Colors.black,          // 선택된 탭 색상
              unselectedLabelColor: Colors.grey, // 선택 안된 탭 색상
              indicatorColor: Colors.black,      // 밑줄 색
              tabs: [
                // Tab(
                //   text: "홈",
                //   icon: Icon(Icons.home),      // 홈 아이콘
                // ),
                Tab(
                  text: "업무 관리",
                  icon: Icon(Icons.business),  // 비즈니스 아이콘
                ),
                Tab(
                  text: "메일 관리",
                  icon: Icon(Icons.mail),    // 학교 아이콘
                ),
                Tab(
                  text: "사용자 관리",
                  icon: Icon(Icons.person),    // 학교 아이콘
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Center(child: Text("홈 화면")),
                  Center(child: Text("비즈니스 화면")),
                  Center(child: Text("메일 화면")),
                  Center(child: Text("사용자 화면")),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
