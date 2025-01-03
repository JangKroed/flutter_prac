import 'package:flutter/material.dart';

class BottomNavBarExamplePage extends StatefulWidget {
  const BottomNavBarExamplePage({super.key});

  @override
  State<BottomNavBarExamplePage> createState() =>
      _BottomNavBarExamplePageState();
}

class _BottomNavBarExamplePageState extends State<BottomNavBarExamplePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() => _selectedIndex = _tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget tabContainer(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
      ),
      body: _selectedIndex == 0
          ? tabContainer(Colors.indigo, 'Friends Tab')
          : _selectedIndex == 1
              ? tabContainer(Colors.amber[600] as Color, 'Chats Tab')
              : tabContainer(Colors.blueGrey, 'Settings Tab'),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(
                _selectedIndex == 0 ? Icons.person : Icons.person_2_outlined,
              ),
              text: 'Friends',
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 1 ? Icons.chat : Icons.chat_outlined,
              ),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 2 ? Icons.settings : Icons.settings_outlined,
              ),
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
