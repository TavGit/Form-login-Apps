import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gustav_login/Tema/tema_provider.dart';
import 'package:gustav_login/Home/home_screen.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.5),
              child: ListTile(
                title: const Text("Mode Gelap"),
                trailing: Switch(
                  value: themeProvider.isDarkMode,
                  onChanged: (value) {
                    themeProvider.toggleTheme(value);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.5),
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'SpicyRice-Regular',
                  fontSize: 50,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 260, top: 30),
              child: Text(
                'Username: ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                autofocus: false,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 4.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 4.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 4.0),
                  ),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.blue,
                  labelText: 'Username',
                  hintText: 'Masukkan Username Anda',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text(
                'Password: ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                autofocus: false,
                autocorrect: false,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 4.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 4.0,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.deepPurple,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  suffixIconColor: Colors.deepPurple,
                  labelText: 'Password',
                  hintText: 'Masukkan Password Anda',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke HomeScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHome()),
                );
              },
              style: ElevatedButton.styleFrom(
                maximumSize: Size(500, 50),
                minimumSize: Size(300, 50),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'Gass Login 👉',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Create Account?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),  
              ),
            ),
          ],
        ),
      ),
    );
  }
}
