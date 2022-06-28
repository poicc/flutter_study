import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/basic_page.dart';
import 'package:flutter_demo/bottom/drag_page.dart';
import 'package:flutter_demo/bottom/list_page.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Scaffold Page'),
        ),
        //leading: Icon(Icons.home),
        actions: const [
          Icon(Icons.share),
          // Icon(Icons.settings),
          SizedBox(
            width: 12.0,
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          BasicPage(),
          DragPage(),
          ListPage(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blueGrey),
                child: Center(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      child: Image.network(
                          'https://avatars.githubusercontent.com/u/59445871?s=400&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4'),
                    ),
                  ),
                )),
            const ListTile(
              title: Text('订单'),
              leading: Icon(Icons.list),
            ),
            const ListTile(
              title: Text('课程'),
              leading: Icon(Icons.play_lesson),
            ),
            const ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '基础组件',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.layers,
              ),
              label: '容器布局',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: '滚动组件',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
      ),
    );
  }
}
