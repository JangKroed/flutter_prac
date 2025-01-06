import 'dart:async';
import 'package:flutter/material.dart';
import 'notification.dart';
import 'second.dart';

//! Notification을 위한 StreamController 전역 변수 선언
StreamController<String> streamController = StreamController.broadcast();

Future<void> main() async {
  //! Binding부터 해줍니다.
  WidgetsFlutterBinding.ensureInitialized();

  //! Background에서 Notification를 탭해서 앱을 여는 경우를 위한 메소드
  FlutterLocalNotification.onBackgroundNotificationResponse();

  //! 메인 앱 실행
  runApp(const MaterialApp(
    title: 'Flutter App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // 초기화
    FlutterLocalNotification.init();

    // 3초 후 권한 요청
    Future.delayed(const Duration(seconds: 3),
        FlutterLocalNotification.requestNotificationPermission());

    super.initState();
  }

  @override
  void dispose() {
    streamController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<String>(

          //! Stream을 전달합니다.
          stream: streamController.stream,
          builder: (context, snapshot) {
            //! snapshot을 통해 데이터를 확인합니다.
            if (snapshot.hasData) {
              //! 데이터가 'HELLOWORLD'라면 SecondPage로 이동
              if (snapshot.data == 'HELLOWORLD') {
                //! 빌드가 먼저 완료된 후에 호출하기 위해 addPostFrameCallback 사용
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SecondPage();
                  }));
                });
              }
            }

            return Center(
              child: TextButton(
                onPressed: () {
                  //! 알림 전송
                  FlutterLocalNotification.showNotification();
                },
                child: const Text("알림 보내기"),
              ),
            );
          }),
    );
  }
}
