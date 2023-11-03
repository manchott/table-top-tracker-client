import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:table_top_tracker/pages/home_page.dart';

import 'firebase_options.dart';

void main() async {
  // 앱 처음 실행 시 flutter 엔진 초기화 메소드 호출
  // flutter 자체의 렌더링 엔진을 사용할 때 필요한 기본적인 설정들을 수행하는 메소드라고 생각하면 됨
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
