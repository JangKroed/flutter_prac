import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExamplePage extends StatefulWidget {
  const SharedPreferencesExamplePage({super.key});

  @override
  State<SharedPreferencesExamplePage> createState() =>
      _SharedPreferencesExamplePageState();
}

class _SharedPreferencesExamplePageState
    extends State<SharedPreferencesExamplePage> {
  late SharedPreferences _prefs;
  String _username = '';
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getUsername();
  }

  _saveUsername() {
    setState(() {
      _username = _usernameController.text;
      _prefs.setString('currentUsername', _username);
    });
  }

  _getUsername() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = _prefs.getString('currentUsername') ?? 'Not set';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('현재 사용자 이름: $_username'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: _usernameController,
              textAlign: TextAlign.left,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Input your username',
              ),
            ),
          ),
          TextButton(
            onPressed: _saveUsername,
            child: const Text('저장'),
          ),
        ],
      ),
    );
  }
}
