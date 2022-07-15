import 'package:flutter/material.dart';
import 'package:recontre/screens/root_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(12, 64, 16, 0),
                    child: const Text(
                      'Rencontre',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Find a new relationship with ease',
                      style: TextStyle(fontSize: 16),
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                ),
                Container(
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(0, 48, 0, 4),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) {
                          return RootScreen();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 4, 8),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      '- or login with-',
                      style: TextStyle(
                        fontSize: 14,
                        color:Colors.grey,
                      ),
                    )),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/icon-socialMedia/ImgBtn-Facebook.png'),
                      iconSize: 54,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: Image.asset('assets/icon-socialMedia/ImgBtn-Instagram.png'),
                      iconSize: 54,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: Image.asset('assets/icon-socialMedia/ImgBtn-Twitter.png'),
                      iconSize: 54,
                      onPressed: () {},
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Row(
                  children: <Widget>[
                    const Text('Don\'t have an account?',
                    style: TextStyle(color:Colors.grey)),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}
