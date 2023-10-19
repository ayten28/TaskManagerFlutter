import 'package:flutter/material.dart';
import 'package:task_manager/models/user.dart';

class UserListScreen extends StatefulWidget {
  static String id = 'user_list_screen';

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  String? _selectedUser = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        pages: [
          MaterialPage(child: UserListView(
            didSelectUser: (user) {
              setState(() => _selectedUser = user);
            },
          )),
          if (_selectedUser != null)
            MaterialPage(
                child: UserDetailsView(user: _selectedUser, key: null,),
                key: UserDetailsView.valueKey)
        ],
        onPopPage: (route, result) {
          final page = route.settings as MaterialPage;

          if (page.key == UserDetailsView.valueKey) {
            _selectedUser = null;
          }

          return route.didPop(result);
        },
      ),
      // body: Container(
      //   child: UserListView(),
      // //color: Colors.red,
      // ),
    );
  }
}

class UserListView extends StatelessWidget {
  late final ValueChanged didSelectUser;
  UserListView({required this.didSelectUser});

  // List<List<String>> jsonData = [
  //   ["John", "John@mail.com"],
  //   ["Jack", "jack@gmail.com"],
  //   ["aaa", "aaa@mail.ru"],
  // ];
  //  List<UserListModel> userList = [];

  final List<String> itemList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final user = itemList[index];
          return Card(
              child: ListTile(
                title: Text(user),
                onTap: () => didSelectUser(user),
              ));
        },
      ),
    );
  }
}

class UserDetailsView extends StatelessWidget {
  static const valueKey = ValueKey('UserDetailsView');

  final String? user;

  UserDetailsView({required Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('User Details')),
        body: Center(child: Text('Hello, $user')));
  }
}

