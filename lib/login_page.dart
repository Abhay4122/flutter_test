import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          Text(
            " welcome $name",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                    TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Material(
                  color:Colors.deepPurple,
                  borderRadius:
                  BorderRadius.circular(changeButton ? 50 : 8)),
                   child:InkWell(     
                   onTap: () {
                    setState(() {
                      changeButton = false;
                    });
                  await Future.delayed(const Duration(seconds:1));
                 await Navigator.pushNamed(context, " MyRoutes,homeRoutes");
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    // child:changeButton
                    // ? const Icon(Icons.done,
                    // color:Colors.white,):
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape:changeButton
                        // ?BoxShape.circle
                        // :BoxShape.rectangle,

                       
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   // style: TextButton.styleFrom(minimumSize(150, 40)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, "MyRoutes,homeRoutes");
                //   },
                //   child: const Text("Login"),
                     ),
              ],
            ),
          ),
        ],  
      ),
    );
  }
}
