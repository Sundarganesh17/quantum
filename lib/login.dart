
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 210,
                child: const Text(
                  'Signin into your Account',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  label: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('johndoe@gmail.com'),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            const  SizedBox(
                height: 15,
              ),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  label: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('password'),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.lock_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )),
              ),
             const SizedBox(height: 20,),
             Container(
              alignment: Alignment.center,
              child:const Text('Login with',
              style: TextStyle(color: Colors.black,fontSize: 14),
              ),
             ),
             const SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                    borderRadius:const BorderRadius.all(Radius.circular(3))
                  ),
                  child: Image.asset('assets\google.jpeg',fit: BoxFit.fill,),
                ),
                const SizedBox(width: 35,),
                Container(
                  height: 30,width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                    borderRadius:const BorderRadius.all(Radius.circular(3))
                  ),

                ),
              ],
             ),
             const SizedBox(height: 15,),
             Container(
              alignment: Alignment.center,
               child: Text.rich(TextSpan(
                text: 'Don\'t have an Account ?  ',
                style:const TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                    ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Register Now',
                    style:const TextStyle(
                      fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer(),
                  ),
                ]
               )),
             )
            ],
          ),
        ),
      ),
    );
  }
}
