import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.red],
        ),
      ),
      child: Scaffold(backgroundColor: Colors.transparent, body: _page()),
    );
  }

  // ignore: unused_element
  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.person, color: Colors.white, size: 120),
    );
  }

  Widget _inputField(
    String hintext,
    TextEditingController controller, {
    isPassword = false,
  }) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white),
    );

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintext,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  // ignore: unused_element
  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        // ignore: prefer_interpolation_to_compose_strings
        debugPrint("Username : " + usernameController.text);
        // ignore: prefer_interpolation_to_compose_strings
        debugPrint("Password : " + passwordController.text);
      },
       // ignore: sort_child_properties_last
       child:const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
        ) ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue, shape: const StadiumBorder(), backgroundColor: Color.fromARGB(225, 228, 226, 226),
          padding: const EdgeInsets.symmetric(vertical: 16)
          ),
    );  
  }

  Widget _extraText(){
    return const Text(
      "can't access to your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16,color: Colors.white),
     );
  }
}
