import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext Context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[200],
      child: ListView(
        children: <Widget> [
          UserAccountsDrawerHeader(accountName: Text('Developper : Muammer Aydın Tekkanat'), accountEmail: Text('muammeraydintekkanat@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.deepPurple[400],
              child: ClipOval(
                child: Image.asset('assets/images/pp.jpg'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.purple[300],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/backgroundpic.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}