import 'package:flutter/material.dart';
import 'package:login_register/consts.dart';
import 'package:login_register/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool? isVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isVisible = true;
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                height: 300.0,
                child: CustomPaint(
                  size: Size(double.infinity,(double.infinity).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: ProjectCustomPainter(),
                ),
              ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 58.0),
                    child: Text("Login", style: TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                ),
              ]
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  // email form
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 18.0, left: 18.0, bottom: 14.0),
                    child: TextFormField(
                      cursorHeight: 25,
                      keyboardType: TextInputType.emailAddress,
                      // TextInputType.emailAddress
                      controller: emailController,
                      // emailController
                      cursorColor: Colors.deepPurple,
                      obscureText: false,
                      onFieldSubmitted: (String value) {},
                      onSaved: (value) {},
                      onChanged: (String value) {},
                      validator: (value) =>
                      value!.isEmpty ? "Enter this empty form" : "",
                      style: const TextStyle(
                          color: Colors.black12,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                      decoration: InputDecoration(
                          hintText: "Email",
                          // "Email"
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          // Colors.blueAccent
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide(color: Colors.black, width: 1)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Colors.black, width: 1))),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  // password form
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 18.0, left: 18.0, bottom: 14.0),
                    child: TextFormField(
                      cursorHeight: 25,
                      keyboardType: TextInputType.visiblePassword,
                      // TextInputType.emailAddress
                      controller: passController,
                      // emailController
                      cursorColor: Colors.deepPurple,
                      obscureText: isVisible!,
                      onFieldSubmitted: (String value) {},
                      onSaved: (value) {},
                      onChanged: (String value) {},
                      validator: (value) =>
                      value!.isEmpty ? "Enter this empty form" : "",
                      style: const TextStyle(
                          color: Colors.black12,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.black,
                          ),
                          hintText: "Password",
                          // "Email"
                          // Colors.blueAccent
                          suffixIcon: IconButton(
                              onPressed: () => setState(() {
                                isVisible = !isVisible!;
                              }),
                              icon: Icon(isVisible!
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide(color: Colors.black, width: 1)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Colors.black, width: 1))),
                    ),
                  ),
                  // login button
                  Container(
                      decoration: const BoxDecoration(
                        // border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(14.0))),
                      width: 280.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // navTo(context, HomePage());
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
                        child: const Text('login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Register button
                  Container(
                      decoration: const BoxDecoration(
                        // border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(14.0))),
                      width: 280.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          navTo(context, RegisterPage());
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
                        child: const Text('Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold)),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
