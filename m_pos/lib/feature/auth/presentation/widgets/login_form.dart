import 'package:flutter/material.dart';
import 'package:m_pos/core/widgets/buttons.dart';
import 'package:m_pos/core/widgets/textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class  _LoginFormState extends State<LoginForm> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 243, 241, 241),
        padding: EdgeInsets.all(100),
        width: 600,
        child: Column(
          children: [
            FlutterLogo(size: 60),
            SizedBox(height: 30,),
            Text('Sign In',style: TextStyle(color: Colors.blueAccent,fontSize:20,fontWeight:FontWeight.bold)),
            SizedBox(height: 30,),
            Flexible(
               child: TextWidget(
               controllerName: email,
               hint: 'Enter Your Email',
               labelText: 'Email',
               prefixIcon: Icons.email,
               //suffixIcon:Icons.visibility
               // pass:false
                              ),
            ),
            SizedBox(height: 20,),
            Flexible(
               child: TextWidget(
                controllerName: pass,
                hint: 'Enter Your Password',
                labelText: 'Password',
                pass: isPasswordHidden,
                prefixIcon: Icons.lock,
                // pass: isPasswordHidden,
                suffixIcon: isPasswordHidden
                    ? Icons.visibility_off
                    : Icons.visibility,
                onSuffixPressed: () {
                  setState(() {
                    isPasswordHidden = !isPasswordHidden;
                  });
                },
              ),
            ),
            SizedBox(height: 30,),
             Button(title: 'Login', onPressed: () => (print('hi'))),
          ],
        ),
      ),
    );
  }
}