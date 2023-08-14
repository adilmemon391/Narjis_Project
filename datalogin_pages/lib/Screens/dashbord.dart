import 'package:datalogin_pages/Screens/Allcolors.dart';
import 'package:datalogin_pages/Screens/LoginLogout.dart';
import 'package:datalogin_pages/Screens/logout.dart';
import 'package:datalogin_pages/extra.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashBord extends StatefulWidget {
  const DashBord({super.key});

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  SharedPreferences? logindata;
  String? email;
  String? password;
  String? _name;
  String? mobile;
  String? code;
  SharedPreferences? _logindata;
  String? _email;
  String? _password;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
    _onItemTapped(_selectedIndex);
    _initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata?.getString('email');
      password = logindata?.getString('password');
      _name = logindata?.getString('_name');
      mobile = logindata?.getString('mobile');
      code = logindata?.getString('code');
    });
  }

  void _initial() async {
    _logindata = await SharedPreferences.getInstance();
    setState(() {
      _email = logindata?.getString('_email');
      _password = logindata?.getString('_password');
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appLightDividerColor,
        appBar: AppBar(
          backgroundColor: appBtnCheckoutColor,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:AssetImage("assets/Background.png"),
                    fit: BoxFit.fill)),
          ),
          title: const Text("DeshBoard"),
        ),
        drawer: drawer(),
        body: columna(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'add',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'message',
              backgroundColor: Colors.brown,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            margin: const EdgeInsets.all(0),
            accountName: Text("$_name"),
            accountEmail: Text("$email"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/photo.png",
                  width: 73,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/profile-bg3.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text("search"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const extra(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text("home_filled"),
            onTap: () => print('home_filled'),
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text("Policies"),
            // onTap: () => print('Policies'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () => print('settings'),
            trailing: PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5 ||
                      selected == 2 ||
                      selected == 1 ||
                      selected == 3 ||
                      selected == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const extra())));
                  }
                },
                elevation: 10,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                      const PopupMenuItem(
                          value: 1,
                          child: Text(
                            "Opt 1",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 2,
                          child: Text(
                            "Opt 2",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 3,
                          child: Text(
                            "Opt 3",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 4,
                          child: Text(
                            "Opt 4",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 5,
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ))
                    ]),
          ),
          const Divider(
            color: Colors.black,
            height: 10,
            thickness: 1.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogOut(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginLogout(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Login Logout",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget columna() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: appCat1,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30, left: 10),
                      child: const CircleAvatar(
                        radius: 50,
                        child: Image(
                          image: AssetImage(
                            "assets/photo.png",
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: Text(
                            "userId:$email",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "password:$password,",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "name:$_name,",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "mobile:$mobile,",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Code:$code,",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Container(
        //         margin: const EdgeInsets.symmetric(
        //             horizontal: 10, vertical: 20),
        //         child: const Text(
        //           "Login Mail:",
        //           style:
        //               TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //         )),
        //     Text(
        //       "$_email",
        //       style: const TextStyle(
        //           fontSize: 18,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.blue),
        //     )
        //   ],
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Container(
        //         margin: const EdgeInsets.symmetric(
        //             horizontal: 10, vertical: 20),
        //         child: const Text(
        //           "Login Password:",
        //           style:
        //               TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //         )),
        //     Text(
        //       "$_password",
        //       style: const TextStyle(
        //           fontSize: 20,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.blue),
        //     )
        //   ],
        // )
      ],
    );
  }
}