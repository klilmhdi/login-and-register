import 'package:flutter/material.dart';
import 'package:login_register/consts.dart';
import 'package:login_register/screens/task1_add_remove_elements/elements_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  bool? isVisible;
  final formKey = GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isVisible = true;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            children: [
              ClipPath(
                child: Container(
                  width: double.infinity,
                  height: 380.0,
                  color: Colors.deepPurple,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 125.0),
                    child: Container(
                      child: Center(
                        child: Text('Register', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 45.0),),
                      ),
                    ),
                  ),
                ),
                clipper: ProjectCustomPainter(),
              ),
              // name form
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(
                    right: 18.0, left: 18.0, bottom: 10.0),
                child: TextFormField(
                  cursorHeight: 25,
                  keyboardType: TextInputType.name,
                  // TextInputType.emailAddress
                  controller: nameController,
                  // emailController
                  cursorColor: Colors.deepPurple,
                  obscureText: false,
                  onFieldSubmitted: (String value) {},
                  onSaved: (value) {},
                  onChanged: (String value) {},
                  validator: (value) {
                    if(value! != null) {return "Enter more than 7";}
                    else{
                      null;
                    }
                  },
                  style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  decoration: InputDecoration(
                      hintText: "Name",
                      // "Email"
                      prefixIcon: const Icon(
                        Icons.person,
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
              // email form
              Padding(
                padding: const EdgeInsets.only(
                    right: 18.0, left: 18.0, bottom: 10.0),
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
                  validator: (value) {
                    if(value! != null) {return "Enter more than 7";}
                    else{
                      null;
                    }
                  },
                  style: const TextStyle(
                      color: Colors.deepPurple,
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
              // phone form
              Padding(
                padding: const EdgeInsets.only(
                    right: 18.0, left: 18.0, bottom: 10.0),
                child: TextFormField(
                  cursorHeight: 25,
                  keyboardType: TextInputType.phone,
                  // TextInputType.emailAddress
                  controller: phoneController,
                  // emailController
                  cursorColor: Colors.deepPurple,
                  obscureText: false,
                  onFieldSubmitted: (String value) {},
                  onSaved: (value) {},
                  onChanged: (String value) {},
                  validator: (value) {
                    if(value! != null) {return "Enter valid form";}
                    else{
                      null;
                    }
                  },
                  style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  decoration: InputDecoration(
                      hintText: "Phone",
                      // "Email"
                      prefixIcon: const Icon(
                        Icons.phone,
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
              // password form
              Padding(
                padding: const EdgeInsets.only(
                    right: 18.0, left: 18.0, bottom: 10.0),
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
                  validator: (value) {
                    if(value! != null && value.length < 7) {return "Enter more than 7";}
                    else{
                      null;
                    }
                  },
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
              // Register button
              Container(
                  decoration: const BoxDecoration(
                    // border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(14.0))),
                  width: 280.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      bool isValidate = formKey.currentState!.validate();
                      if(isValidate) navAndFinish(context, const ElementsPage());
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
        ),
      ),
    );
  }
}
